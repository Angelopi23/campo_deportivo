package config;



import java.sql.Connection;
import java.sql.DriverManager;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


public class Conexion {
    Connection con;
    public Connection getConnection() {
 
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/campo_deportivo", "root", "");
       
         
        } catch (Exception e) {
         /*   System.out.println(e.toString());*/
            
        }
      
       return con;
    }
}
