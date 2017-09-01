package javax.xianfeng.test.java;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-25 下午09:13:59
 */
public class TestProcess {

	/**
	 * @author Programmer.Wenlong
	 * @since 2012-5-25 下午09:14:00
	 * @param args
	 * @throws IOException
	 * @throws InterruptedException
	 */
	public static void main(String[] args) throws IOException, InterruptedException {
		Runtime run = Runtime.getRuntime();
		Process process = null;
		String name = "winword.exe";
		try {
			process = run.exec("tasklist /nh /FI \"IMAGENAME eq " + name + "\"");
		} catch (IOException e) {
			e.printStackTrace();
		}
		process.waitFor();

		BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
		String line = null;
		String pid = null;
		while ((line = br.readLine()) != null) {
			System.out.println("line=" + line);
			System.out.println(line.indexOf(name));
			if (line.indexOf(name) != -1) {
				String[] lineArray = line.split(" ");
				System.out.println(Arrays.toString(lineArray));
				pid = lineArray[17].trim();
				System.out.println("PID=" + pid);
				Runtime runtime = Runtime.getRuntime();
				runtime.exec("taskkill /F /PID " + pid);
			}
		}
		System.out.println("===========");
	}

}
