<%-- 
    Document   : campo5
    Created on : 12/07/2023, 12:54:06 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La foquita</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="css/campo5.css">
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
                    <h2 class="text-center">CAMPO <strong>5</strong></h2>
                </div>
            </div>
            <div class="row mt-3 mb-4">
                <div class="col-lg-6 d-flex align-items-center">
                    <h3 class="lh-sm">
                        El fútbol 6 es un campo pequeño a pesar que el campo 5 es aun más. Este campo cuenta con las siguientes medidas: Medida de 20 x 40 metros.
           
                    </h3>
                </div>
                <div class="col-lg-6 d-flex align-items-center">
                    <img src="imagenes/campo5.png" class="w-10000"/>
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
