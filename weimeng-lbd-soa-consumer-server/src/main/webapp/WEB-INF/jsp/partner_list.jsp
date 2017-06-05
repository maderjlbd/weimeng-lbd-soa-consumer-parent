<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css"/>
</head>
<body>
	<div>
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>姓名</th>
					<th>电话</th>
					<th>性别</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${partnerList}" var="partner">
					<tr>
						<th>${partner.name}</th>
						<th>${partner.phone}</th>
						<th><c:choose ><c:when test="${partner.sex ==1}">男</c:when><c:otherwise>女</c:otherwise></c:choose></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
</body>
</html>