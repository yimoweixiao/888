package javax.xianfeng.spring;


import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 * Spring支持的动态数据源类
 * @author Programmer.Wenlong
 * @since 2011-12-12 下午10:47:38
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		return DataSourceManager.getDataSource();
	}

}
