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
import model.MMotorista;
import org.apache.tomcat.jni.Time;

/**
 *
 * @author Guto
 */
public class MotoristaDAO {
         private Connection conn;
    private PreparedStatement stmt;
    
      public boolean verificaCad(MMotorista motorista) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf FROM tb_motorista where cpf = ?";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, motorista.getPesquisaCpf());
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                achou = true;
            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;
    }
    
    public  boolean inserirMotorisa(MMotorista motorista) {
        boolean cada = false;
        String sql = "INSERT INTO tb_motorista(nome,data_nascimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero_casa,numero_rg,telefone,celular,senha,numero_cnh,data_validade_cnh,categoria_cnh,situacao) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)  ";
        try {
            conn = new ConnectionFactory().getConnection();

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, motorista.getNome());  //  nome           
            stmt.setString(2, motorista.getData_nac());//date
            stmt.setString(3, motorista.getEmail());//email
            stmt.setString(4, motorista.getCpf());//cpf
            stmt.setString(5, motorista.getLogradouro());//endereco
            stmt.setString(6, motorista.getComplemento()); //comple
            stmt.setString(7, motorista.getBairro());//bairro
            stmt.setString(8, motorista.getCep());//cep
            stmt.setString(9, motorista.getCidade());//cidade
            stmt.setString(10, motorista.getEstado()); //estado selected
            stmt.setString(11, motorista.getNumero());//numero casa
            stmt.setString(12, motorista.getNumero_rg());////numero rg
            stmt.setString(13, motorista.getTelefone());//tell
            stmt.setString(14, motorista.getCelular());//cell
            stmt.setString(15, motorista.getSenha());//senha  
            stmt.setString(16, motorista.getNumero_cnh());// numero cnh
            stmt.setString(17, motorista.getValidade_cnh());//validade cnh
            stmt.setString(18, motorista.getCategoria_cnh());// categoria
            stmt.setString(19, "ativo");
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (Exception erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }
     
    public ArrayList<MMotorista> listarMotorista() {
        
        ArrayList<MMotorista> lista = new ArrayList<MMotorista>();
        try {
           
            String sql = "SELECT * FROM tb_motorista ORDER BY nome";
            
             conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);
            
             ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                MMotorista m = new MMotorista();
                
                m.setIdMotorista(rs.getInt("id_motorista"));
                m.setNome(rs.getString("nome"));
                m.setNumero_rg(rs.getString("numero_rg"));
                m.setCpf(rs.getString("cpf"));
                m.setData_nac(rs.getString("data_nascimento"));
                m.setTelefone(rs.getString("telefone"));
                m.setCelular(rs.getString("celular"));
                m.setNumero_cnh(rs.getString("numero_cnh"));
                m.setValidade_cnh(rs.getString("data_validade_cnh"));
                m.setCategoria_cnh(rs.getString("categoria_cnh"));
                m.setEmail(rs.getString("email"));
                m.setSenha(rs.getString("senha"));
                m.setCep(rs.getString("cep"));
                m.setLogradouro(rs.getString("logradouro"));
                m.setNumero(rs.getString("numero_casa"));
                m.setComplemento(rs.getString("complemento"));
                m.setBairro(rs.getString("bairro"));
                m.setCidade(rs.getString("cidade"));
                m.setEstado(rs.getString("estado"));
                m.setSituacao(rs.getString("situacao"));
               
                
                lista.add(m);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
     public boolean validaFormCadastroM(MMotorista motorista) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf ,email  FROM tb_motorista where cpf =? or email =?;";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, motorista.getCpf());
            stmt.setString(2, motorista.getEmail());
           
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;
    } 
     
     
    
    
        
    public String ativaMotorista(MMotorista motorista) {
        
        String resp = "";
        try {
             conn = new ConnectionFactory().getConnection();
            String sql = "UPDATE tb_motorista SET situacao=? WHERE id_motorista =?  " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, motorista.getSituacao());
            stmt.setInt(2, motorista.getIdMotorista());
           
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (Exception e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
    
    
    
    
   
        public String alterarMotorista(MMotorista motorista) {
        
   String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
             
           // String sql1 ="UPDATE tb_cliente SET nome=?, data_nascimento=?, email=?, logradouro=?, complemento=?, bairro=?, cep=?, cidade=?, estado=?, numero=?, numero_rg=?, telefone=?, celular=? ,cpf=? WHERE id_cliente=?; "; 
           String sql = "UPDATE tb_motorista SET nome=?, numero_rg=?, cpf=?, data_nascimento=?, telefone=?, celular=?, numero_cnh=?, email=?, cep=?, logradouro=?,numero_casa=?, complemento=?, bairro=?, cidade=? , estado=?  WHERE id_motorista=? ;" ;
           stmt = conn.prepareStatement(sql);
           
             stmt.setString(1, motorista.getNome());
             stmt.setString(2, motorista.getNumero_rg());
             stmt.setString(3, motorista.getCpf());
             stmt.setString(4, motorista.getData_nac());
             stmt.setString(5, motorista.getTelefone());
             stmt.setString(6, motorista.getCelular());
             stmt.setString(7, motorista.getNumero_cnh());
             stmt.setString(8, motorista.getEmail());
             stmt.setString(9, motorista.getCep());
             stmt.setString(10,motorista.getLogradouro());
             stmt.setString(11,motorista.getNumero());
             stmt.setString(12,motorista.getComplemento());
             stmt.setString(13,motorista.getBairro());
             stmt.setString(14,motorista.getCidade());
             stmt.setString(15,motorista.getEstado());
             
          

            stmt.setInt(16,motorista.getIdMotorista());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
        
        
    
    public String alteraSenhaMotorista(MMotorista motorista) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
           String sql = "UPDATE tb_motorista SET senha=? WHERE id_motorista =? and senha=? " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, motorista.getNovaSenha());
            stmt.setInt(2, motorista.getIdMotorista());
            stmt.setString(3, motorista.getSenha());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
     public boolean verificaSenhaMotorista(MMotorista motorista) {
        boolean achou = false;
        try {

            String sql = "SELECT senha FROM tb_motorista where senha=? and id_motorista=? ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setInt(2, motorista.getIdMotorista());
            stmt.setString(1, motorista.getSenha());
            
         
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
        }
        return achou;
    } 
    
    
    
    public ArrayList<MMotorista> listarMotoristaDados(MMotorista motorista) {
        
        ArrayList<MMotorista> lista = new ArrayList<>();
        try {
           
           String sql = "SELECT * from tb_motorista where id_motorista = ? ";
            
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,motorista.getIdMotorista());
            stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    
                     MMotorista mo = new MMotorista();
                 mo.setIdMotorista(rs.getInt("id_motorista"));
                mo.setNome(rs.getString("nome"));
                mo.setNumero_rg(rs.getString("numero_rg"));
                mo.setCpf(rs.getString("cpf"));
                mo.setData_nac(rs.getString("data_nascimento"));
                mo.setTelefone(rs.getString("telefone"));
                mo.setCelular(rs.getString("celular"));
                mo.setNumero_cnh(rs.getString("numero_cnh"));
                mo.setValidade_cnh(rs.getString("data_validade_cnh"));
                mo.setCategoria_cnh(rs.getString("categoria_cnh"));
                mo.setEmail(rs.getString("email"));
                mo.setSenha(rs.getString("senha"));
                mo.setCep(rs.getString("cep"));
                mo.setLogradouro(rs.getString("logradouro"));
                mo.setNumero(rs.getString("numero_casa"));
                mo.setComplemento(rs.getString("complemento"));
                mo.setBairro(rs.getString("bairro"));
                mo.setCidade(rs.getString("cidade"));
                mo.setEstado(rs.getString("estado"));
                mo.setSituacao(rs.getString("situacao"));
                    
                    
                    
                    
                    lista.add(mo);
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
    
    
