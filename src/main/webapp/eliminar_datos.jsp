<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
    // Aquí debes establecer la conexión con la base de datos y ejecutar la consulta DELETE
    try {
        // Establecer la conexión con la base de datos (reemplaza "usuario", "contraseña" y "nombre_bd" con tus datos)
        String url = "jdbc:mysql://localhost:3306/campo_deportivo";
        String usuario = "root";
        String contraseña = "";
        Connection conexion = DriverManager.getConnection(url, usuario, contraseña);

        // Consulta DELETE para eliminar todos los datos de la tabla "reservas"
        String query = "DELETE FROM reservas";
        PreparedStatement pst = conexion.prepareStatement(query);
        pst.executeUpdate();
        
        // Cerrar la conexión con la base de datos
        conexion.close();
    } catch (SQLException e) {
        e.printStackTrace();
        response.sendError(500, "Error al eliminar los datos");
    }
%>
    </body>
</html>
