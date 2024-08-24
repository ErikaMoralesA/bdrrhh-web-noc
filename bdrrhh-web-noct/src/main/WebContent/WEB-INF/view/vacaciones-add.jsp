<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registro de Vacaciones</title>
</head>
<body>
    <h1>Vacaciones</h1>
    
    
    <form action="add" method="post">
        <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}">
		
		Id Empleado
		<input type="number" id="id_empleado" name="id_empleado" value="${vacacion.id_empleado}">
		<br/>
		
		Fecha inicio vacacion
		<input type="date" id="fecha_inicio_vacacion" name="fecha_inicio_vacacion" value="${fn:substring(vacacion.fecha_inicio_vacacion, 0, 10)}">
		<br/>
		
		Fecha fin vacacion
		<input type="date" id="fecha_fin_vacacion" name="fecha_fin_vacacion" value="${fn:substring(vacacion.fecha_fin_vacacion, 0, 10)}">
		<br/>
		
		Total dias de vacaciones
		<input type="text" id="total_dias_vacacion" name="total_dias_vacacion" value="${vacacion.total_dias_vacacion}">
		<br/>
		
		Vacacion aprobado
		<input type="text" id="vacacion_aprobado" name="vacacion_aprobado" value="${vacacion.vacacion_aprobado}">
		<br/>
		

        
		<button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll';return false;">
  CANCELAR 
    </form>

</body>
</html>