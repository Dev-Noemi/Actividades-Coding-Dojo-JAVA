<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
    <title>Editar Canción</title>
</head>
<body>
    <h2>Editar Canción</h2>
    <form action="${pageContext.request.contextPath}/canciones/procesa/editar/${cancion.id}" method="post">
        <label>Título:</label>
        <input type="text" name="titulo" value="${cancion.titulo}" required />
        <br />
        
        <label>Artista:</label>
        <input type="text" name="artista" value="${cancion.artista}" required />
        <br />

        <label>Álbum:</label>
        <input type="text" name="album" value="${cancion.album}" required />
        <br />

        <label>Género:</label>
        <input type="text" name="genero" value="${cancion.genero}" required />
        <br />

        <label>Idioma:</label>
        <input type="text" name="idioma" value="${cancion.idioma}" required />
        <br />

        <input type="submit" value="Actualizar Canción" />
    </form>

    <a href="${pageContext.request.contextPath}/canciones">Volver a lista de canciones</a>
</body>
</html>