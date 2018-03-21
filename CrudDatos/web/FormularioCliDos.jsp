<%-- 
    Document   : formularioCliente
    Created on : 08-mar-2018, 13:21:08
    Author     : 6001018
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="estiloFormulario.css">
    </head>
    <h2 class=" text-center titulo">Introduzca los datos del nuevo cliente:</h2>
    <body>
 
        
        <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm">
                <form class="form-horizontal" method="post" action="AltaServlet">
                    <fieldset>
                        <legend class="text-center header">Informacion Empleado</legend>
                        <div class="form-group centrado">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="nombre" name="nombre" type="text" autocomplete="off" placeholder="Nombre" class="form-control" value="${cliente.nombre}" >
                            </div>
                        </div>
                        <div class="form-group centrado">
                            <span class="col-md-1 col-md-offset-4 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="apellido" name="apellido" type="text" autocomplete="off" placeholder="Apellido" class="form-control" value="${cliente.apellido}">
                            </div>
                        </div>
                        <div class="form-group centrado">
                            <span class="col-md-1 col-md-offset-4 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="telefono" name="telefono" type="text" autocomplete="off" placeholder="Nº Telefono" class="form-control" value="${cliente.telefono}">
                            </div>
                        </div>
                        <div class="form-group centrado">
                            <span class="col-md-1 col-md-offset-4 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="direccion" name="direccion" type="text" autocomplete="off" placeholder="Direccion" class="form-control" value="${cliente.direccion}">
                            </div>
                        </div>
                        <div class="form-group centrado">
                            <span class="col-md-1 col-md-offset-4 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-10">
                                <input id="codProyecto" name="codProyecto" type="text" autocomplete="off" placeholder="Codigo Proyecto" class="form-control" value="${cliente.proyecto}">
                            </div>
                        </div>
                        <div class="form-group boton">
                            <div class="col-md-1 text-center">
                                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
      
        
        
        <!--
        <form method="post" action="AltaServlet">
            Nombre <input type="text" name="nombre"/></br>
            Apellido <input type="text" name="apellido"/></br>
            Telefono <input type="text" name="telefono"/></br>
            Direccion <input type="text" name="direccion"/></br>
            <input type="submit" value="Aceptar">
        </form>
        -->
    </body>
</html>
