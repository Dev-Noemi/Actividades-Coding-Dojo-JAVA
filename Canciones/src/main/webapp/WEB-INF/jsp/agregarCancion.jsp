<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Agregar Canción</title>
</head>
<body>
    <h1>Agregar Canción</h1>
    <form action="/canciones/procesa/agregar" method="post">
        <label>Título:</label>
        <input type="text" name="titulo" required />
        <label>Artista:</label>
        <input type="text" name="artista" required />
        <label>Álbum:</label>
        <input type="text" name="album" required />
        <label>Género:</label>
        <input type="text" name="genero" required />
        <label>Idioma:</label>
        <input type="text" name="idioma" required />
        <button type="submit">Agregar Canción</button>
    </form>
    <a href="/canciones">Volver a lista de canciones</a>
</body>
</html>