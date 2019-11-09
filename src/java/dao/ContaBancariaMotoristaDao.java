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
import model.McontaBancariaMotorista;

/**
 *
 * @author Guto
 */
public class ContaBancariaMotoristaDao {
    
    
     private Connection conn;
    private PreparedStatement stmt;
    
    
     public boolean inserirContaBancaria(McontaBancariaMotorista conta) {
        boolean cada = false;
        String sql = "insert into tb_conta_bancaria (titular,banco,tipo,numero_conta,agencia,id_motorista) values(?,?,?,?,?,?);  ";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);
            stmt.setString(1,conta.getTitular());
            stmt.setString(2, conta.getBanco());  //  nome           
            stmt.setString(3,conta.getTipo());
            stmt.setString(4,conta.getNumero_conta());
            stmt.setString(5,conta.getAgencia());
            stmt.setInt(6,conta.getIdMotorista());
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (SQLException erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }
    
     public ArrayList<McontaBancariaMotorista> listarConta(Login login) {
        
        ArrayList<McontaBancariaMotorista> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select * from  tb_conta_bancaria where id_motorista = ?";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,login.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    McontaBancariaMotorista conta = new McontaBancariaMotorista();
                    conta.setIdContaBancaria(rs.getInt("id_conta_bancaria"));
                    conta.setTitular(rs.getString("titular"));
                    conta.setBanco(rs.getString("banco"));
                    conta.setTipo(rs.getString("tipo"));
                    conta.setNumero_conta(rs.getString("numero_conta"));
                    conta.setAgencia(rs.getString("agencia"));
                    conta.setIdMotorista(rs.getInt("id_motorista"));
                    
                    lista.add(conta);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return lista;
    }  
    
    
    
    
     
               public String alteraConta(McontaBancariaMotorista conta) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
           String sql = "  update tb_conta_bancaria set titular =?, banco=?,tipo=?, numero_conta=?, agencia =? where id_conta_bancaria=? and id_motorista=?; " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, conta.getTitular());
            stmt.setString(2, conta.getBanco());
            stmt.setString(3, conta.getTipo());
            stmt.setString(4, conta.getNumero_conta());
            stmt.setString(5, conta.getAgencia());             
              stmt.setInt(6, conta.getIdContaBancaria());
              stmt.setInt(7, conta.getIdMotorista());
   
            
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
