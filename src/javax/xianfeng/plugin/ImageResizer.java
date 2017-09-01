package javax.xianfeng.plugin;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 * 文件缩放工具类
 * @author Programmer.Wenlong
 * @since 2013-4-12 上午11:13:39
 */
public final class ImageResizer {

	/**
	 * 缩放图片并保存成文件
	 * @param sourcePath 原图片路径
	 * @param destPath 缩放后图片路径
	 * @param width int 缩放宽度
	 * @param height int 缩放高度
	 * @throws IOException
	 */
	public static void saveResizeFile(String sourcePath, String destPath, int width, int height) throws IOException {
		saveResizeFile(new File(sourcePath), destPath, width, height);
	}

	/**
	 * 缩放图片并保存成文件
	 * @param file 原图片文件
	 * @param path 缩放后图片路径
	 * @param width int 缩放宽度
	 * @param height int 缩放高度
	 * @throws IOException
	 */
	public static void saveResizeFile(File file, String path, int width, int height) throws IOException {
		ByteArrayOutputStream bytes = resize(file, width, height);
		FileOutputStream output = null;
		try {
			ImageIO.write(new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB), "JPEG", bytes);
			output = new FileOutputStream(path);
			output.write(bytes.toByteArray());
		} catch (IOException e) {
			throw e;
		} finally {
			if (output != null) {
				output.close();
			}
		}
	}

	/**
	 * 缩放图片
	 * @param file 原图片
	 * @param width 缩放宽度
	 * @param height 缩放高度
	 * @throws IOException
	 */
	public static ByteArrayOutputStream resize(File file, int width, int height) throws IOException {
		file.setReadOnly();
		return resize(ImageIO.read(file), width, height);
	}

	/**
	 * 缩放图片
	 * @param input
	 * @param width
	 * @param height
	 * @return
	 * @throws IOException
	 */
	public static ByteArrayOutputStream resize(InputStream input, int width, int height) throws IOException {
		return resize(ImageIO.read(input), width, height);
	}

	/**
	 * 缩放图片
	 * @param image 原图片
	 * @param width 缩放宽度
	 * @param height 缩放高度
	 * @return
	 * @throws IOException
	 */
	public static ByteArrayOutputStream resize(Image image, int width, int height) throws IOException {
		// 原始尺寸
		int _width = image.getWidth(null);
		int _height = image.getHeight(null);

		System.out.println("width: " + _width);
		System.out.println("height: " + _height);

		// 计算压缩尺寸
		if (_width >= _height) {
			// 横向图片，根据比例重新计算高度
			height = (int) Math.round((_height * width * 1.0 / _width));
		} else {
			// 竖向图片，根据比例重新计算宽度
			width = (int) Math.round((_width * height * 1.0 / _height));
		}

		// 输出缩放的图片文件
		BufferedImage _image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics graphics = _image.getGraphics();
		graphics.drawImage(image, 0, 0, width, height, null);
		graphics.dispose();

		ByteArrayOutputStream output = new ByteArrayOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(output);
		encoder.encode(_image);
		return output;
	}
}