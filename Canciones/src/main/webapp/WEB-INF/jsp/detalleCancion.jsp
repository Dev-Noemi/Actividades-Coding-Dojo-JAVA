<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Detalle de Canción</title>
</head>
<body>
    <h1>Detalle de Canción</h1>
    <c:if test="${not empty cancion}">
        <p>Título: ${cancion.titulo}</p>
        <p>Artista: ${cancion.artista}</p>
        <p>Álbum: ${cancion.album}</p>
        <p>Género: ${cancion.genero}</p>
        <p>Idioma: ${cancion.idioma}</p>
    </c:if>
    <c:if test="${empty cancion}">
        <p>El libro no se encuentra en nuestra lista.</p>
    </c:if>
    <a href="/canciones">Volver a lista de canciones</a>
    
    <a href="${pageContext.request.contextPath}/canciones/formulario/editar/${cancion.id}">Actualizar Canción</a>
    
</body>
</html>