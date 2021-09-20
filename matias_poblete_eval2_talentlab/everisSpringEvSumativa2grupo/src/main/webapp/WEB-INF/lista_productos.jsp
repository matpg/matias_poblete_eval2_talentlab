<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
</head>
<body> 
	<div>
    	<br>
		<hr>
		<h1>Lista de Productos</h1>
		<hr>
		<table>
			<thead>
				<tr>
					<th>#</th>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Stock</th>
					<th>Descripcion</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="producto" items="${lista_productos}" >
				<tr>
					<td>#</td>
					<td><c:out value="${producto.nombre}" /></td>
					<td><c:out value="${producto.precio}" /> </td>
					<td><c:out value="${producto.stock}" /> </td>
					<td><c:out value="${producto.descripcion}" /> </td>
					<td>
						<a href="">Agregar a Carrito</a>
						<!-- 
						<form action="/producto/eliminar" method="POST">
							<input type="hidden" name="id" value="<c:out value="${producto.id}" />"> 
							<input type="submit" value="Eliminar">
						</form>
						
						 -->
					</td>
				</tr>
				</c:forEach>
			
			</tbody>
		</table>
	</div>
</body>
</html>