<%-- 
    Document   : campo1
    Created on : 7 jul. 2023, 00:29:22
    Author     : 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La foquita</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="css/campo123.css">
    <link rel="shortcut icon" href="imagenes/favicon.jpg" type="image/x-icon">
    </head>
    <body>
       
        <!--NAVBAR  bOOSTRAP-->
    <nav class="navbar navbar-expand-xl fixed-top" id="navbar">
        <div class="container">
            <a class="navbar-brand"  id="logo">CAMPOS <img src="imagenes/pelota-navbar.png" class="img-navbar" alt="">   <span> DEPORTIVOS </span> </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span><i class="fa-solid fa-bars"></i></span>
          </button>

          <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">HOME</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">ACERCA DE NOSOTROS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="index.jsp">CAMPOS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link me-3" href="ubicanos.jsp">UBICACION</a>
              </li>
             
            </ul>
          </div>
        </div>
      </nav>
    <!--NAVBAR-->
    
    <section class="campo">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h2 class="text-center">CAMPO <strong>1</strong></h2>
                </div>
            </div>
            <div class="row mt-3 mb-4">
                <div class="col-lg-5 d-flex align-items-center">
                    <h3 class="lh-sm">
                        El fútbol 11 es la variante más común y popular del fútbol. Se juega en un campo rectangular con dos equipos de once jugadores cada uno, de ahí su nombre.
                        Estos campos suelen tener medidas estándar, que varían entre 100 y 110 metros de largo y entre 64 y 75 metros de ancho. Además, hay una serie de marcas y líneas en el campo que indican las áreas de juego, como la línea de gol, la línea de medio campo y las áreas de penal.
                    </h3>
                </div>
                <div class="col-lg-7 d-flex align-items-center">
                    <img src="imagenes/campo1.png" class="w-100"/>
                </div>
            </div>
        </div>
    </section>
        

        
   
    
        
         <div class="inferior">
            <h2> <strong> <span>¡HARTO CHOCOLATE </span> Y BUEN FULBITO!</strong> </h2>
        </div>

        

        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
