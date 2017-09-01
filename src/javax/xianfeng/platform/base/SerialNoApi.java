package javax.xianfeng.platform.base;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xianfeng.core.beans.LoggedBean;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.base.entity.SerialNo;
import javax.xianfeng.platform.base.service.ISerialNoService;
import javax.xianfeng.spring.ioc.SpringIoc;

/**
 * @author Programmer.Wenlong
 * @since 2014-5-23 下午12:57:48
 */
public final class SerialNoApi extends LoggedBean {

	private ISerialNoService serialNoService = (ISerialNoService) SpringIoc.find("platform.SerialNoService");

	private SerialNoApi() {
		super();
	}

	public static SerialNoApi newInstance() {
		return SerialNoApiHolder.INSTANCE;
	}

	/**
	 * 获取业务流水号对象
	 * @param code 流水号主键
	 * @return
	 */
	public SerialNo getByCode(String code) {
		try {
			return serialNoService.get(code);
		} catch (DaoException e) {
			logger.error(e.getMessage(), e);
			return null;
		}
	}

	/**
	 * 获取下一个业务流水号
	 * @param code 流水号主键
	 * @return
	 */
	public String nextString(String code) {
		SerialNo serialNo = null;
		Date today = new Date();
		try {
			synchronized (this) {
				serialNo = serialNoService.get(code);
				if (serialNo == null) {
					return null;
				}
				;
				Long value = serialNo.getValue();

				// 根据流水类型更新流水号
				String type = serialNo.getType();
				Date lastSaveTime = serialNo.getEditTime();
				if ("YEAR".equals(type)) {
					// 按年流水
					if (lastSaveTime.getYear() < today.getYear()) {
						// 往年
						value = 1L;
					} else {
						// 当年
						value++;
					}
				} else if ("MONTH".equals(type)) {
					// 按月流水
					if (lastSaveTime.getMonth() < today.getMonth() || (lastSaveTime.getYear() < today.getYear())) {
						// 当年往月、跨年
						value = 1L;
					} else {
						// 当年
						value++;
					}
				} else if ("DAY".equals(type)) {
					// 按日流水
					if (lastSaveTime.getMonth() < today.getMonth() || lastSaveTime.getMonth() < today.getMonth()) {
						// 当月往日、跨年
						value = 1L;
					} else {
						// 当日
						value++;
					}
				} else {
					// 全局流水（缺省）
					value++;
				}
				serialNo.setValue(value);
				serialNo.setEditTime(today);
				serialNoService.update(serialNo);
			}
		} catch (DaoException e) {
			logger.error(e.getMessage(), e);
			return null;
		}

		int flag = 0; // 长度差

		// 前缀
		String prefix = serialNo.getPrefix();
		if (prefix != null) {
			prefix = getDateTimeWrappedString(prefix, today, serialNo.getType());
			flag = flag - prefix.length();
		} else {
			prefix = "";
		}

		// 后缀
		String suffix = serialNo.getSuffix();
		if (suffix != null) {
			suffix = getDateTimeWrappedString(suffix, today, serialNo.getType());
			flag = flag - suffix.length();
		} else {
			suffix = "";
		}

		// 新流水号：长度=前缀长度+数字长度+后缀长度，长度不足数字左边补零
		String value = serialNo.getValue().toString();
		flag = serialNo.getLength() - value.length() + flag;
		StringBuffer sb = new StringBuffer("");
		while (flag > 0) {
			sb.append("0");
			flag--;
		}
		value = sb + value;

		return prefix + value + suffix;
	}

	/**
	 * 获取流水号类型包装后的字符串
	 * @param str
	 * @param type
	 * @return
	 */
	public String getDateTimeWrappedString(String str, Date date, String serialType) {
		if (str == null || str.length() == 0) {
			return str;
		}

		// 按年流水、按月流水、按日流水
		if ("YEAR".equals(serialType) || "MONTH".equals(serialType) || "DAY".equals(serialType)) {
			// 替换年
			if (str.contains(SerialNo.YYYY)) {
				str = str.replace(SerialNo.YYYY, new SimpleDateFormat("yyyy").format(date));
			}

			if (str.contains(SerialNo.YY)) {
				str = str.replace(SerialNo.YY, new SimpleDateFormat("yy").format(date));
			}
		}

		// 按月流水、按日流水
		if ("MONTH".equals(serialType) || "DAY".equals(serialType)) {
			// 替换月
			if (str.contains(SerialNo.MM)) {
				str = str.replace(SerialNo.MM, new SimpleDateFormat("MM").format(date));
			}
		}

		// 按日流水
		if ("DAY".equals(serialType)) {
			// 替换日
			if (str.contains(SerialNo.DD)) {
				str = str.replace(SerialNo.DD, new SimpleDateFormat("dd").format(date));
			}
		}
		return str;
	}

	private static class SerialNoApiHolder {
		private static final SerialNoApi INSTANCE = new SerialNoApi();
	}

}
