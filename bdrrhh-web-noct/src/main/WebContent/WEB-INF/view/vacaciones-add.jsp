<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Registro de Vacaciones</title>
	
	<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/estilos.css"/> --%>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
	
</head>
<body>
	<nav></nav>
	
	<section class="py-5 px-5">
		<div class="container">
		
		    <h1>Vacaciones</h1>
		    
		   <form action="add" method="post" class="needs-validation" novalidate>
		   
		        <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}">
				
				<div>
				<label for="id_empleado" class="form-label">Id Empleado</label>
				<input class="form-control" type="number" id="id_empleado" name="id_empleado" value="${vacacion.id_empleado}">
				</div>
				
				<div>
				<label for="fecha_inicio_vacacion" class="form-label">Fecha inicio de vacaciones</label>
				<input class="form-control" type="date" id="fecha_inicio_vacacion" name="fecha_inicio_vacacion" value="${fn:substring(vacacion.fecha_inicio_vacacion, 0, 10)}">
				</div>
				
				<div>
				<label for="fecha_fin_vacacion" class="form-label">Fecha fin de vacaciones</label>
				<input class="form-control" type="date" id="fecha_fin_vacacion" name="fecha_fin_vacacion" value="${fn:substring(vacacion.fecha_fin_vacacion, 0, 10)}">
				</div>
				
				<div>
				<label for="total_dias_vacacion" class="form-label">Total de vacaciones</label>
				<input class="form-control" type="number" id="total_dias_vacacion" name="total_dias_vacacion" value="${vacacion.total_dias_vacacion}">
				</div>
				
				<div>
				<label for="vacacion_aprobado" class="form-label">Vacacion aprobadas</label>
				<input class="form-control" type="text" id="vacacion_aprobado" name="vacacion_aprobado" value="${vacacion.vacacion_aprobado}">
				</div>


        
				<button class="btn btn-success" type="submit">Guardar</button>
				<button class="btn btn-danger" type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll';return false;">
				CANCELAR </button>
		    </form>
		</div>
	</section>
	
	<footer></footer>

		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

<script>
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(() => {
	  'use strict'
 
	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  const forms = document.querySelectorAll('.needs-validation')
 
	  // Loop over them and prevent submission
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }
 
	      form.classList.add('was-validated')
	    }, false)
	  })
	})()

</script>

</body>
</html>