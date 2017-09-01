package javax.xianfeng.test.platform.base;

import java.util.Date;

import javax.xianfeng.platform.base.SerialNoApi;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-23 下午02:15:36
 */
public class TestSerialNoApi {

	SerialNoApi api = SerialNoApi.newInstance();

	@Test
	public void datetime() {
		Date date = new Date();
		System.out.println(api.getDateTimeWrappedString("YYYYMMDD", date, "YEAR"));
		System.out.println(api.getDateTimeWrappedString("YYYYMMDD", date, "MONTH"));
		System.out.println(api.getDateTimeWrappedString("YYYYMMDD", date, "DAY"));

		System.out.println(api.getDateTimeWrappedString("YYMMDD", date, "YEAR"));
		System.out.println(api.getDateTimeWrappedString("YYMMDD", date, "MONTH"));
		System.out.println(api.getDateTimeWrappedString("YYMMDD", date, "DAY"));
	}

	@Test
	public void no1() {
		System.out.println(api.nextString("ZWT_CUSTOMER_ID"));
	}

	@Test
	public void no2() {
		System.out.println(api.nextString("SYS_DEMO_NO"));
	}

}
