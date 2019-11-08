/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;

/**
 *
 * @author Guto
 */
public class ConnectionFactory {
    
    public static Connection getConnection(){
        
            
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/db_leve_facil?useTimezone=true&serverTimezone=UTC","root", "porcel1910");
           
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
             throw new RuntimeException("Erro SqlExpetion  ao abrir a conexao e, conection Factory", ex);
        
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ConnectionFactory.class.getName()).log(Level.SEVERE, null, ex);
            throw new RuntimeException("Erro classNotFound em conta");
        }
      
          
        
        
    }
    
}
