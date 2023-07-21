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
        <title>Panel de administrador</title>
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
     
   <div class="boton-eliminar">
<button type="button" class="btn btn-danger" id="eliminar" value="eliminar" name="eliminar" onclick="eliminaR()">Eliminar todos los datos</button>
</div>  
        

     
  <div class="text-center">
  
        <table class="table table-striped table-inverse table-responsive table-dark" id="tabla_reservas">
            <thead class="thead-responsive">
                <tr>
                    <th class="text-center">#</th> 
                    <th class="text-center">N° Campo Seleccionado</th> 
                    <th class="text-center">Nombres</th>    
                    <th class="text-center">Apellidos</th> 
                    <th class="text-center">Dni</th> 
                    <th class="text-center">Celular</th> 
                    <th class="text-center">Turno</th> 
                    <th class="text-center">Horas</th> 
                    <th class="text-center">Total a Pagar</th> 
                    <th class="text-center">Fecha</th> 
                    <th class="text-center">Horario</th> 
                    <th class="text-center">Forma de Pago</th> 
                    <th class="text-center">Captura de la Imagen</th> 
                   <th class="text-center"></th>
                </tr>   
            </thead>
            <tbody id="tbl_reservas">
                <% 
                enviaReser enviareser = new enviaReser();
                DefaultTableModel tabla = enviareser.leer();
                
                for (int t = 0; t < tabla.getRowCount(); t++) { 
                %>
               <tr>

                    <td class="text-center"><%= tabla.getValueAt(t, 0) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 1) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 2) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 3) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 4) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 5) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 6) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 7) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 8) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 9) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 10) %></td>
                    <td class="text-center"><%= tabla.getValueAt(t, 11) %></td>
                   <td class="text-center">
    <a href="#" class="ver-imagen" data-imagen="<img src='ruta_de_la_imagen.jpg' alt='Imagen subida'>"}>
        <i class="fas fa-image"></i>
    </a>
</td>

            
                </tr>
                <% } %>
            </tbody>
        </table>
</div>


  
   
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



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
    // Función para eliminar todos los datos
    function eliminarDatos() {
        $.ajax({
            url: "eliminar_datos.jsp", // Archivo JSP para manejar la eliminación de datos
            type: "POST", // Usaremos el método POST para enviar la solicitud
            success: function (data) {
                // Mostrar notificación de éxito
                Swal.fire({
                    title: 'Se eliminaron todos los datos correctamente',
                    icon: 'success',
                    position: 'center',
                    timer: 2000,
                    showConfirmButton: false
                }).then(function() {
                    // Redirigir a la pantalla principal después de 2 segundos
                    window.location.href = 'panel.jsp';
                });
            },
            error: function () {
                // Hubo un error en la solicitud
                alert("Error al eliminar los datos");
            }
        });
    }

    // Asociar el evento click al botón "Eliminar todos los datos"
    $(document).on('click', '#eliminar', function () {
        if (confirm("¿Estás seguro de que deseas eliminar todos los datos?")) {
            eliminarDatos();
        }
    });
</script>




<script type="text/javascript">
    $(document).ready(function() {
        // Agrega el evento de clic a los elementos con la clase "ver-imagen"
        $(".ver-imagen").on("click", function(e) {
            e.preventDefault();
            const imagenUrl = $(this).data("imagen");

            // Mostrar la imagen en un modal o ventana emergente
            // Aquí puedes utilizar Bootstrap modal o SweetAlert2 modal, elige el que prefieras

            // Ejemplo utilizando SweetAlert2
            Swal.fire({
                imageUrl: imagenUrl,
                imageAlt: "Imagen subida",
                showCloseButton: true,
                showConfirmButton: false
            });
        });
    });
</script>


















<!--
<script type="text/javascript">
    $('#tbl_reservas').on('click','tr td',function(evt){
      
      var target,id,campo_seleccionado,nombres,apellidos,dni,celular,id_turno,id_horas,total_pagar,fecha,id_horario, forma_pago,captura_img;  
       target = $(event.target);
       id = target.parent("tr").find("td").eq(0).html(); 
       campo_seleccionado =target.parent("tr").find("td").eq(1).html(); 
       nombres=target.parent("tr").find("td").eq(2).html();  
       apellidos=target.parent("tr").find("td").eq(3).html(); 
       dni=target.parent("tr").find("td").eq(4).html(); 
       celular=target.parent("tr").find("td").eq(5).html(); 
       id_turno=target.parent("tr").find("td").eq(6).html(); 
       id_horas=target.parent("tr").find("td").eq(7).html(); 
       total_pagar=target.parent("tr").find("td").eq(8).html(); 
       fecha=target.parent("tr").find("td").eq(9).html(); 
       id_horario=target.parent("tr").find("td").eq(10).html(); 
       forma_pago=target.parent("tr").find("td").eq(11).html(); 
       captura_img=target.parent("tr").find("td").eq(12).html(); 
        
         $("#txt_id").val(id);   
         $("#campo_seleccionado").val(campo_seleccionado);
         $("#nombres").val(nombres);
         $("#apellidos").val(apellidos);
         $("#dni").val(dni);
         $("#celular").val(celular);
         $("#turno").val(id_turno);
         $("#horas").val(id_horas);
         $("#totalPagar").val(total_pagar);
         $("#fecha").val(fecha);
         $("#horario").val(id_horario);
      if (forma_pago === "yape") {
  $("#yape").prop("checked", true);
} else if (forma_pago === "plin") {
  $("#plin").prop("checked", true);
} else if (forma_pago === "efectivo") {
  $("#efectivo").prop("checked", true);
}
         $("#imagen").val(captura_img);
         
       
         $("#modalreserva").modal('show');
        
    });

    
</script>-->




<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.1.4/dist/sweetalert2.all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
