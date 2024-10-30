<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle de la Receta</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>
        <c:if test="${not empty nombreReceta}">${nombreReceta}</c:if>
    </h1>
    <c:if test="${not empty ingredientes}">
        <h2>Ingredientes:</h2>
        <ul>
            <c:forEach var="ingrediente" items="${ingredientes}">
                <li>${ingrediente}</li>
            </c:forEach>
        </ul>
    </c:if>
    <c:if test="${not empty mensaje}">
        <p>${mensaje}</p>
    </c:if>
</body>
</html>