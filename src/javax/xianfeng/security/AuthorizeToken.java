package javax.xianfeng.security;

import java.io.Serializable;


/**
 * @author Programmer.Wenlong
 * @since 2012-4-3 下午11:51:34
 */
public class AuthorizeToken implements IAuthorizeToken, Serializable {

	private static final long serialVersionUID = 6146318824420240969L;

	private String principal; // 主体标识

	private String credential; // 鉴定凭据

	public AuthorizeToken() {
		super();
	}

	public AuthorizeToken(String principal, String credential) {
		super();
		this.principal = principal;
		this.credential = credential;
	}

	public String getPrincipal() {
		return principal;
	}

	public void setPrincipal(String principal) {
		this.principal = principal;
	}

	public String getCredential() {
		return credential;
	}

	public void setCredential(String credential) {
		this.credential = credential;
	}

}
