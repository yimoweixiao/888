package javax.xianfeng.system.permit;

import java.util.ArrayList;
import java.util.List;

import javax.xianfeng.core.model.ParameterSet;
import javax.xianfeng.dao.DaoException;
import javax.xianfeng.spring.ioc.SpringIoc;
import javax.xianfeng.system.permit.entity.Operation;
import javax.xianfeng.system.permit.service.IOperationService;

/**
 * @author Programmer.Wenlong
 * @since 2015-3-31 下午07:10:04
 */
public final class PermitApi {

	private IOperationService service = (IOperationService) SpringIoc.find("system.OperationService");
	
	private final List<String> roleCtrlURIs = new ArrayList<String>();
	
	private boolean isInited = false;

	private PermitApi() {
		super();
	}
	
	private void init() {
		ParameterSet pset = new ParameterSet();
		List<Operation> operations = null;
		try {
			operations = service.queryNoPage(pset);
		} catch (DaoException e) {
			e.printStackTrace();
		}
		for (Operation operation: operations) {
			this.roleCtrlURIs.add(operation.getTarget());
		}
		isInited = true;
	}
	
	public List<String> getRoleCtrlURIs() {
		if (!isInited) {
			init();
		}
		return roleCtrlURIs;
	}

	public static PermitApi newInstance() {
		return PermitApiHolder.INSTANCE;
	}

	private static class PermitApiHolder {
		private static final PermitApi INSTANCE = new PermitApi();
	}

}
