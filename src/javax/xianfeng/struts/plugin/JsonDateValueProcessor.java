package javax.xianfeng.struts.plugin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.xianfeng.ApplicationConfig;

import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;

/**
 * @author Programmer.Wenlong
 * @since 2013-5-29 下午10:41:17
 */
public class JsonDateValueProcessor implements JsonValueProcessor {

	private String dateType = ApplicationConfig.getConfig("Xianfeng.Default.DateTime"); // 日期类型

	public JsonDateValueProcessor() {
		super();
	}

	public JsonDateValueProcessor(String dateType) {
		super();
		this.dateType = dateType;
	}

	@Override
	public Object processArrayValue(Object value, JsonConfig config) {
		return processValue(value);
	}

	@Override
	public Object processObjectValue(String key, Object value, JsonConfig config) {
		return processValue(value);
	}

	private Object processValue(Object value) {
		try {
			if (value != null && value instanceof Date) {
				SimpleDateFormat sdf = new SimpleDateFormat(this.dateType, Locale.CHINA);
				return sdf.format((Date) value);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return value;
	}

	public String getDateType() {
		return dateType;
	}

	public void setDateType(String dateType) {
		this.dateType = dateType;
	}

}
