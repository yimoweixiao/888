package javax.xianfeng.spring.annotation;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-19 下午10:43:34
 */
@Retention(RetentionPolicy.RUNTIME)
@Target( { java.lang.annotation.ElementType.METHOD })
public @interface SpringBeforeX {

}