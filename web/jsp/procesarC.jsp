<%@ page language="java" contentType="text/html;charset=UTF-8" import="java.util.*" session="true" %>

<%
    // Inicializar la lista de pedidos en la sesión si es la primera vez
    ArrayList<Map<String, String>> pedidos = (ArrayList<Map<String, String>>) session.getAttribute("pedidos");

    if (pedidos == null) {
        pedidos = new ArrayList<>();
        session.setAttribute("pedidos", pedidos);
    }

    // Obtener parámetros del formulario
    String platillo = request.getParameter("platillo");
    String cantidadPlatillos = request.getParameter("cantidadPlatillos");
    String precio = request.getParameter("precio");
    String direccion = request.getParameter("direccion");
    String fechaPedido = request.getParameter("fechaPedido");
    String horaPedido = request.getParameter("horaPedido");

    // Si se ingresaron los datos del pedido, agregar a la lista
    if (platillo != null && !platillo.isEmpty()) {
        Map<String, String> nuevoPedido = new HashMap<>();
        nuevoPedido.put("platillo", platillo);
        nuevoPedido.put("cantidadPlatillos", cantidadPlatillos);
        nuevoPedido.put("precio", precio);
        nuevoPedido.put("direccion", direccion);
        nuevoPedido.put("fechaPedido", fechaPedido);
        nuevoPedido.put("horaPedido", horaPedido);

        // Agregar el nuevo pedido a la lista en la sesión
        pedidos.add(nuevoPedido);
        session.setAttribute("pedidos", pedidos);
    }

    // Redirigir a cosas.jsp para mostrar la tabla con los pedidos
    response.sendRedirect("cosas.jsp");
%>
