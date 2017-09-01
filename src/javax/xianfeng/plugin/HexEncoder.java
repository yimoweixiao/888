package javax.xianfeng.plugin;

import org.apache.commons.codec.DecoderException;
import org.apache.commons.codec.binary.Hex;

/**
 * @author Programmer.Wenlong
 * @since 2011-12-29 下午10:48:50
 */
public class HexEncoder implements Encoder {

	@Override
	public String decode(String str) throws DecoderException {
		try {
			return new String(Hex.decodeHex(str.toCharArray()));
		} catch (DecoderException e) {
			throw e;
		}
	}

	@Override
	public String encode(String str) {
		return Hex.encodeHex(str.getBytes()).toString();
	}

}
