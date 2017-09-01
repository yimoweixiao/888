package javax.xianfeng.plugin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * MyEclipse注册码工具类
 * @author Programmer.Wenlong
 * @since 2014-2-8 下午04:05:46
 */
public class MyEclipse {

	private static final String LL = "Decompiling this copyrighted software is a violation of both your license agreement and the Digital Millenium Copyright Act of 1998 (http://www.loc.gov/copyright/legislation/dmca.pdf). Under section 1204 of the DMCA, penalties range up to a $500,000 fine or up to five years imprisonment for a first offense. Think about it; pay for a license, avoid prosecution, and feel better about yourself.";

	public String getSerial(String userId, String licenseNum) {
		java.util.Calendar cal = java.util.Calendar.getInstance();
		cal.add(1, 3);
		cal.add(6, -1);
		java.text.NumberFormat nf = new java.text.DecimalFormat("000");
		licenseNum = nf.format(Integer.valueOf(licenseNum));
		String verTime = new StringBuilder("-").append(new java.text.SimpleDateFormat("yyMMdd").format(cal.getTime())).append("0").toString();
		String type = "YE3MP-";
		String need = new StringBuilder(userId.substring(0, 1)).append(type).append("300").append(licenseNum).append(verTime).toString();
		String dx = new StringBuilder(need).append(LL).append(userId).toString();
		int suf = this.decode(dx);
		String code = new StringBuilder(need).append(String.valueOf(suf)).toString();
		return this.change(code);
	}

	private int decode(String s) {
		int i;
		char[] ac;
		int j;
		int k;
		i = 0;
		ac = s.toCharArray();
		j = 0;
		k = ac.length;
		while (j < k) {
			i = (31 * i) + ac[j];
			j++;
		}
		return Math.abs(i);
	}

	private String change(String s) {
		byte[] abyte0;
		char[] ac;
		int i;
		int k;
		int j;
		abyte0 = s.getBytes();
		ac = new char[s.length()];
		i = 0;
		k = abyte0.length;
		while (i < k) {
			j = abyte0[i];
			if ((j >= 48) && (j <= 57)) {
				j = (((j - 48) + 5) % 10) + 48;
			} else if ((j >= 65) && (j <= 90)) {
				j = (((j - 65) + 13) % 26) + 65;
			} else if ((j >= 97) && (j <= 122)) {
				j = (((j - 97) + 13) % 26) + 97;
			}
			ac[i] = (char) j;
			i++;
		}
		return String.valueOf(ac);
	}

	/**
	 * MyEclipse 6.5测试通过
	 */
	public static void main(String[] args) {
		try {
			System.out.print("Subscriber: ");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			String userId = null;
			userId = reader.readLine();
			MyEclipse myeclipse = new MyEclipse();
			String res = myeclipse.getSerial(userId, "5");
			System.out.println("Subscription Code: " + res);
			// reader.readLine();
		} catch (IOException ex) {
			ex.printStackTrace();
		}
	}

}