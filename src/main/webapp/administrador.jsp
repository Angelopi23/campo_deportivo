<%-- 
    Document   : administrador
    Created on : 7 jul. 2023, 18:11:45
    Author     : Angelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
        <link rel="stylesheet" type="text/css" href="css/administrador.css">
        <link rel="shortcut icon" href="imagenes/favicon.jpg" type="image/x-icon">
    </head>
    <body>
        
    <!--NAVBAR  bOOSTRAP-->
    <nav class="navbar navbar-expand-xl fixed-top" id="navbar">
        <div class="container">
            <a class="navbar-brand"  id="logo">CAMPOS <img src="imagenes/pelota-navbar.png" class="img-navbar" alt="">   <span> DEPORTIVOS </span> </a>
        </div>
      </nav>
    <!--NAVBAR-->
    
    
        <div class="container main">
     <form action="controlador" >
            <div class="row">
                <div class="col-md-6 side-image img-form">
                    <!-------Image-------->        
                </div>
                
                <div class="col-md-6 right">
                     <div class="input-box">
                        <header>Iniciar Sesión</header>
                        <div class="input-field">
                            <input type="text" class="input" id="usuario" name="usuario" required autocomplete="off">
                            <label for="usuario">Usuario</label>
                        </div>
                        <div class="input-field">
                            <input type="password" class="input" id="password" name="password" required>
                            <label for="password">Contraseña</label>
                        </div>
                        <div class="input-field">
                            <input type="submit" class="submit" name="accion" value="Ingresar">
                            
                        </div>
                     </div>
                </div>
            </div>
                 
      </form>
        </div>
    
         <div class="inferior">
            <h2> <strong> <span>¡HARTO CHOCOLATE </span> Y BUEN FULBITO!</strong> </h2>
        </div>

     

        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
