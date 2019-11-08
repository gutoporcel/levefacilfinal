/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.MCategoriaCarreto;

/**
 *
 * @author Guto
 */
public class CategoriaCarretoDao {
    
    private Connection conn;
    private PreparedStatement stmt;
    
    
    
        public ArrayList<MCategoriaCarreto> listarCategoriaCarreto() {
        
        ArrayList<MCategoriaCarreto> lista = new ArrayList<>();
        try {
           
           String sql = "select*from tb_categoria_carreto; ";
            
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
          
            stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    MCategoriaCarreto cCarreto = new MCategoriaCarreto();
                   // cCarreto.setIdCategoriaCarreto(rs.getInt("id_categoria_carreto"));
                    cCarreto.setNomeCategoriaCarreto(rs.getString("id_nome_categoria_carreto"));
                    lista.add(cCarreto);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
             e.toString();
        }
        return lista;
    }
    
    
}
