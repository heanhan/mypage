<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/holder.min.js"></script>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson .header").click(function() {
			var $parent = $(this).parent();
			$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();

			$parent.addClass("active");
			if (!!$(this).next('.sub-menus').size()) {
				if ($parent.hasClass("open")) {
					$parent.removeClass("open").find('.sub-menus').hide();
				} else {
					$parent.addClass("open").find('.sub-menus').show();
				}


			}
		});

		// 三级菜单点击
		$('.sub-menus li').click(function(e) {
			$(".sub-menus li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('.menuson').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('.menuson').slideUp();
			} else {
				$(this).next('.menuson').slideDown();
			}
		});
	})
</script>

<style type="text/css">
	body {
	  
	  font-size: 38px;
	}
</style>


</head>

<body style="background: azure;">
<div class="container">

	<div >
		<p class="glyphicon glyphicon-home" style="font-size: 22px;">系统菜单</p>
	</div>

	<dl class="leftmenu">
		<dd>
			<div class="title">
				<span class="glyphicon glyphicon-folder-open"></span>
				功能一
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame"><i class="fa fa-toggle-on">###</i></a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span class="glyphicon glyphicon-education"></span>功能二
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
			</ul>
		</dd>
		 <dd>
			<div class="title">
				<span class="glyphicon glyphicon-user"></span>功能三
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span class="glyphicon glyphicon-book"></span>功能四
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">###</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span class="glyphicon glyphicon-wrench"></span>功能五
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">####</a><i></i></li>
			</ul>
		</dd>
		<dd>
			<div class="title">
				<span class="glyphicon glyphicon-cog"></span>系统设置
			</div>
			<ul class="menuson">
				<li><cite></cite><a href="#" target="rightFrame">用户添加</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">修改密码</a><i></i></li>
				<li><cite></cite><a href="#" target="rightFrame">联系开发者</a><i></i></li>
			</ul>
		</dd>
	</dl>
</div>
</body>

</html>