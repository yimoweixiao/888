package javax.xianfeng.platform.base.action;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.Constants;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.platform.base.entity.LinkRec;
import javax.xianfeng.platform.base.service.ILinkRecService;
import javax.xianfeng.platform.organ.OrganApi;
import javax.xianfeng.platform.organ.entity.Organ;
import javax.xianfeng.plugin.json.JacksonUtil;
import javax.xianfeng.struts.action.BaseEntityAction;
import javax.xianfeng.system.permit.UserApi;
import javax.xianfeng.system.permit.entity.User;
import javax.xianfeng.web.util.ResponseUtil;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.struts2.ServletActionContext;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-10 下午07:04:56
 */
public class LinkRecAction extends BaseEntityAction {

	@Resource(name = "platform.LinkRecService")
	private ILinkRecService service;

	private String fileName;

	private InputStream excelStream;

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doDrop()
	 */
	@Override
	public Serializable doDrop() {
		Map<String, Object> map = new HashMap<String, Object>();
		String json = this.parameters.getString("records");
		try {
			LinkRec[] records = (LinkRec[]) JacksonUtil.newInstance().format(json, LinkRec[].class);
			List<LinkRec> list = Arrays.asList(records);
			service.save(list);
			map.put("success", "数据删除成功");
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据查询失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doEdit()
	 */
	@Override
	public Serializable doEdit() {
		String id = this.request.getParameter("id");
		String target = this.request.getParameter("target");
		LinkRec linkRec = null;
		try {
			if (id != null && id.length() > 0) {
				linkRec = service.get(id);
			} else {
				linkRec = service.getByTarget(target);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (linkRec == null) {
			linkRec = new LinkRec();
			linkRec.setTarget(target);

			User user = UserApi.newInstance().queryUser(target);
			linkRec.setName(user.getName());

			String organId = user.getOrganId();
			if (organId != null) {
				Organ corp = OrganApi.newInstance().queryCorp(organId);
				linkRec.setCorpName(corp.getName());
			}
		}
		String result = JacksonUtil.newInstance().format(linkRec);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doList()
	 */
	@Override
	public Serializable doList() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			int total = service.getTotalSize(this.parameters);
			map.put("total", total);
			List<LinkRec> list = service.query(this.parameters);
			map.put("rows", list);
		} catch (DaoException e) {
			e.printStackTrace();
			map.put("error", "数据查询失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseJson(response, result);
		return null;
	}

	public Serializable doExcel() {
		String[] headers = { "姓名", "工作单位", "手机号码", "固定电话", "电子邮箱", "QQ号码", "邮政编码", "联系地址", "创建时间" };
		short cellNumber = (short) headers.length;// 表的列数
		HSSFWorkbook workbook = new HSSFWorkbook(); // 创建一个excel
		HSSFSheet sheet = workbook.createSheet("sheet1"); // 创建一个sheet
		sheet.createFreezePane(1, 1, 1, 1); // 冻结第一行、第一列
		CellRangeAddress c = CellRangeAddress.valueOf("B1"); // 自动筛选列
		sheet.setAutoFilter(c);

		HSSFRow row = null; // Excel的行
		HSSFCell cell = null; // Excel的列
		ByteArrayOutputStream byteArrayOutputStream = null;
		try {
			List<LinkRec> list = service.queryNoPage(this.parameters);

			// 创建标题行
			HSSFFont font = workbook.createFont(); // 设置字体
			font.setColor(HSSFFont.COLOR_NORMAL); // 设置单元格字体的颜色.
			font.setFontHeight((short) 240); // 设置单元格字体高度
			
			HSSFCellStyle style = workbook.createCellStyle(); // 表头样式
			style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
			style.setFont(font);// 设置字体风格
			style.setBorderBottom((short) 1);
			style.setBorderLeft((short) 1);
			style.setBorderRight((short) 1);
			style.setBorderTop((short) 1);
			style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
			style.setFillForegroundColor(HSSFColor.LIGHT_CORNFLOWER_BLUE.index);

			row = sheet.createRow(0);
			row.setHeight((short) 320);
			for (int i = 0; i < cellNumber; i++) {
				cell = row.createCell(i);// 创建第0行第i列
				cell.setCellValue(headers[i]);// 设置第0行第i列的值
				sheet.setColumnWidth(i, 8000);// 设置列的宽度
				cell.setCellStyle(style);
			}

			// 创建数据行
			HSSFFont font2 = workbook.createFont(); // 设置字体
			font2.setColor(HSSFFont.COLOR_NORMAL); // 设置单元格字体的颜色.
			font2.setFontHeight((short) 180); // 设置单元格字体高度
			HSSFCellStyle style2 = workbook.createCellStyle(); // 设置数据类型
			style2.setAlignment(HSSFCellStyle.ALIGN_LEFT);
			style2.setFont(font2);// 设置字体风格
			style2.setBorderBottom((short) 1);
			style2.setBorderLeft((short) 1);
			style2.setBorderRight((short) 1);
			style2.setBorderTop((short) 1);

			for (int i = 0; i < list.size(); i++) {
				LinkRec p = (LinkRec) list.get(i);
				row = sheet.createRow((short) (i + 1));
				row.setHeight((short) 280);

				if (p.getName() != null) {
					cell = row.createCell(0);
					cell.setCellValue(p.getName());
					cell.setCellStyle(style2);
				}

				if (p.getCorpName() != null) {
					cell = row.createCell(1);
					cell.setCellValue(p.getCorpName());
					cell.setCellStyle(style2);
				}

				if (p.getMobile() != null) {
					cell = row.createCell(2);
					cell.setCellValue(p.getMobile());
					cell.setCellStyle(style2);
				}

				if (p.getPhone() != null) {
					cell = row.createCell(3);
					cell.setCellValue(p.getPhone());
					cell.setCellStyle(style2);
				}

				if (p.getEmail() != null) {
					cell = row.createCell(4);
					cell.setCellValue(p.getEmail());
					cell.setCellStyle(style2);
				}

				if (p.getQq() != null) {
					cell = row.createCell(5);
					cell.setCellValue(p.getQq());
					cell.setCellStyle(style2);
				}

				if (p.getPostcode() != null) {
					cell = row.createCell(6);
					cell.setCellValue(p.getPostcode());
					cell.setCellStyle(style2);
				}

				if (p.getAddress() != null) {
					cell = row.createCell(7);
					cell.setCellValue(p.getAddress());
					cell.setCellStyle(style2);
				}

				if (p.getCreateTime() != null) {
					cell = row.createCell(8);
					cell.setCellValue(p.getCreateTimeStr());
					cell.setCellStyle(style2);
				}
			}

			Date today = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
			String fileName = "通讯录" + sdf.format(today) + ".xls";
			this.setFileName(fileName);
			byteArrayOutputStream = new ByteArrayOutputStream();
			workbook.write(byteArrayOutputStream);

			byte[] bytes = byteArrayOutputStream.toByteArray();
			this.setExcelStream(new ByteArrayInputStream(bytes, 0, bytes.length));
			byteArrayOutputStream.flush();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (byteArrayOutputStream != null) {
				try {
					byteArrayOutputStream.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				byteArrayOutputStream = null;
			}
		}
		return SUCCESS;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.xianfeng.struts.action.BaseEntityAction#doSave()
	 */
	@Override
	public Serializable doSave() {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			String id = this.parameters.getString("id");
			String target = this.parameters.getString("target");
			LinkRec linkRec = null;
			Date now = new Date();
			if (id == null || id.length() == 0) {
				linkRec = new LinkRec();
				linkRec.setId(SerialNoApi.newInstance().nextString(Constants.SYS_LINK_ID));
				linkRec.setTarget(target);
				linkRec.setCreateTime(now);
			} else {
				linkRec = service.get(id);
			}

			linkRec.setEditTime(now);

			String name = this.parameters.getString("name");
			linkRec.setName(name);

			String corpName = this.parameters.getString("corpName");
			linkRec.setCorpName(corpName);

			String mobile = this.parameters.getString("mobile");
			linkRec.setMobile(mobile);

			String phone = this.parameters.getString("phone");
			linkRec.setPhone(phone);

			String email = this.parameters.getString("email");
			linkRec.setEmail(email);

			String qq = this.parameters.getString("qq");
			linkRec.setQq(qq);
			
			String addrProvinceId = this.parameters.getString("addrProvinceId");
			linkRec.setAddrProvinceId(addrProvinceId);
			
			String addrProvinceName = this.parameters.getString("addrProvinceName");
			linkRec.setAddrProvinceName(addrProvinceName);
			
			String addrCityId = this.parameters.getString("addrCityId");
			linkRec.setAddrCityId(addrCityId);
			
			String addrCityName = this.parameters.getString("addrCityName");
			linkRec.setAddrCityName(addrCityName);
			
			String addrCountyId = this.parameters.getString("addrCountyId");
			linkRec.setAddrCountyId(addrCountyId);
			
			String addrCountyName = this.parameters.getString("addrCountyName");
			linkRec.setAddrCountyName(addrCountyName);
			
			String addrDetail = this.parameters.getString("addrDetail");
			linkRec.setAddrDetail(addrDetail);
			
			linkRec.setAddress(addrProvinceName+addrCityName+addrCountyName+addrDetail);

			String postcode = this.parameters.getString("postcode");
			linkRec.setPostcode(postcode);

			service.saveOrUpdate(linkRec);
			map.put("data", linkRec);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("error", "数据保存失败");
		}
		String result = JacksonUtil.newInstance().format(map);
		ResponseUtil.responseHtml(response, result);
		return null;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		String agent = request.getHeader("USER-AGENT");
		try {
			if (agent.indexOf("Firefox") > 0) {
				// Firefox
				this.fileName = new String(fileName.getBytes("UTF-8"), "ISO8859-1");
			} else if (agent.indexOf("Chrome") > 0) {
				// Chrome
				this.fileName = URLEncoder.encode(fileName, "UTF-8");
			} else {
				// IE7+
				this.fileName = new String(fileName.getBytes("GB2312"), "ISO8859-1");
			}
		} catch (Exception e) {
			this.fileName = fileName;
		}

	}

	public InputStream getExcelStream() {
		return excelStream;
	}

	public void setExcelStream(InputStream excelStream) {
		this.excelStream = excelStream;
	}

}
