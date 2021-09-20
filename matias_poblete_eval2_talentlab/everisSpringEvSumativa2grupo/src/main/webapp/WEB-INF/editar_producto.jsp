<meta charset="UTF-8">
<title> Editar Producto</title>
</head>
<body> 
	<div>
		<form:form action="/producto/modificar" method="post" modelAttribute="producto">
			<input type="hidden" name="_method" value="put" >
			<form:hidden path="id"/>
			
			
			<form:label path="nombre">nombre:</form:label>
			<form:input type="text" path="nombre"/><br>
			
			<form:label path="precio">precio:</form:label>
			<form:input type="text" path="precio"/><br>
			
			<!-- <form:label path="edad">edad:</form:label>
			<form:input type="text" path="edad"/><br>
			
			<form:label path="profesion">profesion:</form:label>
			<form:input type="text" path="profesion"/><br>
			
			<form:label path="cargo">cargo:</form:label>
			<form:input type="text" path="cargo"/> --><br>
						<br>
			<label for="productos">Seleccione un Producto:</label>
			<select name="producto">
				<c:forEach var="producto" items="${lista_productos}" >
					<option value="<c:out value="${producto.id}" />"> <c:out value="${producto.nombre}" /> <c:out value="${producto.precio}" /></option>
				</c:forEach>
			</select>
			<br>
			
			
			<input type="submit" value="Modificar Producto">
		</form:form>
		
	</div>
</body>
</html>