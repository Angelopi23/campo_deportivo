<%@page import="principal.tipoTurno1" %>
<%@page import="principal.tipoTurno2" %>
<%@page import="principal.tipoTurno3" %>
<%@page import="principal.tipoTurno4" %>
<%@page import="principal.tipoTurno5" %>
<%@page import="principal.tipoTurno6" %>
<%@page import="java.util.HashMap" %>
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
 
     
                                                        <!----------------------CAMPO 1------------------------->
     <div class="card" style="width: 18rem;">
 <h5 class="title"> <strong> CAMPO 1 </strong> </h5>
 <a href="campo1.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
      <h5 class="card-title">  <strong> N° <span> JUGADORES </span>11 </strong> </h5>
    <p class="card-text"> <strong>DIA  <img src="imagenes/dia11.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche11.png" class="img-horario" alt="">   </strong></p>
   <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva" data-bs-toggle="modal" >RESERVAR</button>
                                             

                                       <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 1</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 1" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="" >  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
        
        
        <label for="usuario">TURNO</label>
      <select id="turno" name="id_turno" onchange="calcularTotal()">        
    <%	
   tipoTurno1 tipoturno1=new tipoTurno1();
    HashMap<String,String> drop = tipoturno1.drop_sangre();
  for(String i: drop.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop.get(i)  +"</option>");
  }
 %>
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas" name="id_horas" onchange="calcularTotal()" >
  <%		
   tipoHoras tipohoras=new tipoHoras();
    HashMap<String,String> h = tipohoras.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios=new tipoHorarios();
    HashMap<String,String> horar = tipohorarios.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
       </select>
       
       <div class="F-pago">
       <label for="usuario"  id="forma-pago-label">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape" name="forma_pago" onclick="marcarCheckbox()">
  <label for="yape"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin" name="forma_pago" onclick="marcarCheckbox()">
  <label for="plin"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox()">
  <label for="efectivo"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
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
        
        
        
                                                     <!----------------------CAMPO 2------------------------->
        
        
  <div class="card" style="width: 18rem;">
   <h5 class="title"> <strong> CAMPO 2 </strong> </h5>
  <a href="campo2.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>9 </strong></h5>
      <p class="card-text"> <strong>DIA  <img src="imagenes/dia9.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche9.png" class="img-horario" alt="">   </strong></p>
  <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva2" data-bs-toggle="modal" >RESERVAR</button>
   
                                         <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva2" aria-hidden="true" aria-labelledby="modalreservaLabel2" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle2"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 2</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 2" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="" >  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
       
           <label for="usuario">TURNO</label>
      <select id="turno2" name="id_turno" onchange="calcularTotal2()">        
                  <%	
   tipoTurno2 tipoturno2=new tipoTurno2();
    HashMap<String,String> drop2 = tipoturno2.drop2_sangre();
  for(String i: drop2.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop2.get(i)  +"</option>");
  }
 %>  
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas2" name="id_horas" onchange="calcularTotal2()" >
             <%		
   tipoHoras tipohoras2=new tipoHoras();
    HashMap<String,String> h2 = tipohoras2.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar2" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha2">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario2" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios2=new tipoHorarios();
    HashMap<String,String> horar2 = tipohorarios2.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
</select>
       
       <div class="F-pago">
       <label for="usuario"  id="forma-pago-label2">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox2" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape2" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape2" name="forma_pago" onclick="marcarCheckbox2()">
  <label for="yape2"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin2" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin2" name="forma_pago" onclick="marcarCheckbox2()">
  <label for="plin2"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo2"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox2()">
  <label for="efectivo2"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen2" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
     </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape2" aria-hidden="true" aria-labelledby="modalyapeLabel2" tabindex="-1">
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
          <button class="btn btn-primary" data-bs-target="#modalreserva2" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin2" aria-hidden="true" aria-labelledby="modalplinLabel2" tabindex="-1">
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
          <button class="btn btn-primary" data-bs-target="#modalreserva2" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
   
   
  </div>
</div>
                                                     
                                                        <!----------------------CAMPO 3------------------------->
        
   <div class="card" style="width: 18rem;">
     <h5 class="title"> <strong> CAMPO 3 </strong> </h5>
  <a href="campo3.jsp"><img src="imagenes/campos.png" class="card-img-top" ></a>
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>8</strong></h5>
     <p class="card-text"> <strong>DIA  <img src="imagenes/dia8.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche8.png" class="img-horario" alt="">   </strong></p>
  
    
    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva3" data-bs-toggle="modal" >RESERVAR</button>
   
                                         <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva3" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 3</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 3" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="" >  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
            <label for="usuario">TURNO</label>
      <select id="turno3" name="id_turno" onchange="calcularTotal3()">        
                  <%	
   tipoTurno3 tipoturno3=new tipoTurno3();
    HashMap<String,String> drop3 = tipoturno3.drop3_sangre();
  for(String i: drop3.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop3.get(i)  +"</option>");
  }
 %>  
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas3" name="id_horas" onchange="calcularTotal3()" >
             <%		
   tipoHoras tipohoras3=new tipoHoras();
    HashMap<String,String> h3 = tipohoras3.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar3" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha3">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios3=new tipoHorarios();
    HashMap<String,String> horar3 = tipohorarios3.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
</select>
        
   
       
       <div class="F-pago">
       <label for="forma-pago-checkbox3"  id="forma-pago-label3">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox3" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape3" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape3" name="forma_pago" onclick="marcarCheckbox3()">
  <label for="yape3"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin3" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin3" name="forma_pago" onclick="marcarCheckbox3()">
  <label for="plin3"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo3"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox3()">
  <label for="efectivo3"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen3" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
     </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape3" aria-hidden="true" aria-labelledby="modalyapeLabel3" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalyapeLabel3">PAGO CON YAPE</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         <img src="imagenes/qryape.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva3" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin3" aria-hidden="true" aria-labelledby="modalplinLabel3" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalplinLabel3">PAGO CON PLIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <img src="imagenes/qrplin.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva3" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
    
  </div>
</div>
                                                         <!----------------------CAMPO 4------------------------->
  <div class="card" style="width: 18rem;">
  <h5 class="title"> <strong> CAMPO 4 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>7 </strong></h5>
   <p class="card-text"> <strong>DIA  <img src="imagenes/dia7.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche7.png" class="img-horario" alt="">   </strong></p>
  
    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva4" data-bs-toggle="modal" >RESERVAR</button>
   
                                         <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva4" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 4</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 4" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="">  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
           <label for="usuario">TURNO</label>
      <select id="turno4" name="id_turno" onchange="calcularTotal4()">        
                  <%	
   tipoTurno4 tipoturno4=new tipoTurno4();
    HashMap<String,String> drop4 = tipoturno4.drop4_sangre();
  for(String i: drop4.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop4.get(i)  +"</option>");
  }
 %>  
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas4" name="id_horas" onchange="calcularTotal4()" >
             <%		
   tipoHoras tipohoras4=new tipoHoras();
    HashMap<String,String> h4 = tipohoras4.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar4" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha4">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios4=new tipoHorarios();
    HashMap<String,String> horar4 = tipohorarios4.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
</select>
        
   
       
       <div class="F-pago">
       <label for="forma-pago-checkbox4"  id="forma-pago-label4">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox4" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape4" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape4" name="forma_pago" onclick="marcarCheckbox4()">
  <label for="yape4"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin4" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin4" name="forma_pago" onclick="marcarCheckbox4()">
  <label for="plin4"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo4"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox4()">
  <label for="efectivo4"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen4" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
     </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape4" aria-hidden="true" aria-labelledby="modalyapeLabel4" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalyapeLabel4">PAGO CON YAPE</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         <img src="imagenes/qryape.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva4" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin4" aria-hidden="true" aria-labelledby="modalplinLabel4" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalplinLabel4">PAGO CON PLIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <img src="imagenes/qrplin.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva4" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
    
  </div>
</div>
                                                         
                                                          <!----------------------CAMPO 5------------------------->
           
   <div class="card" style="width: 18rem;">
    <h5 class="title"> <strong> CAMPO 5 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>6 </strong></h5>
    <p class="card-text"> <strong>DIA  <img src="imagenes/dia6.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche6.png" class="img-horario" alt="">   </strong></p>
   
    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva5" data-bs-toggle="modal" >RESERVAR</button>
   
                                         <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva5" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 5</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 5" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="" >  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
           <label for="usuario">TURNO</label>
      <select id="turno5" name="id_turno" onchange="calcularTotal5()">        
                  <%	
   tipoTurno5 tipoturno5=new tipoTurno5();
    HashMap<String,String> drop5 = tipoturno5.drop5_sangre();
  for(String i: drop5.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop5.get(i)  +"</option>");
  }
 %>  
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas5" name="id_horas" onchange="calcularTotal5()" >
             <%		
   tipoHoras tipohoras5=new tipoHoras();
    HashMap<String,String> h5 = tipohoras5.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar5" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha5">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios5=new tipoHorarios();
    HashMap<String,String> horar5 = tipohorarios5.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
</select>
        
   
       
       <div class="F-pago">
       <label for="forma-pago-checkbox5"  id="forma-pago-label5">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox5" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape5" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape5" name="forma_pago" onclick="marcarCheckbox5()">
  <label for="yape5"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin5" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin5" name="forma_pago" onclick="marcarCheckbox5()">
  <label for="plin5"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo5"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox5()">
  <label for="efectivo5"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen5" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
     </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape5" aria-hidden="true" aria-labelledby="modalyapeLabel5" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalyapeLabel5">PAGO CON YAPE</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         <img src="imagenes/qryape.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva5" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin5" aria-hidden="true" aria-labelledby="modalplinLabel5" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalplinLabel5">PAGO CON PLIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <img src="imagenes/qrplin.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva5" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
    
    
  </div>
</div>
                                                          
                                                         <!----------------------CAMPO 6------------------------->
        
    <div class="card" style="width: 18rem;">
      <h5 class="title"> <strong> CAMPO 6 </strong> </h5>
  <img src="imagenes/campos.png" class="card-img-top" >
  <div class="card-body">
    <h5 class="card-title"> <strong> N° <span> JUGADORES </span>5</strong></h5>
   <p class="card-text"> <strong>DIA  <img src="imagenes/dia5.png" class="img-horario" alt="">   </strong> </p>
    <p class="card-text"> <strong> NOCHE  <img src="imagenes/noche5.png" class="img-horario" alt="">   </strong></p>
   
    <!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#mimodal">RESERVAR</button>-->
   <button class="btn btn-primary" data-bs-target="#modalreserva6" data-bs-toggle="modal" >RESERVAR</button>
   
                                         <!--VENTANA MODAL-->
                                       
    <div class="modal fade" id="modalreserva6" aria-hidden="true" aria-labelledby="modalreservaLabel" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
      <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="modalTitle"> <strong><span>RESERVA </span> TU CAMPO </strong> </h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
              
      <form action="sr_reserva" method="post">
          
      <label class="seleccion" for="usuario">CAMPO SELECCIONADO 6</label>
      <input type="text" class="Ncampo" name="campo_seleccionado" value="campo 6" id="campo_seleccionado" hidden> <!--SE MANTIENE OCULTO PARA EL USUARIO, NOS MANDARA A LA BD QUE ES EL N° DE CAMPO -->
      <label  for="usuario">NOMBRES</label>
      <input  class="form"  type="text" name="nombres"  placeholder="Ingrese su nombre" required="">  <!--required para que no envie formulario vacio--> <!--pattern para pedir que llene algo especifico-->
      <label for="usuario">APELLIDOS</label>
      <input class="form" type="text" name="apellidos"  placeholder="Ingrese sus apellidos" required="">
      <label for="usuario">DNI</label>
      <input class="form" type="number" name="dni" placeholder="Ingrese su DNI" required="" oninput="limitarDNI(this)">
       <label for="usuario">NUMERO CELULAR</label>
      <input class="form" type="number" name="celular" placeholder="Ingrese su numero de celular" required="" oninput="limitarCEL(this)">
      
       
        
           <label for="usuario">TURNO</label>
      <select id="turno6" name="id_turno" onchange="calcularTotal6()">        
                  <%	
   tipoTurno6 tipoturno6=new tipoTurno6();
    HashMap<String,String> drop6 = tipoturno6.drop6_sangre();
  for(String i: drop6.keySet()){
  out.println(" <option value='"+ i +"'>"+ drop6.get(i)  +"</option>");
  }
 %>  
       </select>
        
        
        
      <label for="usuario">CUANTAS HORAS DESEAS RESERVAR</label>
       <select id="horas6" name="id_horas" onchange="calcularTotal6()" >
             <%		
   tipoHoras tipohoras6=new tipoHoras();
    HashMap<String,String> h6 = tipohoras6.h_horas();
  for(String i: h.keySet()){
  out.println(" <option value='"+ i +"'>"+ h.get(i)  +"</option>");
  }
 %>
       </select>
      <div class="Total-container">
       <label for="usuario">TOTAL A PAGAR: </label>
       <input  class="TotalPagar" type="text" id="totalPagar6" name="totalPagar" value="${totalPagar}" readonly>
      </div>
        
       <label for="usuario">FECHA</label>
       <input class="form" type="date" name="date" id="fecha6">
       
       <label for="usuario">ELIGE TU HORARIO</label> <br>
       <select id="horario" name="id_horario" >
          
   <%		
   tipoHorarios tipohorarios6=new tipoHorarios();
    HashMap<String,String> horar6 = tipohorarios6.horar_horario();
  for(String i: horar.keySet()){
  out.println(" <option value='"+ i +"'>"+ horar.get(i)  +"</option>");
  }
 %>
</select>
        
   
       
       <div class="F-pago">
       <label for="forma-pago-checkbox6"  id="forma-pago-label6">FORMA DE PAGO</label>
         <div class="form-check">
         <input class="form-check-input" type="checkbox" value="" id="forma-pago-checkbox6" name="F_pago" disabled>
        </div>
         
         </div>
       
       <div class="pago-contenedor" >
    
  <input type="radio" id="yape6" class="btn btn-yape" data-bs-toggle="modal" value="yape" data-bs-target="#modalyape6" name="forma_pago" onclick="marcarCheckbox6()">
  <label for="yape6"><img src="imagenes/yape.png" alt=""></label>
  
  <input type="radio" id="plin6" class="btn btn-plin" data-bs-toggle="modal" value="plin" data-bs-target="#modalplin6" name="forma_pago" onclick="marcarCheckbox6()">
  <label for="plin6"><img src="imagenes/plini.png" alt=""></label> 
           
    <input type="radio" id="efectivo6"  value="efectivo" class="btn btn-efetivo" data-bs-target="#" name="forma_pago" onclick="marcarCheckbox6()">
  <label for="efectivo6"><img src="imagenes/efectivo1.jpg" alt=""></label>  
  
       </div>
       
       <label for="usuario">SUBE LA CAPTURA SI REALIZASTE PAGO QR</label>
       <input class="form" type="file" accept="image/*" id="imagen6" name="imagen">
       
      
          
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary"  name="cerrar" data-bs-dismiss="modal">Cerrar</button>
            <button type="submit" class="btn btn-primary" value="reservar" value="reservar" name="reservar" onclick="confirmaR()">Reservar</button>                                          <!-- BOTON PARA RESERVAR -->
        </div>
        </form>   
     </div>
      </div>
    </div>
  </div>

                                                 <!-- VENTANA MODAL YAPE -->
                                                 
  <div class="modal fade" id="modalyape6" aria-hidden="true" aria-labelledby="modalyapeLabel6" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalyapeLabel6">PAGO CON YAPE</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
         <img src="imagenes/qryape.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva6" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
                                                    <!--VENTANA MODAL PLIN -->
     
       <div class="modal fade" id="modalplin6" aria-hidden="true" aria-labelledby="modalplinLabel6" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="modalplinLabel6">PAGO CON PLIN</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
        <img src="imagenes/qrplin.jpg" alt=""> 
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary" data-bs-target="#modalreserva6" data-bs-toggle="modal">REGRESAR</button>
        </div>
      </div>
    </div>
  </div>
    
    
    
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
    
 function calcularTotal2() {
    var turnos2 = parseInt(document.getElementById("turno2").value);
    var horas2 = parseInt(document.getElementById("horas2").value);
    
    var Monto2 = turnos2 * horas2;
    var totalPagar2 = "S/." + Monto2; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar2").value = totalPagar2;
    } 
  
   function calcularTotal3() {
    var turnos3 = parseInt(document.getElementById("turno3").value);
    var horas3 = parseInt(document.getElementById("horas3").value);
    
    var Monto3 = turnos3 * horas3;
    var totalPagar3 = "S/." + Monto3; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar3").value = totalPagar3;
    } 
    
       function calcularTotal4() {
    var turnos4 = parseInt(document.getElementById("turno4").value);
    var horas4 = parseInt(document.getElementById("horas4").value);
    
    var Monto4 = turnos4 * horas4;
    var totalPagar4 = "S/." + Monto4; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar4").value = totalPagar4;
    } 
    
       function calcularTotal5() {
    var turnos5 = parseInt(document.getElementById("turno5").value);
    var horas5 = parseInt(document.getElementById("horas5").value);
    
    var Monto5 = turnos5 * horas5;
    var totalPagar5 = "S/." + Monto5; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar5").value = totalPagar5;
    } 
    
       function calcularTotal6() {
    var turnos6 = parseInt(document.getElementById("turno6").value);
    var horas6 = parseInt(document.getElementById("horas6").value);
    
    var Monto6 = turnos6 * horas6;
    var totalPagar6 = "S/." + Monto6; // Agregar "S/." al valor del monto total
    document.getElementById("totalPagar6").value = totalPagar6;
    } 

    
 // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha").setAttribute("min", fechaActual);    
  
   // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual2 = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha2").setAttribute("min", fechaActual2);   
  
   // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual3 = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha3").setAttribute("min", fechaActual3);   
  
   // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual4 = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha4").setAttribute("min", fechaActual4);   
  
   // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual5 = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha5").setAttribute("min", fechaActual5);   
  
   // Obtener la fecha actual en el formato "año-mes-día"
  var fechaActual6 = new Date().toISOString().split("T")[0];
  
  // Establecer la fecha actual como el valor mínimo del campo de entrada de fecha
  document.getElementById("fecha6").setAttribute("min", fechaActual6);   
  
  
function marcarCheckbox() {
  const checkbox = document.getElementById("forma-pago-checkbox");
  checkbox.checked = true;
}

function marcarCheckbox2() {
  const checkbox2 = document.getElementById("forma-pago-checkbox2");
  checkbox2.checked = true;
}

function marcarCheckbox3() {
  const checkbox3 = document.getElementById("forma-pago-checkbox3");
  checkbox3.checked = true;
}
function marcarCheckbox4() {
  const checkbox4 = document.getElementById("forma-pago-checkbox4");
  checkbox4.checked = true;
}
function marcarCheckbox5() {
  const checkbox5 = document.getElementById("forma-pago-checkbox5");
  checkbox5.checked = true;
}
function marcarCheckbox6() {
  const checkbox6 = document.getElementById("forma-pago-checkbox6");
  checkbox6.checked = true;
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
