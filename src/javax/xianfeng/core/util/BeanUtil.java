package javax.xianfeng.core.util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

import javax.xianfeng.util.StringUtil;

/**
 * 
 * @author Programmer.Wenlong
 * @since 2014-6-22 下午04:23:14
 */
public final class BeanUtil {
	
	/**
	 * 拷贝对象obj1的属性值给对象obj2
	 * 前        提：obj1和obj2是同类对象，或者obj1是obj2父类对象
	 * 重要说明：此方法可以给private属性赋值成功，但是用Loushang的DAO保存子类对象时，就会出现异常，提示一些数据库的非空字段为空值
	 * 		说明Loushang的DAO没有获取到子类对象private属性的值，因此需要把父类的private属性去掉，使用默认的权限修饰符即可
	 * @author Programmer.Wenlong
	 * @since 2014-6-22 下午04:23:18
	 * @param obj1 父类对象
	 * @param obj2 子类对象
	 * @throws Exception
	 */
	public static void copyFields(Object obj1, Object obj2) {  
        if(obj2.getClass().getSuperclass() != obj1.getClass() && obj2.getClass() != obj1.getClass()){  
            throw new IllegalArgumentException(obj1.getClass().getName()+"对象的属性值不能拷贝给"+obj2.getClass().getName()+"对象");  
        }
        Class<?> class1 = obj1.getClass();
        Class<?> class2 = obj1.getClass();
        Field fields[] = class1.getDeclaredFields();
        for(int i=0; i< fields.length; i++){  
            Field field = fields[i]; //属性 
            field.setAccessible(true);  
            
            //System.out.println("debug: " + field.getName());
            if ("this$0".equals(field.getName())) {
            	//内部类无效属性
            	continue;
            }
            
            if ("serialVersionUID".equals(field.getName())) {
            	//序列化属性serialVersionUID
            	continue;
            }
            
            if (Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
            	//static final属性
            	continue;
            }
            
            Class<?> fieldType = field.getType();  
            try {
				Method fatherMethod = class1.getMethod("get" + StringUtil.toUpperOnlyFirst(field.getName()));
				Object obj = fatherMethod.invoke(obj1); //属性值               
				//field.set(obj2, obj);
				
				//赋值
				Method childMethod = class2.getMethod("set" + StringUtil.toUpperOnlyFirst(field.getName()), fieldType);
				childMethod.invoke(obj2, new Object[] { obj });
			} catch (Exception e) {
				e.printStackTrace();
			}
        }  
	}
	
    public static void main(String[] args) throws Exception {
    	BeanUtil e = new BeanUtil();
    	BeanUtil.Father f = e.new Father();
    	f.setId("1001");
    	
    	BeanUtil.Father ff = e.new Father();
    	copyFields(f, ff);
    	System.out.println(ff.getId());
    	
    	BeanUtil.Child ch = e.new Child();
    	copyFields(f, ch);
    	
    	System.out.println(ch.getId());
    }
    
    class Father {
    	private String id;

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}
    	
    }
    
    class Child extends Father{
    	
    }

}
