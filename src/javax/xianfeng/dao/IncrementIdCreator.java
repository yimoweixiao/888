package javax.xianfeng.dao;

import java.io.Serializable;

/**
 * 自动增长类型的主键工具类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午12:58:07
 */
public final class IncrementIdCreator implements IdCreator {

	private static IncrementIdCreator instance;

	private IncrementIdCreator() {
		super();
	}

	public static IncrementIdCreator newInstance() {
		if (instance == null) {
			instance = new IncrementIdCreator();
		}
		return instance;
	}

	@Override
	public Serializable getId() {
		// TODO Auto-generated method stub
		return null;
	}

}
