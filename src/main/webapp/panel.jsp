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
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="person_icon" style="width: 40px; height: 40px; overflow: hidden; background-size: cover;">
                                    <img src="imagenes/icono-person.png" style="max-width: 100%; height: auto;" alt="alt"/>
                                </div>
                            </a>    
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Perfil</a></li>
                                <li><a class="dropdown-item" href="#">Cerrar sesión</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!--NAVBAR-->

        <div class="container">
            <div class="row">
                <div class="col-4 bg-white"><div class="person-icon"></div></div>
                <div class="col-4 bg-white"><div class="person-icon"></div></div>
                <div class="col-4 bg-white"><div class="person-icon"></div></div>
            </div>
        </div>

        <div class="inferior">
            <h2> <strong> <span>¡HARTO CHOCOLATE </span> Y BUEN FULBITO!</strong> </h2>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
