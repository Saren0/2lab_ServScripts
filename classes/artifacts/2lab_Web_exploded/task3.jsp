<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 3</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Количество дней, когда температура опускалась ниже 0</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<div>
		<div class="descpiption">Количество дней :</div>
		<div class="value"><c:out value="${days}"/></div><br>
	</div>
</body>
</html>