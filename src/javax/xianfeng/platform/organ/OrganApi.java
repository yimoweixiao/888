package javax.xianfeng.platform.organ;

import javax.xianfeng.dao.DaoException;
import javax.xianfeng.platform.Constants;
import javax.xianfeng.platform.base.SerialNoApi;
import javax.xianfeng.platform.organ.entity.Organ;
import javax.xianfeng.platform.organ.service.IOrganService;
import javax.xianfeng.spring.ioc.SpringIoc;

/**
 * 
 * @author Programmer.Wenlong
 * @since 2015-3-7 上午10:59:14
 */
public final class OrganApi {

	public static final String ORGAN_TYPE_CORP = "CORP";
	
	public static final String ORGAN_TYPE_DEPT = "DEPT";
	
	public static final String ORGAN_TYPE_POST = "POST";
	
	public static final String ORGAN_TYPE_EMP = "EMP";
	
	private IOrganService organService = (IOrganService) SpringIoc.find("platform.OrganService");
	
	/**
	 * 新增组织机构
	 * @param organ
	 * @return
	 */
	public String insert (Organ organ) {
		try {
			String organId = SerialNoApi.newInstance().nextString(Constants.SYS_ORGAN_ID);
			organ.setId(organId);
			organ.setStatus(true);
			organ.setSeq(0);
			organService.saveOrUpdate(organ);
			return organId;
		} catch (DaoException e) {
			e.printStackTrace();
			throw new RuntimeException("新增组织机构失败", e);
		}
	}
	
	/**
	 * 查询组织机构
	 * @author Programmer.Wenlong
	 * @since 2015-3-29 上午10:43:53
	 * @param organId
	 * @return
	 */
	public Organ query (String organId) {
		try {
			return organService.get(organId);
		} catch (DaoException e) {
			e.printStackTrace();
			throw new RuntimeException("查询组织机构失败", e);
		}
	}
	
	/**
	 * 查询单位
	 * @author Programmer.Wenlong
	 * @since 2015-3-29 上午10:41:55
	 * @param organId
	 * @return
	 */
	public Organ queryCorp (String organId) {
		Organ organ = this.query(organId);
		while (true) {
			organ = this.query(organ.getParentId());
			if (ORGAN_TYPE_CORP.equals(organ.getType().getId())) {
				break;
			}
		}
		
		return organ != null ? organ : null;
	}
	
	/**
	 * 查询部门
	 * @author Programmer.Wenlong
	 * @since 2015-3-29 上午10:42:01
	 * @param organId
	 * @return
	 */
	public Organ queryDept (String organId) {
		Organ organ = this.query(organId);
		while (true) {
			organ = this.query(organ.getParentId());
			if (ORGAN_TYPE_DEPT.equals(organ.getType().getId())) {
				break;
			}
		}
		
		return organ != null ? organ : null;
	}
	
	/**
	 * 判断根节点单位
	 * @author Programmer.Wenlong
	 * @since 2015-4-19 上午11:16:39
	 * @param organId
	 * @return
	 */
	public boolean isRootCorp (String organId) {
		Organ organ = this.query(organId);
		if (!ORGAN_TYPE_CORP.equals(organ.getType().getId())) {
			throw new RuntimeException("组织机构类型不是单位");
		}
		if (organ.getParentId() == null) {
			return true;
		}
		
		return false;
	}
	
	public static OrganApi newInstance() {
		return OrganApiHolder.INSTANCE;
	}

	private static class OrganApiHolder {
		private static final OrganApi INSTANCE = new OrganApi();
	}
	
}
