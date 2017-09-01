package javax.xianfeng.plugin;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-4 上午12:11:01
 */
public class MD5Encoder implements Encoder {

	@Override
	public String decode(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String encode(String str) {
		StringBuffer sb = new StringBuffer();
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			digest.update(str.getBytes());
			byte bytes[] = digest.digest();
			// 32位的加密
			for (int offset = 0; offset < bytes.length; offset++) {
				int temp = bytes[offset];
				if (temp < 0) {
					temp += 256;
				} else if (temp > 0 && temp < 16) {
					sb.append("0");
				}
				sb.append(Integer.toHexString(temp));
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}

}
