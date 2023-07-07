<%-- 
    Document   : index
    Created on : 04/07/2023, 11:35:51 AM
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
    <link rel="stylesheet" type="text/css" href="css/principal.css">
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
                <a class="nav-link" href="#HOME">HOME</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#ACERCA">ACERCA DE NOSOTROS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#CAMPOS">CAMPOS</a>
              </li>
              <li class="nav-item">
                <a class="nav-link me-3" href="ubicanos.jsp">UBICACION</a>
              </li>
             
            </ul>
          </div>
        </div>
      </nav>
    <!--NAVBAR-->
    
    
  <section class="home" id="HOME">

      <img class="imgP" src="imagenes/img-home.png" alt="alt"/>
      
        <div class="portada">
            <h1> <strong>BIENVENIDO </strong>  </h1> <br>
           <h1> <strong>ALQUILA TU <span>CAMPO DEPORTIVO</span> </strong> </h1> <br>
          
        </div>
      
         <img class="img-pelota" src="imagenes/pelota-navbar.png" alt="alt"/>
  </section>

        
    <section class="acerca" id="ACERCA">
        
        <div class="acerca-contenedor">
            <h2><strong> LA FOQUITA </strong></h2>
            <h3>
            Bienvenidos a La Foquita, tu lugar de encuentro para el deporte y la diversión.
            En La Foquita, nos enorgullece ofrecer instalaciones de primera clase que cumplen con los más altos estándares de calidad.
            Nuestras canchas cuentan con césped sintético de última tecnología, que garantiza un juego fluido y seguro para todos los jugadores.
            Además, disponemos de iluminación de vanguardia que permite disfrutar de partidos emocionantes incluso en horarios nocturnos.</h3>
            <h3>En La Foquita, no solo nos preocupamos por brindar un espacio físico excepcional. También nos esforzamos por crear un ambiente 
            acogedor y amigable para nuestros clientes.
            Ya sea que estés buscando organizar un partido amistoso con tus amigos, participar en una liga local o simplemente disfrutar 
            de una tarde de diversión en familia.</h3>  
        
        </div>
        <div class="imagen-acerca">
        <img src="imagenes/img-acerca.jpg" alt="">
    </div>
        
    </section>
    
    <section class="campos" id="CAMPOS">
 
        
 <div class="card" style="width: 18rem;">
 <h5 class="title"> <strong> CAMPO 1 </strong> </h5>
 <a href="campo1.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
      <h5 class="card-title">  <strong> N° <span> JUGADORES </span>11 </strong> </h5>
    <p class="card-text"> <strong>DIA  <img src="imagenes/dia11.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche11.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
  <div class="card" style="width: 18rem;">
   <h5 class="title"> <strong> CAMPO 2 </strong> </h5>
  <a href="campo2.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>9 </strong></h5>
      <p class="card-text"> <strong>DIA  <img src="imagenes/dia9.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche9.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
   <div class="card" style="width: 18rem;">
     <h5 class="title"> <strong> CAMPO 3 </strong> </h5>
  <a href="campo3.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>8</strong></h5>
     <p class="card-text"> <strong>DIA  <img src="imagenes/dia8.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche8.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
  <div class="card" style="width: 18rem;">
  <h5 class="title"> <strong> CAMPO 4 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>7 </strong></h5>
   <p class="card-text"> <strong>DIA  <img src="imagenes/dia7.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche7.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
   <div class="card" style="width: 18rem;">
    <h5 class="title"> <strong> CAMPO 5 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>6 </strong></h5>
    <p class="card-text"> <strong>DIA  <img src="imagenes/dia6.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche6.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
    <div class="card" style="width: 18rem;">
      <h5 class="title"> <strong> CAMPO 6 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>5</strong></h5>
   <p class="card-text"> <strong>DIA  <img src="imagenes/dia5.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche5.png" class="img-horario" alt="">   </strong></p>
    <a href="#" class="btn btn-primary">RESERVAR</a>
  </div>
</div>
        
          
          
        
    </section>
    
        
         <div class="inferior">
            <h2> <strong> <span>¡HARTO CHOCOLATE </span> Y BUEN FULBITO!</strong> </h2>
        </div>
    
    
     
         <div class="footer">
             <div class="redes"> 
                 <h3> <strong>redes sociales </strong> </h3>
                 <a > <img><img src="imagenes/xdig.png" alt=""> </a>
               <a> <img><img src="imagenes/facexd.png" alt=""> </a>
               <a > <img><img src="imagenes/tiktokxd.png" alt=""> </a>
             
             </div>
            
             <div class="copyright">
                 <h3> <strong> © copyright @2023 by Campos Deportivos </strong> </h3>
             </div>
             
        </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
