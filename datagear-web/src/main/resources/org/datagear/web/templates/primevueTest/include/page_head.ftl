<#--
 *
 * Copyright 2018 datagear.tech
 *
 * Licensed under the LGPLv3 license:
 * http://www.gnu.org/licenses/lgpl-3.0.html
 *
-->
<#--
页头。

依赖：
page_obj.ftl

变量：
//当前用户，不允许为null
User currentUser

-->
<div class="grid grid-nogutter align-items-center">
	<div class="logo col-fixed pl-1">
		<#include "html_logo.ftl">
	</div>
	<div class="col text-right pr-2">
		<span class="vertical-align-super mr-1">${currentUser.nameLabel}</span>
		<p-button type="button" @click="toggleSysMenu" aria-haspopup="true" aria-controls="${pid}-sysMenu" icon="pi pi-cog" class="p-button-secondary p-button-text p-button-rounded p-button-sm"></p-button>
		<p-contextmenu id="${pid}-sysMenu" ref="sysMenuEle" :model="sysMenu.items" :popup="true"></p-contextmenu>
	</div>
</div>
<script>
(function(po)
{
	po.vueRef("sysMenu",
	{
		items:
		[
			{
				label: "个人设置"
			},
			{
				separator: true
			},
			{
				label: "切换肤色",
				items:
				[
					{
						label: "浅色"
					},
					{
						label: "暗色"
					},
					{
						label: "绿色"
					},
					{
						label: "紫色"
					}
				]
			},
			{
				label: "切换语言",
				items:
				[
					{
						label: "中文"
					},
					{
						label: "英文"
					}
				]
			},
			{
				label: "帮助",
				items:
				[
					{
						label: "关于"
					},
					{
						label: "文档"
					},
					{
						label: "版本日志"
					},
					{
						label: "下载最新版"
					}
				]
			},
			{
				separator: true
			},
			{
				label: "退出",
				class: "p-error"
			}
		]
	});
	
	po.vueRef("sysMenuEle", null);
	
	po.vueSetup("toggleSysMenu", function()
	{
		po.vueRef("sysMenuEle").toggle(event);
	});
})
(${pid});
</script>
