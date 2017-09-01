package javax.xianfeng.web.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xianfeng.web.util.ResponseUtil;

/**
 * 彩色验证码生成类 http://localhost:8080/demo/servlet/verifycode.exe?asyncValidate=true
 * @author Programmer.Wenlong
 * @since 2014-4-12 下午09:33:52
 */
public class VerifyCodeServlet extends HttpServlet {

	private static final long serialVersionUID = 4721782476818639404L;

	public static final String VERIFY_CODE = "verifyCode";

	public void service(HttpServletRequest request, HttpServletResponse response) {
		// 判断是否为异步请求验证码字符串，用于前台校验
		String asyncText = request.getParameter("asyncValidate");
		if ("true".equals(asyncText)) {
			asyncValidate(request, response);
			return;
		}

		// 生成验证码图片
		int width = 60, height = 24;

		String vWidth = request.getParameter("width");
		if (vWidth != null) {
			width = Integer.parseInt(vWidth);
		}

		String vHeight = request.getParameter("height");
		if (vHeight != null) {
			height = Integer.parseInt(vHeight);
		}

		OutputStream out = null;
		try {
			out = response.getOutputStream();
			BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics g = image.getGraphics();
			g.setColor(getRandColor(200, 250));
			g.fillRect(0, 0, width, height);
			g.setFont(new Font("Times New Roman", Font.BOLD, 18));
			g.setColor(getRandColor(160, 200));

			Random random = new Random();
			for (int i = 0; i < 155; i++) {
				int x = random.nextInt(width);
				int y = random.nextInt(height);
				int xl = random.nextInt(12);
				int yl = random.nextInt(12);
				g.drawLine(x, y, x + xl, y + yl);
			}
			String verifyCode = "";
			// 产生4位的验证码
			for (int i = 0; i < 4; i++) {
				String rand = String.valueOf(random.nextInt(10));
				verifyCode += rand;
				g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
				g.drawString(rand, 13 * i + 6, 16);
			}
			g.dispose();

			HttpSession session = request.getSession();
			session.setAttribute(VERIFY_CODE, verifyCode);
			ImageIO.write(image, "JPEG", out);
			out.flush();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			try {
				response.flushBuffer();
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.gc();
		}
	}

	private void asyncValidate(HttpServletRequest request, HttpServletResponse response) {
		String verifyCodeText = request.getParameter(VERIFY_CODE);
		HttpSession session = request.getSession();
		String verifyCode = (String) session.getAttribute(VERIFY_CODE);
		String result = "No";
		if (verifyCode.equals(verifyCodeText)) {
			result = "Yes";
		}
		ResponseUtil.responseHtml(response, result);
	}

	/**
	 * 获取随机颜色的方法
	 * @param fc
	 * @param bc
	 * @return
	 */
	private Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255) {
			fc = 255;
		}
		if (bc > 255) {
			bc = 255;
		}
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

}
