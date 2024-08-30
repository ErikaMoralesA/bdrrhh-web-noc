<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Solicitud de Vacación</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    <!-- Estilo personalizado -->
    <style>
        .alert-custom {
            background-color: #f2dede; /* Color de fondo personalizado (rojo claro) */
            color: #a94442; /* Color de texto */
            border-color: #ebccd1; /* Color del borde */
        }
    </style>
</head>
<body>
    <div class="container my-5">
        <h1 class="text-center display-4 mb-5">Eliminar Solicitud</h1>

        <form action="del" method="get">
            <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}"/>

            <div class="alert alert-custom text-center py-4">
                <strong>¿Está seguro de que desea eliminar esta solicitud de vacación?</strong>
            </div>

            <div class="d-flex justify-content-center mt-4">
                <button class="btn btn-danger btn-lg mr-3" type="submit">
                    <i class="fa-solid fa-trash-can mr-2"></i>Eliminar
                </button>
                <button class="btn btn-secondary btn-lg" type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll';return false;">
                    <i class="fa-solid fa-circle-xmark mr-2"></i>Cancelar
                </button>
            </div>
        </form>
    </div>

    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
</body>
</html>
