package javax.xianfeng.test.util;

import java.util.Map;

import javax.xianfeng.util.RSAUtil;

public class TestRSA {

	static String publicKey;
	static String privateKey;

	static {
		try {
			Map<String, Object> keyMap = RSAUtil.genKeyPair();
			publicKey = RSAUtil.getPublicKey(keyMap);
			privateKey = RSAUtil.getPrivateKey(keyMap);
			System.err.println("公钥: \n\r" + publicKey);
			System.err.println("私钥： \n\r" + privateKey);
			// System.out.println("size: "+privateKey.length());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) throws Exception {
		// test();
		testSign();
	}

	static void test() throws Exception {
		System.err.println("公钥加密——私钥解密");
		String source = "我是程序员，一个很牛X的程序员";
		System.out.println("\r加密前文字：\r\n" + source);
		byte[] data = source.getBytes();
		byte[] encodedData = RSAUtil.encryptByPublicKey(data, publicKey);
		System.out.println("加密后文字：\r\n" + new String(encodedData));
		byte[] decodedData = RSAUtil.decryptByPrivateKey(encodedData, privateKey);
		String target = new String(decodedData);
		System.out.println("解密后文字: \r\n" + target);
	}

	static void testSign() throws Exception {
		System.err.println("私钥加密——公钥解密");
		String source = "我是程序员，一个很牛X的程序员";
		System.out.println("原文字：\r\n" + source);
		byte[] data = source.getBytes();
		byte[] encodedData = RSAUtil.encryptByPrivateKey(data, privateKey);
		System.out.println("加密后：\r\n" + new String(encodedData));

		System.err.println("私钥签名——公钥验证签名");
		String sign = RSAUtil.sign(encodedData, privateKey);
		System.err.println("签名:\r" + sign);
		boolean status = RSAUtil.verify(encodedData, publicKey, sign);
		System.err.println("验证结果:\r" + status);

		byte[] decodedData = RSAUtil.decryptByPublicKey(encodedData, publicKey);
		String target = new String(decodedData);
		System.out.println("解密后: \r\n" + target);
	}

}