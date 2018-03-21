
<%-- 
    Document   : index
    Created on : 08-mar-2018, 12:40:16
    Author     : 6001018
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estiloFormulario.css">
        <title>Listado Empleados</title>
    </head>
    <body background="Imagenes/fondo2.jpg">
        <h1>Listado de Empleados</h1>

        <display:table name="listaCliente" id="lista" class ="table table-hover">
            <display:column title="NOMBRE" property="nombre"></display:column>
            <display:column  title="APELLIDO" property="apellido"/>
            <display:column  title="TELEFONO" property="telefono"/>
            <display:column  title="DIRECCION" property="direccion"/>
            <display:column title="PROYECTO" property="proyecto"/>
        </display:table>


        <form method="post" action="FormCli.jsp">
            <button type="button submit" class="btn btn-primary boton">Añadir</button>
        </form>
        <form method="post" action="FormCliBaja.jsp">
            <button type="button submit" class="btn btn-danger boton">Eliminar</button>
        </form>
        <form method="post" action="pideNumSocioModificacion.jsp">
            <button type="button submit" class="btn btn-warning boton">Modificar</button>
        </form>
    </body>
</body>
</html>