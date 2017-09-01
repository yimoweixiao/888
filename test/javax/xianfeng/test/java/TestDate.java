package javax.xianfeng.test.java;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xianfeng.util.DateUtil;

import org.junit.Test;

/**
 * @author Programmer.Wenlong
 * @since 2012-6-2 上午10:24:47
 */
public class TestDate {

	@Test
	public void getTime() {
		System.out.println(new Date().getTime());
		System.out.println(System.currentTimeMillis());
	}

	@Test
	public void time() {
		int totalTime = (int) (System.currentTimeMillis() - Long.parseLong("1338604228640"));
		System.out.println(totalTime);
	}

	@Test
	public void parse() throws ParseException {
		DateFormat format = new SimpleDateFormat();
		format.setLenient(false);
		Date date = format.parse("07/10/96 4:5 PM, PDT");
		System.out.println(DateUtil.format(date));
	}

	@Test
	public void format() {
		Date date = new Date();
		System.out.println(DateUtil.format(date));
		System.out.println(DateUtil.format(date, DateUtil.DATE));
		System.out.println(DateUtil.format(date, DateUtil.DATETIMESECOND));
	}

}
