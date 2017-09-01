package javax.xianfeng.platform.base.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xianfeng.core.beans.StatefulBean;
import javax.xianfeng.util.DateUtil;

import org.hibernate.annotations.GenericGenerator;

/**
 * 通讯录
 * @author Programmer.Wenlong
 * @since 2015-3-28 下午01:29:56
 */
@Entity
@Table(name = "SYS_LINK")
public class LinkRec extends StatefulBean {

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "assigned")
	@Column(name = "ID")
	private String id; // 主键
	
	@Column(name = "TARGET")
	private String target; //关联主键
	
	@Column(name = "NAME")
	private String name; //用户名
	
	@Column(name = "CORP_NAME")
	private String corpName; //工作单位

	@Column(name = "POSTCODE")
	private String postcode; // 邮编

	@Column(name = "ADDR_PROVINCE_ID")
	private String addrProvinceId; //省份编码
	
	@Column(name = "ADDR_PROVINCE_NAME")
	private String addrProvinceName; //省份名称
	
	@Column(name = "ADDR_CITY_ID")
	private String addrCityId; //地市编码
	
	@Column(name = "ADDR_CITY_NAME")
	private String addrCityName; //地市名称
	
	@Column(name = "ADDR_COUNTY_ID")
	private String addrCountyId; //区县编码
	
	@Column(name = "ADDR_COUNTY_NAME")
	private String addrCountyName; //区县名称
	
	@Column(name = "ADDR_DETAIL")
	private String addrDetail; //详细地址
	
	@Column(name = "ADDRESS")
	private String address; // 地址

	@Column(name = "PHONE")
	private String phone; // 固话
	
	@Column(name = "FAX")
	private String fax; //传真
	
	@Column(name = "MOBILE")
	private String mobile; // 手机

	@Column(name = "EMAIL")
	private String email; // 邮箱
	
	@Column(name = "QQ")
	private String qq; //QQ号码
	
	@Column(name = "EDIT_TIME")
	private Date editTime; //最近修改时间
	
	@Transient
	private String editTimeStr;
	
	@Column(name = "CREATE_TIME")
	private Date createTime; //创建时间
	
	@Transient
	private String createTimeStr;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCorpName() {
		return corpName;
	}

	public void setCorpName(String corpName) {
		this.corpName = corpName;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddrProvinceId() {
		return addrProvinceId;
	}

	public void setAddrProvinceId(String addrProvinceId) {
		this.addrProvinceId = addrProvinceId;
	}

	public String getAddrProvinceName() {
		return addrProvinceName;
	}

	public void setAddrProvinceName(String addrProvinceName) {
		this.addrProvinceName = addrProvinceName;
	}

	public String getAddrCityId() {
		return addrCityId;
	}

	public void setAddrCityId(String addrCityId) {
		this.addrCityId = addrCityId;
	}

	public String getAddrCityName() {
		return addrCityName;
	}

	public void setAddrCityName(String addrCityName) {
		this.addrCityName = addrCityName;
	}

	public String getAddrCountyId() {
		return addrCountyId;
	}

	public void setAddrCountyId(String addrCountyId) {
		this.addrCountyId = addrCountyId;
	}

	public String getAddrCountyName() {
		return addrCountyName;
	}

	public void setAddrCountyName(String addrCountyName) {
		this.addrCountyName = addrCountyName;
	}

	public String getAddrDetail() {
		return addrDetail;
	}

	public void setAddrDetail(String addrDetail) {
		this.addrDetail = addrDetail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public Date getEditTime() {
		return editTime;
	}

	public void setEditTime(Date editTime) {
		this.editTime = editTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getEditTimeStr() {
		return DateUtil.format(this.editTime);
	}

	public String getCreateTimeStr() {
		return DateUtil.format(this.createTime);
	}
	
}
