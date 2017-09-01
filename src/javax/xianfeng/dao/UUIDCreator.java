package javax.xianfeng.dao;

import java.util.UUID;

/**
 * UUID类型的主键工具类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午12:56:34
 */
public final class UUIDCreator implements IdCreator {

	private static UUIDCreator instance;

	private UUIDCreator() {
		super();
	}

	/**
	 * 单例方法
	 * @return
	 */
	public static UUIDCreator newInstance() {
		if (instance == null) {
			instance = new UUIDCreator();
		}
		return instance;
	}

	/**
	 * 生成UUID的方法<br>
	 * UUID格式：a15e8058-f4c1-4554-ba2f-adab6f4b0aed<br>
	 * 主键格式：a15e8058f4c14554ba2fadab6f4b0aed(32)
	 */
	@Override
	public String getId() {
		String id = UUID.randomUUID().toString();
		return id.replace("-", "");
	}

}
