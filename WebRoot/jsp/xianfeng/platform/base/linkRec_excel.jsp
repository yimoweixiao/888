<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="org.apache.poi.hssf.usermodel.*"%>
<%@ page import="javax.xianfeng.platform.base.entity.LinkRec"%>
<%
try {
	String[] tableHeader = { "姓名", "工作单位", "修改时间" };
	short cellNumber = (short) tableHeader.length;// 表的列数

	HSSFWorkbook workbook = new HSSFWorkbook(); // 创建一个excel
	HSSFCell cell = null; // Excel的列
	HSSFRow row = null; // Excel的行
	HSSFCellStyle style = workbook.createCellStyle(); // 设置表头的类型
	style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
	HSSFCellStyle style1 = workbook.createCellStyle(); // 设置数据类型
	style1.setAlignment(HSSFCellStyle.ALIGN_CENTER);
	HSSFFont font = workbook.createFont(); // 设置字体
	HSSFSheet sheet = workbook.createSheet("sheet1"); // 创建一个sheet
	HSSFHeader header = sheet.getHeader();// 设置sheet的头

	List<LinkRec> list = (List<LinkRec>) request.getAttribute("list");
	if (list == null) {
		list = new ArrayList<LinkRec>();
	}
	System.out.println("size: " + list.size());
	if (list.size() == 0) {
		header.setCenter("无数据");
	} else {
		header.setCenter("通讯录列表");

		row = sheet.createRow(0);
		row.setHeight((short) 400);
		for (int k = 0; k < cellNumber; k++) {
			cell = row.createCell(k);// 创建第0行第k列
			cell.setCellValue(tableHeader[k]);// 设置第0行第k列的值
			sheet.setColumnWidth(k, 8000);// 设置列的宽度
			font.setColor(HSSFFont.COLOR_NORMAL); // 设置单元格字体的颜色.
			font.setFontHeight((short) 350); // 设置单元字体高度
			style1.setFont(font);// 设置字体风格
			cell.setCellStyle(style1);
		}

		for (int i = 0; i < list.size(); i++) {
			LinkRec p = (LinkRec) list.get(i);// 获取student对象
			row = sheet.createRow((short) (i + 1));// 创建第i+1行
			row.setHeight((short) 400);// 设置行高

			if (p.getName() != null) {
				cell = row.createCell(0);// 创建第i+1行第0列
				cell.setCellValue(p.getName());// 设置第i+1行第0列的值
				cell.setCellStyle(style);// 设置风格
			}
			if (p.getCorpName() != null) {
				cell = row.createCell(1);
				cell.setCellValue(p.getCorpName());
				cell.setCellStyle(style);
			}
			if (p.getEditTime() != null) {
				cell = row.createCell(2);
				cell.setCellValue(p.getEditTimeStr());
				cell.setCellStyle(style);
			}
		}
	}
	Date today = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	String fileName = "通讯录" + sdf.format(today) + ".xls";
	fileName = new String(fileName.getBytes("gb2312"), "ISO8859-1");// headerString为中文时转码

	response.setHeader("Content-disStringposition", "attachment; filename=" + fileName);// filename是下载的xls的名，建议最好用英文
	response.setContentType("application/msexcel;charset=UTF-8");// 设置类型
	response.setHeader("Pragma", "No-cache");// 设置头
	response.setHeader("Cache-Control", "no-cache");// 设置头
	response.setDateHeader("Expires", 0);// 设置日期头

	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	workbook.write(baos);
	byte[] aa = baos.toByteArray();
	InputStream excelStream = new ByteArrayInputStream(aa, 0, aa.length);
	baos.flush();
	baos.close();
} catch (Exception e) {
	e.printStackTrace();	
}
%>