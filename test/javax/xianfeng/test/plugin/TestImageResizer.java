package javax.xianfeng.test.plugin;

import java.io.IOException;

import javax.xianfeng.plugin.ImageResizer;

public class TestImageResizer {

	public static void main(String[] args) {
		try {
			ImageResizer.saveResizeFile("c:/TEMP/images/4-原图.gif", "c:/TEMP/images/4-2048缩放.gif", 2048, 1536 // 2048,
					// 1536;1024,
					// 768;512,
					// 384
					);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
