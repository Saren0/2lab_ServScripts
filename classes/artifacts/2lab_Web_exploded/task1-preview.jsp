<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Задание 1</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Поиск и (или) замена информации в коллекции по ключу (значению).</h1><hr>
	<a href="index.jsp" title="На главную">На главную</a><br>
	<form action="Task1" method="GET" accept-charset="utf-8">
		<div>
			<label for="task1Key">Ключ:</label>
			<input type="text" name="key" id="task1Key" 
				placeholder="ключ"/>
		</div>
		<div>
			<label for="task1Value">Значение:</label>
			<input type="text" name="value" id="task1Value" 
				placeholder="значение"/>
		</div>
		<div>
			<input type="submit" value="Submit" />
		</div>
		<c:choose>
		<c:when test="${not empty errorMessage}">
	    	<div class="error">
		        <c:out value="${errorMessage}"/>
	    	</div><hr>
		</c:when>
		</c:choose>
	</form>
<c:forEach items="${states}" var="entry">
    Key = ${entry.key}, value = ${entry.value}<br>
</c:forEach>
</body>
</html>