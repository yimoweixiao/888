var tabCache = new Object;

$(function() {
	//缓存已打开的tab，再次打开同一个tab时，选中已打开的tab
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
			if (index > 0) {
				$('#tabMenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				}).data("tabTitle", title);
			}
		}
	});

	$("#tabMenu").menu( {
		onClick : function(item) {
			tabMenuEvt(this, item.id);
		}
	});
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
			content : '<iframe width="100%" height="99%" frameborder="0" marginwidth="5" marginheight="5" ' + ' allowtransparency="yes" src="' + url + '" ></iframe>',
			closable : true
		});
	} else {
		$('#tabs').tabs('select', parseInt(tabCache[title]));
	}
}

/**
 * 注销
 */
function logoutEvt() {
	location.href = "login.html";
}