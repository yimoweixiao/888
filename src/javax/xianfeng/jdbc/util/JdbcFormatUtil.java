package javax.xianfeng.jdbc.util;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

/**
 * @author Programmer.Wenlong
 * @since 2013-7-28 上午09:50:07
 */
public final class JdbcFormatUtil {

	private JdbcFormatUtil() {
		super();
	}

	/**
	 * 将Blob对象转换成byte[]数组
	 * @author Programmer.Wenlong
	 * @since 2013-7-28 上午10:00:39
	 * @param blob
	 * @return
	 * @throws IOException
	 */
	public static byte[] format(Blob blob) throws IOException {
		BufferedInputStream input = null;
		try {
			input = new BufferedInputStream(blob.getBinaryStream());
			byte[] bytes = new byte[(int) blob.length()];
			int len = bytes.length;
			int off = 0;
			int read = 0;
			while (off < len && (read = input.read(bytes, off, len - off)) > 0) {
				off += read;
			}
			return bytes;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
}
