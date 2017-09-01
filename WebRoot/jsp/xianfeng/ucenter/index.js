var tabCache = new Object;

$(function() {
	//注册tab的事件
	$('#tabs').tabs( {
		onSelect : function(title, index) {
			tabCache[title] = index;
		},
		/*onBeforeClose: function (title, index) {
		    return confirm('您确定要关闭【' + title + '】吗？');
		},*/
		onClose : function(title, index) {
			delete tabCache[title];
		},
		onContextMenu : function(e, title, index) {
			e.preventDefault();
			var tab = $(this).tabs('getTab', index);
			var tabId = $(tab).attr("id");
			
			// 非首页显示右键菜单
			if (!tabId || tabId.indexOf("defaultPage_") < 0) {
				$('#tabMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				}).data("tabTitle", title);
			}
		}
	});

	// 注册菜单的单击事件
	$("#tabMenu").menu( {
		onClick : function(item) {
			tabMenuEvt(this, item.id);
		}
	});
	
	//判断锁屏情况
	if (_isLockSrc == "true") {
		lockScrHandler();
	}
});

/**
 * 选项卡右键菜单事件
 * @param {Object} menu
 * @param {Object} type
 */
function tabMenuEvt(menu, type) {
	var allTabs = $("#tabs").tabs('tabs');
	var allTabtitle = [];
	$.each(allTabs, function(i, n) {
		var opt = $(n).panel('options');
		if (opt.closable)
			allTabtitle.push(opt.title);
	});
	var curTabTitle = $(menu).data("tabTitle");
	var curTabIndex = $("#tabs").tabs("getTabIndex", $("#tabs").tabs("getTab", curTabTitle));
	switch (type) {
		case "tabMenu-close"://关闭当前
			$("#tabs").tabs("close", curTabTitle);
			return false;
			break;
		case "tabMenu-closeAll"://关闭全部
			for ( var i = 0; i < allTabtitle.length; i++) {
				$("#tabs").tabs('close', allTabtitle[i]);
			}
			break;
		case "tabMenu-closeOther"://关闭其它
			for ( var i = 0; i < allTabtitle.length; i++) {
				if (curTabTitle != allTabtitle[i])
					$("#tabs").tabs('close', allTabtitle[i]);
			}
			$("#tabs").tabs('select', curTabTitle);
			break;
		case "4": //关闭左侧
			for ( var i = 0; i < curTabIndex - 1; i++) {
				$("#tabs").tabs('close', allTabtitle[i]);
			}
			$("#tabs").tabs('select', curTabTitle);
		case "5"://关闭右侧
			for ( var i = curTabIndex; i < allTabtitle.length; i++) {
				$("#tabs").tabs('close', allTabtitle[i]);
			}
			$("#tabs").tabs('select', curTabTitle);
			break;
			break;
		case "tabMenu-refresh": //刷新
			var currTab = $('#tabs').tabs('getSelected');
	        var url = $(currTab.panel('options').content).attr('src');
	        $('#tabs').tabs('update',{
	            tab:currTab,
	            options:{
	                content: addNewTab(currTab.panel('options').title, url)
	            }
	        });
			break;
	}

}

/**
 * 增加选项卡
 * @param {Object} title
 * @param {Object} url
 */
function addNewTab(title, url) {
	if (tabCache[title] == undefined) {
		if (!url)
			return;
		$('#tabs').tabs('add', {
			title : title,
			content : '<iframe width="100%" height="99%" frameborder="0" marginwidth="0" marginheight="0" src="' + url + '" ></iframe>',
			closable : true
		});
	} else {
		$('#tabs').tabs('select', parseInt(tabCache[title]));
	}
}

/**
 * 首页
 */
function homePageEvt () {
	$('#tabs').tabs('select', 0);
}

/**
 * 锁屏
 */
function lockScreenEvt () {
	//保存锁屏状态
	$.post(_basePath + "/action/system/auth/doLockScr.rmi", 
		function (result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", result.error, "error");
			} else {
				lockScrHandler();
			}
		}
	);
}

function lockScrHandler () {
	//弹出锁屏窗口
	art.dialog.open(_basePath + "/jsp/xianfeng/ucenter/unlock.jsp", {
		title: "屏幕解锁",
		width: 360,
		height: 120,
		lock: true,
		drag: false,
		opacity: 0.56,
		okVal: "解锁",
		ok: function (){
			var password = this.iframe.contentWindow.$("#password").val();
			if (password == "") {
				return false;
			}
			var error = "";
			$.ajax( {
				type: "post",
				url: _basePath + "/action/system/auth/doUnlockScr.rmi", 
				async: false,
				cache: false,
				data: {password: password},
				success: function (result) {
					result = eval('(' + result + ')');
					if (result.error) {
						error = result.error;
					}
				},
			});
			if (error != "") {
				art.dialog.tips(error, 2);
				return false;
			} else {
				this.close();
				//window.top.location.reload(); //解决锁屏解锁之后地址栏图标一直转圈问题，但锁屏前的页面返回用户主页面，只要后台解决
				return true;
			}
		},
		cancelVal: "注销",
		cancel: function (){
			logoutEvt();
			return false; //必须返回false，否则关闭按钮点击之后锁屏窗口就会关闭
		}
	});
}

/**
 * 注销
 */
function logoutEvt() {
	art.dialog({
		title: "系统提示",
		content: "您确认要注销登录吗？",
		icon: "question",
		ok: function () {
			$.post(_basePath + "/action/system/auth/doLogout.action",
				function (data) {
					if (data.error) {
						$.messager.alert("系统提示", data.error, "error");
						return;
					} else {
						location.href = _basePath + "/jsp/xianfeng/ucenter/login.jsp";
					}
				}
			);
		},
		cancel: true
	});
}

/**
 * 修改密码
 */
function editUserPwdEvt (title, url) {
	art.dialog.open(url, {
		title: title,
		width: 460,
		height: 240
	});
}

/**
 * 修改基本信息
 */
function editBaseInfoEvt (title, url) {
	art.dialog.open(url, {
		title: title,
		width: 620,
		height: 380
	});
}

/**
 * 保存菜单风格
 */
function saveMenuStyle(style) {
	if (_menuStyle == style) {
		return false;
	}
	
	$.ajax( {
		type: "post",
		url: _basePath + "/action/system/auth/doMenuStyle.action", 
		async: false,
		cache: false,
		data: {menuStyle: style},
		success: function (result) {
			result = eval('(' + result + ')');
			if (result.error) {
				$.messager.alert("系统提示", data.error, "error");
				return;
			}
			if (style == "items") {
				window.top.location.href = _basePath + "/jsp/xianfeng/ucenter/default.jsp";
			} else {
				window.top.location.href = _basePath + "/jsp/xianfeng/ucenter/index.jsp";
			}
		},
	});
}