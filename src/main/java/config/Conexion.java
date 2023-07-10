package config;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author LENOVO
 */
public class Conexion {
    
    public Connection Conectar() {
 
        
        try {
        //    Class.forName("com.mysql.jdbc.Driver");
           Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/campo_deportivo", "root", "");
         return cn;
         
        } catch (SQLException e) {
            System.out.println(e.toString());
            return null;
        }
      
       
    }
}