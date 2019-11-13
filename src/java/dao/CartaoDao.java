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
import model.Mcartao;
import java.util.ArrayList;

/**
 *
 * @author Guto
 */
public class CartaoDao {
    
    
    
          private Connection conn;
    private PreparedStatement stmt;
    
    
     public boolean inserirCartao(Mcartao cartao) {
        boolean cada = false;
        String sql = "INSERT INTO tb_cartao(id_cliente , nome_cartao, numero_cartao, bandeira, codigo_seguranca,validade ) values(?,?,?,?,?,?)  ";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,cartao.getId_cliente());
            stmt.setString(2, cartao.getNomeCartao());  //  nome           
            stmt.setString(3,cartao.getNumeroCartao());
            stmt.setString(4,cartao.getBandeira());
            stmt.setString(5,cartao.getCvv());
            stmt.setString(6,cartao.getValidadeCartao());
            stmt.execute();
                stmt.close();
                cada = true;
            } catch (SQLException erro) {
                throw new RuntimeException("Erro2: " + erro);
            }
            return cada;
        }

         public ArrayList<Mcartao> listarCartao(Mcartao car) {

            ArrayList<Mcartao> lista = new ArrayList<>();
            try {

             //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
                String sql= "select * from  tb_cartao where id_cliente= ? ";
                conn = ConnectionFactory.getConnection();
                stmt = conn.prepareStatement(sql);
               stmt.setInt(1,car.getId_cliente());
               stmt.execute();

                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        Mcartao cartao = new Mcartao();
                        cartao.setId_cliente(rs.getInt("id_cliente"));
                        cartao.setNomeCartao(rs.getString("nome_cartao"));
                        cartao.setNumeroCartao(rs.getString("numero_cartao"));
                        cartao.setValidadeCartao(rs.getString("validade"));
                        cartao.setCvv(rs.getString("codigo_seguranca"));
                        cartao.setBandeira(rs.getString("bandeira"));
                        cartao.setId_cartao(rs.getInt("id_cartao"));

                        lista.add(cartao);
                    }
                }
                stmt.close();
                conn.close();
            } catch (SQLException e) {
                e.toString();
            }
            return lista;
        }  

     
         
         
         
             public String alteraCartao(Mcartao cartao) {
        
        String resp;
        try {
             conn = ConnectionFactory.getConnection();
           String sql = "update tb_cartao set nome_cartao =?, bandeira = ?,codigo_seguranca = ?, numero_cartao = ?,validade =? where id_cliente = ?  and id_cartao = ?; " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, cartao.getNomeCartao());
            stmt.setString(2, cartao.getBandeira());
            stmt.setString(3, cartao.getCvv());
            stmt.setString(4, cartao.getNumeroCartao());
            stmt.setString(5, cartao.getValidadeCartao());             
              stmt.setInt(6, cartao.getId_cliente());
              stmt.setInt(7, cartao.getId_cartao());
   
            
            stmt.executeUpdate();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
}
