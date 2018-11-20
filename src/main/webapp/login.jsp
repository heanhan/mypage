<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>login</title>
  <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
  <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
  <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <style type="text/css">
	 body{
		    background: url("${pageContext.request.contextPath}/images/2.jpg");
		    animation-name:myfirst;
		    animation-duration:12s;
		    animation-delay:2s;
		    animation-iteration-count:infinite;
		    animation-play-state:running;
		 }
	 @keyframes myfirst
		{
		    0%   {background:url("${pageContext.request.contextPath}/images/2.jpg");}
		    34%  {background:url("${pageContext.request.contextPath}/images/3.jpg");}
		    66% {background:url("${pageContext.request.contextPath}/images/1.png");}
		    100%  {background:url("${pageContext.request.contextPath}/images/2.jpg");}
		}
	.form{background: rgba(255,255,255,0.2);width:400px;margin:120px auto;}
	.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
	input[type="text"],input[type="password"]{padding-left:26px;}
	.checkbox{padding-left:21px;}
  </style>
</head>
<body>
	<div class="container">
		<div class="form row">
			<div class="form-horizontal col-md-offset-3" id="login_form">
				<h3 class="form-title">用户登录</h3>
				<form action="${pageContext.request.contextPath}/inputInfo" method="post" >
					<div class="col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i>
						<input class="form-control required" type="text" placeholder="账号" id="useraccord" name="useraccord" autofocus="autofocus" maxlength="20" />
					</div>
					<div class="form-group">
						<i class="fa fa-lock fa-lg"></i> 
						<input class="form-control required" type="password" placeholder="请输入6-20位密码！" id="password" name="password" maxlength="8" />
					</div>
					<div class="form-group">
						<label class="checkbox"> 
						<input type="checkbox" name="remember" value="1" />记住我
						</label>
					</div>
					<div class="form-group col-md-offset-9">
						<button type="submit" class="btn btn-success pull-right" name="submit">登录</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
<!-- Ajax验证用户的名时是否有效-->
<script type="text/javascript">
	$(function()
		{
			//alert("OK!");//测试jquery 是否加载成功！
			$("#username").blur(function()
			{
			alert("开始使用ajax发送数据信息");
			//var username=$("#username").val()
			$.ajax(
			{
				type: "POST",
				url:"${pageContext.request.contextPath}/validate",
				data: {//数据
					username:$("#username").val(),
                   // password:$("input[name='pw']").val()
                },
				dataType: 'json',
				success:function(result)
				{
					alert(result);
				},
                error: function (er) {          //失败，回调函数
                    alert(result);
                }
			});
			});
		});
</script>
</html>