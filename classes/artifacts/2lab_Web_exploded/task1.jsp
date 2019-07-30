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
	<form action="Task1" method="POST" accept-charset="utf-8">
		<div>
			<label for="task1Key">Ключ:</label>
			<input type="text" name="key2" id="task1Key" value="${key2}"/>
		</div>
		<div>
			<label for="task1Value">Значение:</label>
			<input type="text" name="value2" id="task1Value" value="${value2}"/>
		</div>
		<div>
			<input type="submit" value="Submit" name="sub2" />
		</div>
	</form>
</body>
</html>