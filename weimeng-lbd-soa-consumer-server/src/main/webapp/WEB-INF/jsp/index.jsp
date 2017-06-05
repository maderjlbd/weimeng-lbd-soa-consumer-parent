<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>基础架构部</title>
<meta name="description" content="overview & stats" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" href="/css/bootstrap.min.css"/>
<style type="text/css">
/* 蓝色皮肤：色值（#3498db） */
body{
	background:#f5f5f5;
}
.d-skin-blue .navbar-inverse{
	background-color:#3498db;
	border:none;
}
.d-skin-blue .navbar-brand{
	color:#ffffff;
	opacity:0.6;
	filter:alpha(opacity=60);
}
.d-skin-blue .navbar-brand:hover{
	opacity:1;
	filter:alpha(opacity=100);
}
/* .d-skin-blue .d-menu-left{
	padding-right:10px;
} */
.d-menu-left .row{
	/* margin-right:0; */
	background:#3498db;
}
.d-menu-left .nav-tab ul li{
	background:#50a6da;
}
.d-menu-left .col-md-12{
	font-size:16px;
	padding:0;
}
.d-menu-left .nav-tab i{
	margin-right:5px;
}
.d-menu-left .nav-tab a{
	color:#ffffff;
	opacity:0.6;
	filter:alpha(opacity=60);
}
.d-menu-left .nav-tab a:focus,
.d-menu-left .nav-tab a:hover{
	background:#3498db;
}
.d-menu-left .nav-tab ul a:focus,
.d-menu-left .nav-tab ul a:hover{
	background:#50a6da;
}
.d-menu-left .nav-tab a:hover{
	opacity:1;
	filter:alpha(opacity=100);
}
.d-menu-left .nav-tab a:focus{
	opacity:1;
	filter:alpha(opacity=100);
}
.d-menu-left .nav-tab li{
	border-top:1px solid rgba(255,255,255,0.2); 
}
.d-menu-left .nav-list a{
	padding-left:30px;
}
.d-content-right{
	
}
</style>
</head>
<body>
	<div class="d-skin-blue">
		<!-- 页面顶部  -->
		<div class="navbar navbar-static-top navbar-inverse" role="navigation" >
	        <div class="container-fluid">
	            <div class="navbar-header">
	                <a class="navbar-brand" href="javascript:void(0);" id="logo">基础架构部</a>
	            </div>
	        </div>
	    </div>
	    
	    <div class="col-md-12" style="padding:0;">
	   		<!-- 左侧菜单 -->
			<div class="d-menu-left col-md-2">
		        <div class="row">
		            <div class="col-md-12">
		                <ul id="main-nav" class="nav nav-tab">
		                    <li class="active">
		                        <a href="#">
									<i class="glyphicon glyphicon-th-large"></i>首页
		                        </a>
		                    </li>
		                    <li>
		                        <a href="#departmentManagement" class="nav-header collapsed" data-toggle="collapse">
		                            <i class="glyphicon glyphicon-th-list"></i>部门管理
		                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
		                        </a>
		                        <ul id="departmentManagement" class="nav nav-list collapse" style="height: 0px;">
		                            <li><a href="javscript:void(0);" onclick="menuClick('/partner/partnerList')"><i class="glyphicon glyphicon-user"></i>人员管理</a></li>
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-eye-open"></i>经费管理</a></li>
		                        </ul>
		                    </li>
		                    <li>
		                        <a href="#projectManagement" class="nav-header collapsed" data-toggle="collapse">
		                            <i class="glyphicon glyphicon-file"></i>项目管理
		                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
		                        </a>
		                        <ul id="projectManagement" class="nav nav-list collapse" style="height: 0px;">
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-export"></i>WCC</a></li>
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-export"></i>WDD</a></li>
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-export"></i>CAT</a></li>
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-export"></i>soa-proxy</a></li>
		                            <li><a href="javscript:void(0);"><i class="glyphicon glyphicon-export"></i>短域名</a></li>
		                        </ul>
		                    </li>
		                </ul>
		            </div>
				</div>
			</div>
	    		
	   		<!-- 右侧内容区域 -->
	   		<div class="d-content-right col-md-10" style="background:#ffffff;">
				<iframe id="iframe-page-content" src="" width="100%"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
	   		</div>
	   	</div>
	</div>
	
	
	<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(function() {
		var height=document.documentElement.clientHeight;
		document.getElementById('iframe-page-content').style.height=height+'px';
	});
	
	var menuClick = function(menuUrl) {
		$("#iframe-page-content").attr('src',menuUrl);
	};
	</script>
</body>
</html>
