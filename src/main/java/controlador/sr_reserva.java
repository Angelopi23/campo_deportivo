/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import principal.enviaReser;


import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Part;


@WebServlet("/controlador/sr_reserva")
@MultipartConfig

public class sr_reserva extends HttpServlet {
    
     private static final long serialVersionUID = 1L;
    private static final String RUTA_CARPETA_IMAGENES = "C:\\xampp\\htdocs\\campo_deportivo\\src\\main\\webapp\\img-subidas/"; // Cambia esta ruta por la ruta de tu carpeta en el servidor


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    enviaReser enviareser;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sr_reserva</title>");            
            out.println("</head>");
            out.println("<body>");
            
       
          enviareser=new enviaReser(0,request.getParameter("campo_seleccionado"),request.getParameter("nombres"),request.getParameter("apellidos"),request.getParameter("dni"),request.getParameter("celular"),Integer.valueOf(request.getParameter("id_turno")),Integer.valueOf(request.getParameter("id_horas")),request.getParameter("totalPagar"),request.getParameter("date"),Integer.valueOf(request.getParameter("id_horario")),request.getParameter("forma_pago"), request.getParameter("imagen"));
        
          
//boton agregar
         if("reservar".equals(request.getParameter("reservar") )){        
           if( enviareser.agregar() > 0){
              try {
            Thread.sleep(2000); // Retraso de 2 segundos (2000 milisegundos)
            response.sendRedirect("index.jsp");
        } catch (InterruptedException ex) {
            System.out.println(ex.getMessage());
        }
           }else{
               out.println("<h1>ERROR</h1>");
              out.println("<a href='index.jsp'>Regresar</a>");
           }
            }
    
    //boton eliminar
        if("eliminar".equals(request.getParameter("eliminar") )){ 
           if( enviareser.eliminar() > 0){
              try {
            Thread.sleep(2000); // Retraso de 2 segundos (2000 milisegundos)
            response.sendRedirect("panel.jsp");
        } catch (InterruptedException ex) {
            System.out.println(ex.getMessage());
        }
           }else{
               out.println("<h1>No se elimino</h1>");
              out.println("<a href='panel.jsp'>Regresar</a>");
           }
            }          
               
     

   
               
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         //   processRequest(request, response);
      
         try {
            // Obtener la parte (input) del archivo de imagen del formulario
            Part archivoPart = request.getPart("imagen");

            // Obtener el nombre original del archivo
            String nombreArchivo = Paths.get(archivoPart.getSubmittedFileName()).getFileName().toString();

            // Leer el contenido del archivo
            InputStream archivoInputStream = archivoPart.getInputStream();

            // Guardar la imagen en la carpeta del servidor
            Files.copy(archivoInputStream, new File(RUTA_CARPETA_IMAGENES + nombreArchivo).toPath());
            

         response.sendRedirect("index.jsp?exito=true");
        } catch (IOException | ServletException e) {
              // Manejar errores, mostrar mensaje de error, etc.
    response.sendRedirect("index.jsp?exito=false");
            

        }
       
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
