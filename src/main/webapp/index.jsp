
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
                <a class="nav-link" href="#HOME">INICIO</a>
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

    
      
        <div class="portada">
            <h1> <strong>BIENVENIDO </strong>  </h1> <br>
           <h1> <strong>ALQUILA TU <span>CAMPO DEPORTIVO</span> </strong> </h1> <br>
          
        </div>
      
         <img class="img-pelota" src="imagenes/pelota-navbar.png" alt="alt"/>
  </section>

        
    <section class="acerca" id="ACERCA">
        
              <div class="acerca-contenedor">
        <div class="container">
            <div class="row">
                <div class="col">
                   <h2><strong> LA FOQUITA </strong></h2>
                </div>
            </div>
            <div class="row mt-3 mb-4">
                <div class="col-lg-5 d-flex align-items-center">
                     
                     <h3>
            Bienvenidos a La Foquita, tu lugar de encuentro para el deporte y la diversión.
            En La Foquita, nos enorgullece ofrecer instalaciones de primera clase que cumplen con los más altos estándares de calidad.
            Nuestras canchas cuentan con césped sintético de última tecnología, que garantiza un juego fluido y seguro para todos los jugadores.
            Además, disponemos de iluminación de vanguardia que permite disfrutar de partidos emocionantes incluso en horarios nocturnos.
            </h3>

                </div>
                <div class="col-lg-7 d-flex align-items-center">
                    <img src="imagenes/img-acerca.jpg" alt="">
                </div>
            </div>
        </div>
        
        
  
      
    </div>
        
    </section>
    
    
                                                                 <!--CAMPOS-->
    
    <section class="campos" id="CAMPOS">
 <div class="campos-contenedor">    
 
     
     
     <div class="card" style="width: 18rem;">
 <h5 class="title"> <strong> CAMPO 1 </strong> </h5>
 <a href="campo1.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
      <h5 class="card-title">  <strong> N° <span> JUGADORES </span>11 </strong> </h5>
    <p class="card-text"> <strong>DIA  <img src="imagenes/dia11.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche11.png" class="img-horario" alt="">   </strong></p>
   <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva" data-bs-toggle="modal">RESERVAR</button>
                                             

                                       <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="ReservaServlet" method="post">
          
        <label class="seleccion" for="usuario">CAMPO SELECCIONADO 1</label>
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="" pattern="[a-zA-Z]+">  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
        
        
        <label for="usuario">TURNO</label>
      <select id="turno" name="turno" onchange="calcularTotal()">
           <option value="150">Dia</option>
          <option value="200">Noche</option>
       </select>
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas" name="horas" onchange="calcularTotal()" >
          <option value="1">1 hora</option>
          <option value="2">2 horas</option>
          <option value="3">3 horas</option>
          <option value="4">4 horas</option>
          <option value="5">5 horas</option>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="horario" >
          <option value="">10 AM</option>
          <option value="">11 AM</option>
          <option value="">12 PM</option>
          <option value="">1 PM</option>
          <option value="">2 PM</option>
       </select>
       
       <div class="F-pago">
       <label for="usuario"  id="forma-pago-label">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox"  disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
       <button type="button" class="btn btn-yape" data-bs-toggle="modal"  data-bs-target="#modalyape"  onclick="marcarCheckbox()">  
           <img src="imagenes/yape.png" alt="">
       </button>
  
       <button type="button" class="btn btn-plin" data-bs-toggle="modal" data-bs-target="#modalplin" onclick="marcarCheckbox()">   
           <img src="imagenes/plini.png" alt=""> 
       </button>
       
       <button type="button" class="btn btn-efetivo" data-bs-target="#" onclick="marcarCheckbox()">   
           <img src="imagenes/efectivo.jpg" alt=""> 
       </button>
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen" name="imagen">
       
      </form>   

        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
            <button type="button" class="btn btn-primary" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape" aria-hidden="true" aria-labelledby="modalyapeLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalyapeLabel2">PAGO CON YAPE</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         <img src="imagenes/qryape.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin" aria-hidden="true" aria-labelledby="modalplinLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalplinLabel2">PAGO CON PLIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <img src="imagenes/qrplin.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>

                                 
      

        
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
        
    
    
 <script>
     //DNI Y CELULAR PARA LIMITAR
function limitarDNI(input) {
  input.value = input.value.replace(/[^0-9]/g, '').slice(0, 8);
}
  function limitarCEL(input) {
  input.value = input.value.replace(/[^0-9]/g, '').slice(0, 9);
}

//CALCULANDO TOTAL DEL PAGO
function calcularTotal() {
    var turnos = parseInt(document.getElementById("turno").value);
    var horas = parseInt(document.getElementById("horas").value);
    
    var Monto = turnos * horas;
    var totalPagar = "S/." + Monto; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar").value = totalPagar;
    }
    
    
 // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha").setAttribute("min", fechaActual);    
  
function marcarCheckbox() {
  const checkbox = document.getElementById("forma-pago-checkbox");
  checkbox.checked = true;
}

  function confirmaR() {

 Swal.fire({
        title: 'Reserva confirmada',
        icon: 'success',
        position: 'center',
        timer: 2000,
        showConfirmButton: false
      }).then(function() {
      // Redirigir a la pantalla principal
      window.location.href = 'index.jsp';
    });
}
  
</script>  
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
