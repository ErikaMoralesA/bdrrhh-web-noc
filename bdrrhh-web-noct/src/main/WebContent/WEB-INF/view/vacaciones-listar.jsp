<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> VACACIONES </title>
</head>
<body>
	
	<h1> Vacaciones </h1>
	
	<button onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?opcion=1';return false;" > Agregar
		</button>
	
	<table border="1">
	 	<thead>
	 		<tr>
	 		<th>id_vacacion</th>
	 		<th>id_empleado</th>
	 		<th>fecha_inicio_vacacion</th>
	 		<th>fecha_fin_vacacion</th>
	 		<th>total_dias_vacacion</th>
	 		<th>vacacion_aprobado</th>
	 		</tr>
	 	</thead>	
	 	<tbody>
	 	<c:forEach var="item" items="${vacaciones}">
	 		<tr>
	 			<td>${item.id_vacacion}</td>
	 			<td>${item.id_empleado}</td>
	 			<td>${fn:substring(item.fecha_inicio_vacacion,0,10)}</td>
	 			<td>${fn:substring(item.fecha_fin_vacacion,0,10)}</td>
	 			<td>${item.total_dias_vacacion}</td>
	 			<td>${item.vacacion_aprobado}</td>
	 			
	 			<td>
	 				<button onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=1';return false;" > Actualizar
					</button>
					
					<button onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=2';return false;" > Borrar
					</button>
				</td>
	 			
	 		</tr>
	 	</c:forEach>
	 		<tr></tr>
 
	 	</tbody>
	</table>
</body>
</html>