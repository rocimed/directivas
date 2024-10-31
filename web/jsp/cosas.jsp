<%-- 
    Document   : main
    Created on : 20/10/2024, 09:30:59 PM
    Author     : ALEJANDRO DIAZ RUIZ
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario de Pedido de Comida</title>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        .button-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<h2>Lista de Pedidos</h2>

<table>
    <tr>
        <th>#</th>
        <th>Platillo</th>
        <th>Cantidad</th>
        <th>Precio</th>
        <th>Dirección</th>
        <th>Fecha</th>
        <th>Hora</th>
    </tr>

    <!-- Usamos JSTL para mostrar la tabla de pedidos -->
    <c:forEach var="pedido" items="${sessionScope.pedidos}" varStatus="status">
        <tr>
            <td>${status.index + 1}</td> <!-- Índice del pedido -->
            <td>${pedido["platillo"]}</td>
            <td>${pedido["cantidadPlatillos"]}</td>
            <td>${pedido["precio"]}</td>
            <td>${pedido["direccion"]}</td>
            <td>${pedido["fechaPedido"]}</td>
            <td>${pedido["horaPedido"]}</td>
        </tr>
    </c:forEach>

    <c:if test="${empty sessionScope.pedidos}">
        <tr>
            <td colspan="7">No se han agregado pedidos todavía.</td>
        </tr>
    </c:if>
</table>

<!-- Botón para regresar a datos.jsp -->
<div class="button-container">
    <form action="datos.jsp" method="get">
        <button type="submit">Regresar</button>
    </form>
</div>

</body>
</html>
