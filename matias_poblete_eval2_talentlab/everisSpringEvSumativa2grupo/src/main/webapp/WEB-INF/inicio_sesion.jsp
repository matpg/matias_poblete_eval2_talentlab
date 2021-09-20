<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio sesion</title>
</head>
<body>
	<div>
		<form:form action="/iniciar" method="post" modelAttribute="usuario">
			
			<form:label path="usuario">usuario:</form:label>
			<form:input type="text" path="usuario"/><br>
			
			<form:label path="contrasena">contraseña:</form:label>
			<form:input type="password" path="contrasena"/><br>
			
			<br>
			
			<input type="submit" value="Iniciar Sesion">
		</form:form>
		<br>
		<a href="/registro">Registrarse</a>
	</div>
</body>
</html>