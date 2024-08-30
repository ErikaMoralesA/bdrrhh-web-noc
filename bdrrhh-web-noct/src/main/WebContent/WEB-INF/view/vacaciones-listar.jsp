<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vacaciones</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	
<nav></nav>
<section class="px-5 py-5">
    <div class="container">
	<h1> Vacaciones </h1>
	<div class="container" style="text-align: center">
	<button class="btn btn-primary" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?opcion=1';return false;" >
	 Agregar <i class="fa-solid fa-circle-plus"></i>
		</button>
	 
	 </div>
        <div class="table-responsive">
            <table id="tabla1"
                   name="tabla1"
                   data-height="600"
                   data-search="true"
                   data-pagination="true"
                   data-toggle="tabla1"
                   data-toolbar=".toolbar"
                   class="table table-striped table-sm">
	
		<thead>
	 		<tr>
	 		<th data-field="Id vacaion" data-sortable="true">id_vacacion</th>
	 		<th data-field="Id empleado" data-sortable="true">id_empleado</th>
	 		<th data-field="Fecha de inicio de vacacion" data-sortable="true">fecha_inicio_vacacion</th>
	 		<th data-field="Fecha de fin de vacacion" data-sortable="true">fecha_fin_vacacion</th>
	 		<th data-field="Total días de vacaciones" data-sortable="true">total_dias_vacacion</th>
	 		<th data-field="Vacacion aprobada" data-sortable="true">vacacion_aprobado</th>
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
	 				<button class="btn btn-success" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=1';return false;" > 
	 				<i class="fa-solid fa-arrows-rotate"></i>
					</button>
					
					<button class="btn btn-danger" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=2';return false;">
                    <i class="fa-solid fa-trash-can"></i>
                    </button>
				</td>
	 			
	 		</tr>
	 	</c:forEach>
	 		<tr></tr>
 
	 	</tbody>
	</table>
	</div>
	</section>
		<footer class="py-5 bg-light">
		    <div class="container">
		        <p class="m-0 text-center">Copyright &copy; Plataforma de Emprendimientos Biz Bloom S.A. - 2024 - Todos los derechos reservados.</p>
		    </div>
		</footer>
		
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
		
		<script>
		    var $tabla1 = $('#tabla1');
		    $(function(){
		        $tabla1.bootstrapTable({
		            sortReset: true
		        });
		    });
		</script>

</body>
</html>