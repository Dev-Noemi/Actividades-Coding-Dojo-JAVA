<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle de la Canción</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/styles.css'/>">
</head>
<body>
    <h1>Detalle de la Canción</h1>
    <c:if test="${not empty cancion}">
        <p><strong>Título:</strong> ${cancion.titulo}</p>
        <p><strong>Artista:</strong> ${cancion.artista}</p>
        <p><strong>Álbum:</strong> ${cancion.album}</p>
        <p><strong>Género:</strong> ${cancion.genero}</p>
        <p><strong>Idioma:</strong> ${cancion.idioma}</p>
        <p><strong>Fecha de Creación:</strong> ${cancion.fechaCreacion}</p>
        <p><strong>Fecha de Actualización:</strong> ${cancion.fechaActualizacion}</p>
    </c:if>
    <c:if test="${empty cancion}">
        <p>La canción no se encuentra en nuestra lista.</p>
    </c:if>
    <a href="<c:url value='/canciones'/>">Volver a lista de canciones</a>
</body>
</html>