package javax.xianfeng.util;

import java.io.IOException;
import java.util.Scanner;

public class HardwareUtil {

	public static String getCpuNo() {
		Process process = null;

		try {
			process = Runtime.getRuntime().exec(new String[] { "wmic", "cpu", "get", "ProcessorId" });
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			if (process != null) {
				try {
					process.getOutputStream().close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		Scanner sc = new Scanner(process.getInputStream());
		String property = sc.next();
		String serialNo = sc.next();
		return serialNo;
	}

	public static void main(String[] args) throws IOException {
		System.out.println(getCpuNo());
	}

}
