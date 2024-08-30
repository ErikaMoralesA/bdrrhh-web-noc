<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Vacación</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center mb-4">Eliminar solicitud</h1>

        <form action="del" method="get">
            <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}"/>

            <div class="alert alert-warning text-center">
                <strong>¿Está seguro de que desea eliminar esta solicitud?</strong>
            </div>

            <div class="d-flex justify-content-center">
                <button class="btn btn-danger mr-2" type="submit">
                    <i class="fa-solid fa-trash-can"></i> Eliminar
                </button>
                <button class="btn btn-secondary" type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll';return false;">
                    <i class="fa-solid fa-circle-xmark"></i> Cancelar
                </button>
            </div>
        </form>
    </div>

    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
</body>
</html>
