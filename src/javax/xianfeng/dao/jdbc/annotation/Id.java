package javax.xianfeng.dao.jdbc.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 数据库-表-主键的标注
 * @author Programmer.Wenlong
 * @since 2011-11-27 上午12:11:30
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Id {

	public String name() default ""; // 名称

	public String type() default ""; // 类型

	public int length() default 0; // 字段长度

	public int decimal() default 0; // 精度

	public boolean unique() default true; // 唯一

	public boolean required() default true; // 不能为空

	public String constraint() default ""; // 字段级约束

}
