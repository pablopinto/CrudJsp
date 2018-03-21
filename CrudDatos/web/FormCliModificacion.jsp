<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/empleadosmysql?zeroDateTimeBehavior=convertToNull", "root", "root");

            String actualiza = "Update empleado set nombre = ? ,apellido = ?, telefono = ?,codProyecto=? WHERE codigoCliente=1";
            PreparedStatement s = conexion.prepareStatement(actualiza);

            s.setString(1, request.getParameter("nombre"));
            s.setString(2, request.getParameter("apellido"));
            s.setInt(3, Integer.parseInt(request.getParameter("telefono")));
            s.setString(4, request.getParameter("direccion"));
            s.setInt(5, Integer.parseInt(request.getParameter("codProyecto")));
            s.executeUpdate();

            request.setCharacterEncoding("UTF-8");

            conexion.close();

        %>
        <script>document.location = "pideNumSocioModificacion.jsp"</script>
    </body>
</html>