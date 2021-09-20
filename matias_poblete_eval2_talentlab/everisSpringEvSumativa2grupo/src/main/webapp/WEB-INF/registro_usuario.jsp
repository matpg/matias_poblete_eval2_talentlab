<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Registro de Usuario</title>
</head>
<body>
	<div>
		<form:form action="/crear" method="post" modelAttribute="usuario">
			
			<form:label path="usuario">Ingrese nombre del usuario:</form:label>
			<form:input type="text" path="usuario"/><br>
			
			<form:label path="contrasena">Ingrese la contraseña del usuario:</form:label>
			<form:input type="text" path="contrasena"/><br>
			
			
			<br>
			
			
			<input type="submit" value="Crear Usuario">
		</form:form>
		<br>
		
	</div>
</body>
</html>