package javax.xianfeng.test.util;

import java.io.IOException;

import javax.xianfeng.util.TaskUtil;

/**
 * @author Programmer.Wenlong
 * @since 2012-5-24 下午02:41:25
 */
public class TestTaskUtil {

	public static void main(String[] args) throws InterruptedException, IOException {
		// TaskUtil task = TaskUtil.newInstance();
		String pid = TaskUtil.getPid("winword.exe", 17);
		System.out.println(pid);
		if (pid != null) {
			TaskUtil.kill(pid);
		}
	}

}
