<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<div class="container" style="text-align: center">
	   <h1> Vacaciones </h1>
	      <form action="del" method="get">
	
			  <section class="px-5 py-5">
		          <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}"/>
		          <strong>¿Desea eliminar el dato?</strong>
		           <br/>
		           <button class="btn btn-success" type="submit">Guardar</button>
		           <button class="btn btn-danger" type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll';return false;">
				   CANCELAR </button>
	          </section>
	      </form>
 
 	 </div>
 
</body>
</html>