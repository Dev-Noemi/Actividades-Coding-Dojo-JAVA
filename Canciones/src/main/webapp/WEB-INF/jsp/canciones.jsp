<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Canciones</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>Lista de Canciones</h1>
    <table>
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalle</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cancion" items="${canciones}">
                <tr>
                    <td>${cancion.titulo}</td>
                    <td>${cancion.artista}</td>
                    <td><a href="<c:url value='/canciones/detalle/${cancion.id}'/>">Detalle</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>