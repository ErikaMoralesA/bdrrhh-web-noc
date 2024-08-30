<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro de Vacaciones</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-table.min.css"/>
</head>
<body>
    <!-- Navegación -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Vacaciones</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Inicio</a>
                </li>
                <!-- Agrega más enlaces si es necesario -->
            </ul>
        </div>
    </nav>

    <!-- Sección principal -->
    <section class="container my-5">
        <h1 class="text-center mb-4">Registro de Vacaciones</h1>

        <form action="add" method="post" class="needs-validation" novalidate>
            <input type="hidden" id="id_vacacion" name="id_vacacion" value="${vacacion.id_vacacion}">
            
            <div class="form-group">
                <label for="id_empleado" class="form-label">Id Empleado</label>
                <input class="form-control" type="number" id="id_empleado" name="id_empleado" value="${vacacion.id_empleado}" required>
                <div class="invalid-feedback">Por favor, ingrese el ID del empleado.</div>
            </div>
            
            <div class="form-group">
                <label for="fecha_inicio_vacacion" class="form-label">Fecha inicio de vacaciones</label>
                <input class="form-control" type="date" id="fecha_inicio_vacacion" name="fecha_inicio_vacacion" value="${fn:substring(vacacion.fecha_inicio_vacacion, 0, 10)}" required>
                <div class="invalid-feedback">Por favor, ingrese la fecha de inicio de las vacaciones.</div>
            </div>
            
            <div class="form-group">
                <label for="fecha_fin_vacacion" class="form-label">Fecha fin de vacaciones</label>
                <input class="form-control" type="date" id="fecha_fin_vacacion" name="fecha_fin_vacacion" value="${fn:substring(vacacion.fecha_fin_vacacion, 0, 10)}" required>
                <div class="invalid-feedback">Por favor, ingrese la fecha de fin de las vacaciones.</div>
            </div>
            
            <div class="form-group">
                <label for="total_dias_vacacion" class="form-label">Total de vacaciones</label>
                <input class="form-control" type="number" id="total_dias_vacacion" name="total_dias_vacacion" value="${vacacion.total_dias_vacacion}" required>
                <div class="invalid-feedback">Por favor, ingrese el total de días de vacaciones.</div>
            </div>
            
            <div class="form-group">
                <label for="vacacion_aprobado" class="form-label">Vacaciones aprobadas</label>
                <input class="form-control" type="text" id="vacacion_aprobado" name="vacacion_aprobado" value="${vacacion.vacacion_aprobado}" required>
                <div class="invalid-feedback">Por favor, indique si las vacaciones están aprobadas.</div>
            </div>

            <div class="d-flex justify-content-between mt-4">
                <button class="btn btn-success" type="submit">Guardar</button>
                <button class="btn btn-danger" type="button" onclick="window.location.href='/bdrrhh-web-noct/vacaciones/findAll'; return false;">Cancelar</button>
            </div>
        </form>
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
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>

    <!-- Validación del formulario -->
    <script>
        (() => {
            'use strict';
            const forms = document.querySelectorAll('.needs-validation');
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
</body>
</html>
