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
import model.Login;
import model.Mveiculo;

/**
 *
 * @author Guto
 */
public class VeiculoDao {
    
    
    
          private Connection conn;
    private PreparedStatement stmt;
    
    
     public boolean inserirVeiculo(Mveiculo veiculo) {
        boolean cada = false;
        String sql = "insert into tb_veiculo(renavam,placa,modelo,cor,marca,porte,id_motorista,ano,carrocaria)values(?,?,?,?,?,?,?,?,?); ";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);
            stmt.setString(1,veiculo.getRenavam());//renavam
            stmt.setString(2, veiculo.getPlaca());  // placa           
            stmt.setString(3,veiculo.getModelo());//modelo
            stmt.setString(4,veiculo.getCor());//cor
            stmt.setString(5,veiculo.getMarca());//marca
            stmt.setString(6,veiculo.getPorte());//porte
            stmt.setInt(7,veiculo.getIdMotorista());//id_motorista
            stmt.setString(8,veiculo.getAno());//ano
            stmt.setString(9,veiculo.getCarroceria());//carrocaria
            
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (SQLException erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }
    
     public ArrayList<Mveiculo> listarCarro(Login id) {
        
        ArrayList<Mveiculo> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select * from  tb_veiculo where id_motorista =?; ";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,id.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    Mveiculo vei = new Mveiculo();
                    vei.setIdVeiculo(rs.getInt("id_veiculo"));
                    vei.setIdMotorista(rs.getInt("id_motorista"));
                    vei.setAno(rs.getString("ano"));
                    vei.setCarroceria(rs.getString("carrocaria"));
                    vei.setCor(rs.getString("cor"));
                    vei.setMarca(rs.getString("marca"));
                    vei.setModelo(rs.getString("modelo"));
                    vei.setRenavam(rs.getString("renavam"));
                    vei.setPorte(rs.getString("porte"));
                    vei.setPlaca(rs.getString("placa"));
                    lista.add(vei);
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
