
package admin;


import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class adminDAO implements validar{
    
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
   
   
    
    @Override
    public int validar(administrador admin) {
         int r=0;
     String sql = "SELECT * FROM administrador WHERE usuario = ? AND password = ?";
     
      try{
          con=cn.getConnection();
          ps=con.prepareStatement(sql);
          ps.setString(1, admin.usuario);
          ps.setString(2, admin.password);
       
       
          
          
          rs=ps.executeQuery();
          
        
          while(rs.next()){
              r=r+1;
              admin.setUsuario(rs.getString("usuario"));
              admin.setPassword(rs.getString("password"));
        
          }
          if(r==1){
              return 1;
          }else{
        return 0;
          }
          
      }catch (Exception e){
          return 0;
      }
      
    }
    

    
    
}
