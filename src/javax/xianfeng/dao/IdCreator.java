package javax.xianfeng.dao;

import java.io.Serializable;

/**
 * 主键生成器接口
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午01:04:12
 */
public abstract interface IdCreator {

	public Serializable getId();

}
