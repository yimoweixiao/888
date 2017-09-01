package javax.xianfeng.dao;

/**
 * DAO的常用属性配置类
 * @author Programmer.Wenlong
 * @since 2011-11-20 上午12:45:22
 */
public final class DaoConfig {

	public static final boolean AUTO_COMMIT = false; // 自动提交

	public static final int MAX_SIZE = 1000; // 批量查询实体对象的数量

	public static final int BATCH_SIZE = 10; // 批量修改实体对象的数量

}
