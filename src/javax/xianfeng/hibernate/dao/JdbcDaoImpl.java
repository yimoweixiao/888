package javax.xianfeng.hibernate.dao;

import java.sql.SQLException;

import javax.sql.DataSource;
import javax.xianfeng.dao.jdbc.JdbcDao;
import javax.xianfeng.jdbc.DataSourceException;

/**
 * JdbcDao的实现类<br>
 * 说明：可作为接口程序的DAO，不用和实体类进行关联<br>
 * 备注：依赖于Spring的Ioc注入dataSource
 * @author Programmer.Wenlong
 * @since 2012-4-2 下午06:35:36
 */
public class JdbcDaoImpl extends JdbcDao {

	protected DataSource dataSource; // 数据源

	@Override
	public void init() throws DataSourceException {

	}

	@Override
	protected void onReady() throws SQLException {
		super.dataSource = this.getDataSource();
		super.onReady();
	}

}
