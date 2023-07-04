<%-- 
    Document   : ubicanos
    Created on : 04/07/2023, 11:37:11 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La foquita</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="css/ubicanos.css">
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
                <a class="nav-link me-3" href="#CONTACTAME">UBICACION</a>
              </li>
             
            </ul>
          </div>
        </div>
      </nav>
    <!--NAVBAR-->
        
        
    <section class="ubicar" >
          <img class="imgU" src="imagenes/fondo-ubicanos.png" alt="alt"/>
        
        <h2> <strong> Donde <span>estamos:</span></strong> </h2>  
        <div class="ubicar-contenedor">
        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1894.3053436474331!2d-76.95610495576034!3d-12.205870858273327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2spe!4v1688359106724!5m2!1ses-419!2spe" 
                width="700" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        
                <div class="detalle-contenedor" >
                <div class="detalle">
                    
                    <div class="derecha">
                        <h4> <strong>UBICACION</strong> </h4>
                        <p>Av. Mariano Pastor Sevilla, AL COSTADO DE LA </p>
                        <p> I.E. 7094 Sasakawa -VILLA EL SALVADOR. lima, perú</p>
                    </div>
                    <br>
                  
                   
                    <div class="derecha">
                        <h4> <strong> HORARIOS </strong></h4>
                         <p>lunes, martes, miercoles, jueves, viernes 6:00 a 0:00 AM</p>
                         <p> SABADO, DOMINGO 6:00 A 0:00 AM</p>
                         <p>FERIADOS: 6:00 A 0:00 AM</p>
                    </div>
                    
                </div>        
                </div>
                </div> 
    </section>   
        
        
        
        
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
