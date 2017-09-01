package javax.xianfeng.plugin.json;

import java.io.IOException;
import java.io.StringWriter;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;


/**
 * Jackson处理Json的工具类
 * 
 * @author Programmer.Wenlong
 * @since 2015-3-7 下午08:09:13
 */
public final class JacksonUtil {

	private ObjectMapper objectMapper = new ObjectMapper();

	public static JacksonUtil newInstance() {
		return JacksonUtilHolder.instance;
	}

	/**
	 * 将Json字符串转换成Java对象
	 * 
	 * @param json
	 * @param clazz
	 * @return
	 * @throws JsonFormatException
	 */
	public Object format(String json, Class<?> clazz) throws JsonFormatException {
		Object obj = null;
		try {
			objectMapper.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);
			objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
			obj = objectMapper.readValue(json, clazz);
		} catch (JsonParseException e) {
			throw new JsonFormatException(e);
		} catch (JsonMappingException e) {
			throw new JsonFormatException(e);
		} catch (IOException e) {
			throw new JsonFormatException(e);
		}
		return obj;
	}

	/**
	 * 将Java对象转换成Json字符串
	 * 
	 * @param outputStream
	 * @param obj
	 * @return
	 * @throws JsonFormatException
	 * @throws IOException
	 */
	public String format(Object obj) throws JsonFormatException {
		JsonGenerator jsonGenerator = null;
		StringWriter writer = new StringWriter();
		try {
			jsonGenerator = new JsonFactory().createJsonGenerator(writer);
			objectMapper.writeValue(jsonGenerator, obj);
			jsonGenerator.flush();
			if (!jsonGenerator.isClosed()) {
				jsonGenerator.close();
			}
		} catch (Exception e) {
			throw new JsonFormatException(e);
		} finally {
			jsonGenerator = null;
		}

		return writer.toString();
	}

	private static class JacksonUtilHolder {
		private static JacksonUtil instance = new JacksonUtil();
	}
}
