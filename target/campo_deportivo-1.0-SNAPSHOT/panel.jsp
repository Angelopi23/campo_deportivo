<%@page import="principal.enviaReser" %>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page import="java.util.HashMap" %>
<%@page import="principal.tipoTurno1" %>
<%@page import="principal.tipoTurno2" %>
<%@page import="principal.tipoTurno3" %>
<%@page import="principal.tipoTurno4" %>
<%@page import="principal.tipoTurno5" %>
<%@page import="principal.tipoTurno6" %>
<%@page import="principal.tipoHoras" %>
<%@page import="principal.tipoHorarios" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La foquita</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
        <link rel="stylesheet" type="text/css" href="css/panel.css">
        <link rel="shortcut icon" href="imagenes/favicon.jpg" type="image/x-icon">
    </head>
    <body>

        <!--NAVBAR  bOOSTRAP-->
        <nav class="navbar navbar-expand-xl" id="navbar">
            <div class="container">
                <a class="navbar-brand"  id="logo">PANEL <img src="imagenes/pelota-navbar.png" class="img-navbar" alt="">   <span> ADMINISTRATIVO </span> </a>


                <!-- Icono de persona -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="person_icon" style="width: 40px; height: 40px; overflow: hidden; background-size: cover;">
                                    <img src="imagenes/icono-person.png" style="max-width: 100%; height: auto;" alt="alt"/>
                                </div>
                            </a>    
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                                <li><a class="dropdown-item" href="#">ADMINISTRADOR:<span id="usuario">${usuario}</span></a></li>
                                <li><a class="dropdown-item" href="controlador?accion=Salir">Cerrar sesión</a></li>


                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--NAVBAR-->
        
        
        
        
         <div  class="titulo">
     <h1> <strong>PEDIDOS REALIZADOS </strong> </h1>
           </div>
     
        <h2>hola bienvenido ${usuario} </h2>         
        
        
        
        <table class="table table-striped table-inverse table-responsive table-dark">
            <thead class="thead-responsive">
                <tr>
                  
                    <th>N° Campo Seleccionado</th> 
                    <th>nombres</th>    
                    <th>apellidos</th> 
                    <th>dni</th> 
                    <th>celular</th> 
                    <th>turno</th> 
                    <th>horas</th> 
                    <th>total_pagar</th> 
                    <th>fecha</th> 
                    <th>horario</th> 
                    <th>forma_pago</th> 
                    <th>Captura de la imagen</th> 
                 
                </tr>   
            </thead>
            <tbody id="tbl_reservas">
               
                <%
                enviaReser enviareser= new  enviaReser();
                DefaultTableModel tabla = new DefaultTableModel();    
                tabla = enviareser.leer();
                for (int t=0;t<tabla.getRowCount();t++){
                    out.println("<tr data-id=" + tabla.getValueAt(t,0) + "data-id_h=" + tabla.getValueAt(t,8) + "data-id_ho=" + tabla.getValueAt(t,12) + " >");
                    out.println("<td>" + tabla.getValueAt(t,1) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,2) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,3) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,4) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,5) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,6) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,7) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,9) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,10) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,11) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,13) + "</td>");
                    out.println("<td>" + tabla.getValueAt(t,14) + "</td>");

                     out.println("</tr>");
                    }
                %>
                
            </tbody>
  
        </table>  
        
        
        
        
        
        
        
        
       
        
        
     <!--prueba
     <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="m-2 bg-white">
                        <form class="p-3">
                            <div class="datos">
                                <label for="nombre">Nombre:</label>
                                <input type="text" id="nombre" name="nombre" disabled>
                            </div>
                            <div class="datos">
                                <label for="apellido">Apellido:</label>
                                <input type="text" id="apellido" name="apellido" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="dni">DNI:</label>
                                <input type="text" id="dni" name="dni" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="numero">Número:</label>
                                <input type="text" id="numero" name="numero" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="fecha">Fecha:</label>
                                <input type="text" id="fecha" name="fecha" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="horas">Horas en cancha:</label>
                                <input type="text" id="horas" name="horas" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="campo">Número de campo:</label>
                                <input type="text" id="campo" name="campo" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="precio">Precio total:</label>
                                <input type="text" id="precio" name="precio" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="metodo">Método de pago:</label>
                                <input type="text" id="metodo" name="metodo" disabled><br>
                            </div>
                            <div class="estado rounded-2">
                                <label for="metodo">Estado:</label>
                                <input type="text" id="metodo" name="metodo" disabled>
                            </div>
                            <div class="p-3">
                                <button type="button" class="rounded-2 btn btn-warning">Actualizar</button>
                                <button type="button" class="rounded-2 btn btn-danger">Eliminar</button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="m-2 bg-white">
                        <form class="p-3">
                            <div class="datos">
                                <label for="nombre">Nombre:</label>
                                <input type="text" id="nombre" name="nombre" disabled>
                            </div>
                            <div class="datos">
                                <label for="apellido">Apellido:</label>
                                <input type="text" id="apellido" name="apellido" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="dni">DNI:</label>
                                <input type="text" id="dni" name="dni" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="numero">Número:</label>
                                <input type="text" id="numero" name="numero" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="fecha">Fecha:</label>
                                <input type="text" id="fecha" name="fecha" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="horas">Horas en cancha:</label>
                                <input type="text" id="horas" name="horas" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="campo">Número de campo:</label>
                                <input type="text" id="campo" name="campo" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="precio">Precio total:</label>
                                <input type="text" id="precio" name="precio" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="metodo">Método de pago:</label>
                                <input type="text" id="metodo" name="metodo" disabled><br>
                            </div>
                            <div class="estado rounded-2">
                                <label for="metodo">Estado:</label>
                                <input type="text" id="metodo" name="metodo" disabled>
                            </div>
                            <div class="p-3">
                                <button type="button" class="rounded-2 btn btn-warning">Actualizar</button>
                                <button type="button" class="rounded-2 btn btn-danger">Eliminar</button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="m-2 bg-white">
                        <form class="p-3">
                            <div class="datos">
                                <label for="nombre">Nombre:</label>
                                <input type="text" id="nombre" name="nombre" disabled>
                            </div>
                            <div class="datos">
                                <label for="apellido">Apellido:</label>
                                <input type="text" id="apellido" name="apellido" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="dni">DNI:</label>
                                <input type="text" id="dni" name="dni" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="numero">Número:</label>
                                <input type="text" id="numero" name="numero" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="fecha">Fecha:</label>
                                <input type="text" id="fecha" name="fecha" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="horas">Horas en cancha:</label>
                                <input type="text" id="horas" name="horas" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="campo">Número de campo:</label>
                                <input type="text" id="campo" name="campo" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="precio">Precio total:</label>
                                <input type="text" id="precio" name="precio" disabled><br>
                            </div>
                            <div class="datos">
                                <label for="metodo">Método de pago:</label>
                                <input type="text" id="metodo" name="metodo" disabled><br>
                            </div>
                            <div class="estado rounded-2">
                                <label for="metodo">Estado:</label>
                                <input type="text" id="metodo" name="metodo" disabled>
                            </div>
                            <div class="p-3">
                                <button type="button" class="rounded-2 btn btn-warning">Actualizar</button>
                                <button type="button" class="rounded-2 btn btn-danger">Eliminar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    -->

        <div class="inferior">
            <h2> <strong> <span>¡HARTO CHOCOLATE </span> Y BUEN FULBITO!</strong> </h2>
        </div>



<script>
    // Obtén el elemento span que contiene el nombre de usuario
    var usuarioElement = document.getElementById('usuario');
    // Convierte el texto del nombre de usuario a mayúsculas
    var nombreUsuario = usuarioElement.textContent.toUpperCase();
    // Asigna el texto en mayúsculas al elemento span
    usuarioElement.textContent = nombreUsuario;
</script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
