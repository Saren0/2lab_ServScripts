<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 2</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Вывод фрагментов текстов шрифтами различного размера</h1><hr>
	<a href="<c:url value="index.jsp"/>" title="На главную">На главную</a><br>
	<a href="<c:url value="task2-preview.html"/>" 
		title="На предыдущую">На предыдущую</a><br>
	<c:choose>
		<c:when test="${not empty errorMessage}">
	    	<div class="error">
		        <c:out value="${errorMessage}"/>
	    	</div><hr>
		</c:when>
		<c:otherwise>
			<div class="descpiption">
				<div style="font-size:${size2}%">
					<c:out value="${word2}"/>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>