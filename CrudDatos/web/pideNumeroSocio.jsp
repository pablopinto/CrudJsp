<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estilos.css" />
    </head>
    
    <body background="Imagenes/fondo2.jpg">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/empleadosmysql?zeroDateTimeBehavior=convertToNull", "root", "root");
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM empleado");
        %>
        <table class ="table table-hover">
            <tr><th>Código</th><th>Nombre</th><th>Apellido</th><th>Telefono</th><th>Direccion</th></tr>
                <%
                    while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("codigoCliente") + "</td>");
                        out.println("<td>" + listado.getString("nombre") + "</td>");
                        out.println("<td>" + listado.getString("apellido") + "</td>");
                        out.println("<td>" + listado.getInt("telefono") + "</td>");
                        out.println("<td>" + listado.getString("direccion") + "</td>");
                %>
                <td>
                    <form method="get" action="FormCliBaja.jsp">
                        <input type="hidden" name="codigo" value="<%=listado.getString("codigoCliente")%>"/>
                        <button type="button submit" class="btn btn-danger btn-sm boton">Borrar</button>
                    </form>
                </td></tr>
                <%
                    } // while
                    conexion.close();
                %>
        </table>
        <form method ="post" action="Baja.jsp">
            <button type="button submit" class="btn btn-success boton">Aceptar</button>
        </form>
    </body>
</html>