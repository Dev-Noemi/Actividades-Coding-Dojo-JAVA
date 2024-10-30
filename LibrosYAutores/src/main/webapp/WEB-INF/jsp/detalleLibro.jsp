<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle del Libro</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>
        <c:if test="${not empty nombreLibro}">${nombreLibro}</c:if>
    </h1>
    <c:if test="${not empty nombreAutor}">
        <h2>Autor: ${nombreAutor}</h2>
    </c:if>
    <c:if test="${not empty mensaje}">
        <p>${mensaje}</p>
    </c:if>
    <a href="<c:url value='/libros'/>">Regresar a la lista de libros</a>
</body>
</html>