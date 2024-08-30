<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gestión de Vacaciones</title>
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        /* Asegurar que la tabla no tenga barras de desplazamiento */
        .table-responsive {
            overflow: hidden;
        }
    </style>
</head>
<body>
    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Inicio</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Vacaciones</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Sección principal -->
    <section class="container my-5">
        <h1 class="text-center mb-4">Gestión de Vacaciones</h1>
        <div class="text-center mb-4">
            <button class="btn btn-primary" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?opcion=1'; return false;">
                Agregar <i class="fa-solid fa-circle-plus"></i>
            </button>
        </div>
        <div class="table-responsive">
            <table id="tabla1"
                   class="table table-striped table-bordered table-sm"
                   data-toggle="tabla1"
                   data-search="true"
                   data-pagination="true"
                   data-toolbar=".toolbar">
                <thead class="thead-dark">
                    <tr>
                        <th data-field="id_vacacion" data-sortable="true">ID Vacación</th>
                        <th data-field="id_empleado" data-sortable="true">ID Empleado</th>
                        <th data-field="fecha_inicio_vacacion" data-sortable="true">Fecha Inicio</th>
                        <th data-field="fecha_fin_vacacion" data-sortable="true">Fecha Fin</th>
                        <th data-field="total_dias_vacacion" data-sortable="true">Total Días</th>
                        <th data-field="vacacion_aprobado" data-sortable="true">Aprobada</th>
                        <th data-field="acciones">Acciones</th>
                    </tr>
                </thead>    
                <tbody>
                    <c:forEach var="item" items="${vacaciones}">
                        <tr>
                            <td>${item.id_vacacion}</td>
                            <td>${item.id_empleado}</td>
                            <td>${fn:substring(item.fecha_inicio_vacacion, 0, 10)}</td>
                            <td>${fn:substring(item.fecha_fin_vacacion, 0, 10)}</td>
                            <td>${item.total_dias_vacacion}</td>
                            <td>${item.vacacion_aprobado}</td>
                            <td>
                                <button class="btn btn-success btn-sm" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=1'; return false;">
                                    <i class="fa-solid fa-arrows-rotate"></i>
                                </button>
                                <button class="btn btn-danger btn-sm" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findOne?id_vacacion=${item.id_vacacion}&opcion=2'; return false;">
                                    <i class="fa-solid fa-trash-can"></i>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </section>

    <!-- Pie de página -->
    <footer class="py-5 bg-light">
        <div class="container">
            <p class="m-0 text-center">Instituto Superior Tecnológico ISMAC - 2024</p>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

    <!-- Inicialización de la tabla -->
    <script>
        var $tabla1 = $('#tabla1');
        $(function() {
            $tabla1.bootstrapTable({
                sortReset: true
            });
        });
    </script>
</body>
</html>
