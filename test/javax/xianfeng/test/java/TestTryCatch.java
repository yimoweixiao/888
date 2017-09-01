package javax.xianfeng.test.java;

/**
 * @author Programmer.Wenlong
 * @since 2015-5-30 下午01:02:54
 */
public final class TestTryCatch {
	
	public static void main(String[] args) {
		System.out.println(demo());
		TestTryCatch e = new TestTryCatch();
		try {
			e.finalize();
		} catch (Throwable e2) {
			e2.printStackTrace();
		}
		System.gc();
	}
	
	static boolean demo () {
		try {
			System.out.println(1);
			return true;
		} catch (Exception e) {
			System.out.println(2);
			return false;
		} finally {
			System.out.println(3);
		}
	}

}
