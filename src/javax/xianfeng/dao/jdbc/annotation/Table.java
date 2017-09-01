package javax.xianfeng.dao.jdbc.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 数据库-表的标注
 * @author Programmer.Wenlong
 * @since 2011-11-27 上午12:11:36
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface Table {

	public String name(); // 名称

	public String constraint() default ""; // 表级约束

}
