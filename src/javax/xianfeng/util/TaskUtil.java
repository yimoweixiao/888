package javax.xianfeng.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/**
 * tasklist /nh /FI "IMAGENAME eq eclipse.exe"
 * @author Programmer.Wenlong
 * @since 2012-5-24 下午01:49:27
 */
public final class TaskUtil {

	public static String getPid(String pName, int index) throws IOException, InterruptedException {

		Process process = null;
		String command = null;
		String line = null;
		String pid = null;

		try {
			Runtime run = Runtime.getRuntime();
			command = "tasklist /nh /FI \"IMAGENAME eq " + pName + "\"";
			process = run.exec(command);
			process.waitFor();

			BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));

			while ((line = br.readLine()) != null) {
				if (line.indexOf(pName) != -1) {
					String[] lineArray = line.split(" ");
					pid = lineArray[index].trim();
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
			throw e;
		} catch (InterruptedException e) {
			e.printStackTrace();
			throw e;
		} finally {
			process.destroy();
		}
		return pid;
	}

	public static void kill(String pid) throws IOException {
		String command = "taskkill /F /PID " + pid;
		Runtime.getRuntime().exec(command);
	}

}
