
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion_Datos {
    
public Connection conexionBD;

    public final String bd="campo_deportivo";
    public final String urlConexion=String.format("jdbc:mysql://localhost:3306/%s", bd);
    public final  String usuario ="root";
    public final  String contra="";  

    public void abrir_conexion(){
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conexionBD =DriverManager.getConnection(urlConexion,usuario,contra);
      
    }catch(Exception ex){
        System.out.println("Error..."+ex.getMessage());
    }    
    }
    public void cerrar_conexion(){
        
        try{
            conexionBD.close();
        }catch(SQLException ex){
            System.out.println("Error..."+ex.getMessage());
        }
        
    }
}
