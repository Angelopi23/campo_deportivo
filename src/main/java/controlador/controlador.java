
package controlador;

import admin.adminDAO;
import admin.administrador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class controlador extends HttpServlet {

    adminDAO dao =new adminDAO();
    administrador ad=new administrador();
    int r;
   
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        String accion=request.getParameter("accion");
        if(accion.equals("Ingresar")){
        
            String usuario=request.getParameter("usuario");
            String password=request.getParameter("password");
           
            
           ad.setUsuario(usuario);
           ad.setPassword(password);
      
            r=dao.validar(ad);
            
            if(r==1){           
                request.getSession().setAttribute("usuario",usuario);
                            
                request.getRequestDispatcher("panel.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("administrador.jsp").forward(request, response);
            }
        }else{
             request.getRequestDispatcher("administrador.jsp").forward(request, response);
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
        processRequest(request, response);
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
