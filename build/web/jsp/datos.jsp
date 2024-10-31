<%-- 
    Document   : datos
    Created on : 28/10/2024, 05:52:07 PM
    Author     : RUFINA RUIZ
--%>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Datos JSTL</title>
            <style>
        .form-container {
            margin-bottom: 20px;
        }
    </style>
    </head>
    <body>


<div class="form-container">
    <h1>Formulario de Pedido de Comidass</h1>
    <!-- El formulario envía los datos a procesarC.jsp -->
    <form method="POST" action="procesarC.jsp">
        <div class="form-group">
            <label>Nombre del Platillo:</label>
            <input type="text" name="platillo" id="platillo" required />
        </div>
        <div class="form-group">
            <label>Cantidad de Platillos:</label>
            <input type="number" name="cantidadPlatillos" id="cantidadPlatillos" min="1" required />
        </div>
        <div class="form-group">
            <label>Precio total del pedido:</label>
            <input type="number" step="0.01" name="precio" id="precio" required />
        </div>
        <div class="form-group">
            <label>Dirección de Entrega del pedido:</label>
            <input type="text" name="direccion" id="direccion" required />
        </div>
        <div class="form-group">
            <label>Fecha del Pedido:</label>
            <input type="date" name="fechaPedido" id="fechaPedido" required />
        </div>
        <div class="form-group">
            <label>Hora del Pedido:</label>
            <input type="time" name="horaPedido" id="horaPedido" required />
        </div>
        <div class="form-group">
            <input type="submit" value="Realizar Pedido" />
        </div>
    </form>
</div>
    </body>
</html>