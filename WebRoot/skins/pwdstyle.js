/**
 * 密码强度监听函数
 * @param {Object} pwd
 */
function pwdChgEvt(pwd) {
	var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
	var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
	var weakRegex = new RegExp("(?=.{6,}).*", "g"); 
	
	if (weakRegex.test(pwd) == false) { 
		//密码小于六位的时候，密码强度图片都为灰色 
		$('.pwd-strength').removeClass('pwd-weak'); 
		$('.pwd-strength').removeClass('pwd-medium'); 
		$('.pwd-strength').removeClass('pwd-strong'); 
		$('.pwd-strength').addClass('pwd-default'); 
	}  else if (strongRegex.test(pwd)) { 
		//密码为八位及以上并且字母数字特殊字符三项都包括,强度最强 
		$('.pwd-strength').removeClass('pwd-weak'); 
		$('.pwd-strength').removeClass('pwd-medium'); 
		$('.pwd-strength').removeClass('pwd-strong'); 
		$('.pwd-strength').addClass('pwd-strong'); 
	}  else if (mediumRegex.test(pwd)) { 
		//密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
		$('.pwd-strength').removeClass('pwd-weak'); 
		$('.pwd-strength').removeClass('pwd-medium'); 
		$('.pwd-strength').removeClass('pwd-strong'); 
		$('.pwd-strength').addClass('pwd-medium'); 
	}  else { 
		//如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
		$('.pwd-strength').removeClass('pwd-weak'); 
		$('.pwd-strength').removeClass('pwd-medium'); 
		$('.pwd-strength').removeClass('pwd-strong'); 
		$('.pwd-strength').addClass('pwd-weak'); 
	} 
}