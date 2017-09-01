package javax.xianfeng.system.security;

import javax.xianfeng.license.client.LicenseValidateException;
import javax.xianfeng.license.client.LicenseValidator;
import javax.xianfeng.web.filter.DefaultAccessCtrlAsyncFilter;

public class SysAccessCtrlAsyncFilter extends DefaultAccessCtrlAsyncFilter{

	@Override
	protected void doLicenseFilter(String uri) {
		try {
			LicenseValidator.newInstance().validateURI(uri);
		} catch (LicenseValidateException e) {
			throw e;
		}
	}

}
