<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>top</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/holder.min.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<style type="">
 body{
 	    line-height: 5.428571;
 }
</style>
</head>
<body>
    <nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid"> 
    <div class="navbar-header">
        <a class="navbar-brand" href="#" style="font-size:28px;"><span style="font-size:28px;" class="glyphicon glyphicon-education" ></span>&nbsp;&nbsp;XXX系统</a>
    </div>
    <div style="float: right; margin-right:30px; font-size:18px; font-family:黑体;">
        	当前用户：<button type="button" class="btn btn-info btn-lg">${username }</button>
        &nbsp;&nbsp;
        <a href="servlet/SystemUserServlet?method=logout" target="_parent"><button type="button" class="btn btn-success">退出系统</button></a>
    </div>
	</div>
</nav>
</body>
</html>