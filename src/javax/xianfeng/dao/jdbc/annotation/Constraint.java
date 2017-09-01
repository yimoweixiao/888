package javax.xianfeng.dao.jdbc.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 数据库-表-字段级约束标注
 * @author Programmer.Wenlong
 * @since 2011-11-27 上午12:11:43
 */
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Constraint {

	public String desc() default ""; // 约束内容

}
