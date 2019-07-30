<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Индексная страница</title>
	<link rel="stylesheet" href="css/app-style.css">
</head>
<body>
	<h1>Лабораторная №2</h1><hr>
    <c:if test="${not empty errorMessage}">
    	<div class="error">
	        <c:out value="${errorMessage}"/>
    	</div><hr>
    </c:if>
	<a href='<c:url value="task1-preview.jsp"/>' title="Задача 1">
		Задача 1 - Поиск и (или) замена информации в коллекции по ключу (значению)
	</a><br>
	<a href="<c:url value="task2-preview.html"/>" title="Задача 2">
		Задача 2 - Вывод фрагментов текстов шрифтами различного размера
	</a><br>
	<a href='<c:url value='<%="/Task3Controller"%>'/>' title="Задача 3">
		Задача 3 - Количество дней, когда температура опускалась ниже 0
	</a><br>
	<a href="<c:url value="task6-index.jsp"/>" title="Задача 4">
		Задача 4 - Телефонный справочник
	</a>
</body>
</html>