<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Libro</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>Agregar Nuevo Libro</h1>
    <form action="<c:url value='/procesa/libro'/>" method="post">
        <label for="nombreLibro">Nombre del Libro:</label>
        <input type="text" id="nombreLibro" name="nombreLibro" required>
        <br>
        <label for="nombreAutor">Nombre del Autor:</label>
        <input type="text" id="nombreAutor" name="nombreAutor" required>
        <br>
        <input type="submit" value="Agregar">
    </form>
    <a href="<c:url value='/libros'/>">Regresar a la lista de libros</a>
</body>
</html>