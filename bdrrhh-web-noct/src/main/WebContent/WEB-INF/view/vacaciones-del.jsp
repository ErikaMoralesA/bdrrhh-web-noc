<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1> Vacaciones </h1>
      <form action="del" method="get">

          <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}"/>
          <strong>¿Desea Eliminar el dato?</strong>
           <br/>
           <button type="submit">Guardar</button>
          <button onclick="window.location.href='//bdrrhh-web-noct/vacaciones/findAll';return false;">
          CANCELAR 
          </button>
      </form>
 
 
</body>
</html>