<%-- 
    Document   : main
    Created on : 20/10/2024, 09:30:59 PM
    Author     : ALEJANDRO DIAZ RUIZ
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="header.jsp" %>

<%-- Bloque JSP para preparar la lista de elementos --%>
<%
    // Simulando una lista de elementos en el servidor
    List<String> items = new ArrayList<>();
    items.add("Elemento 1");
    items.add("Elemento 2");

    int age = 10;
    request.setAttribute("age", age);

    // Guardando la lista en el objeto request para que sea accesible en JSP
    request.setAttribute("itemList", items);

// Crear una matriz bidimensional (array de arrays) en el lado del servidor
    String[][] matriz = {
        {"Nombre", "Edad", "Ciudad"},
        {"Juan", "25", "Madrid"},
        {"Ana", "30", "Barcelona"},
        {"Pedro", "35", "Valencia"}
    };

    // Pasar la matriz como un atributo de solicitud
    request.setAttribute("matrizDatos", matriz);
%>

<style>
    table {
        width: 50%;
        border-collapse: collapse;
    }
    table, th, td {
        border: 1px solid black;
    }
    th, td {
        padding: 8px;
        text-align: center;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
<body>
    <section>
        <h2>Listado de Elementos</h2>

        <c:choose>
            <c:when test="${empty itemList}">
                <p>No hay elementos disponibles en este momento.</p>
            </c:when>
            <c:otherwise>
                <ul>
                    <c:forEach var="item" items="${itemList}">
                        <li>${item}</li>
                        </c:forEach>
                </ul>
            </c:otherwise>
        </c:choose>

        <!-- Bloque condicional múltiple -->
        <c:choose>
            <c:when test="${age >= 18}">
                <p>Eres mayor de edad.</p>
            </c:when>
            <c:otherwise>
                <p>No eres mayor de edad.</p>
            </c:otherwise>
        </c:choose>

        <!-- Ciclo -->
        <c:forEach var="number" begin="1" end="5">
            <p>Número: ${number}</p>
        </c:forEach>

        <!-- Condición -->    
        <c:choose>
            <c:when test="${user.role == 'admin'}">
                <p>Bienvenido, Administrador.</p>
            </c:when>
            <c:when test="${user.role == 'user'}">
                <p>Bienvenido, Usuario.</p>
            </c:when>
            <c:otherwise>
                <p>Bienvenido, Invitado.</p>
            </c:otherwise>
        </c:choose>

        <h2>Tabla Generada desde una Matriz usando JSTL</h2>

        <!-- Generar la tabla usando JSTL -->
        <table>
            <c:forEach var="fila" items="${matrizDatos}">
                <tr>
                    <!-- Iterar sobre cada elemento de la fila -->
                    <c:forEach var="columna" items="${fila}">
                        <td>${columna}</td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

        <!--muestra el valor de una variable o expresión. -->
        <c:out value="${user.name}" />

        <!--Divide una cadena en "tokens" con un delimitador específico y los itera. -->
        <c:forTokens items="apple,banana,grape" delims="," var="fruit">
            <p>${fruit}</p>
        </c:forTokens>

        <!--Asigna un valor a una variable en el ámbito especificado. -->
        <c:set var="userAge" value="25" scope="session" />

        <!--Elimina un atributo de un ámbito específico (por ejemplo, sesión, request, página -->
        <c:remove var="userAge" scope="session" />

    </section>


</body>
<section>
</section>
