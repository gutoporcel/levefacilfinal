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
import model.MCliente;

/**
 *
 * @author Guto
 */
public class ClienteDao {
    
    
    private Connection conn;
    private PreparedStatement stmt;
    //inserir o cadastro   o banco de dados

    public boolean inserirClinte(MCliente cliente) {
        boolean cada = false;
        String sql = "INSERT INTO tb_cliente(nome,data_nascimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero,numero_rg,telefone,celular,senha,situacao) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)  ";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getNomeCliente());  //  nome           
            stmt.setString(2, cliente.getDataNaciCliente());//date
            stmt.setString(3, cliente.getEmailCliente());//email
            stmt.setString(4, cliente.getCpfCliente());//cpf
            stmt.setString(5, cliente.getLogradouroCliente());//endereco
            stmt.setString(6, cliente.getComplementoCliente()); //comple
            stmt.setString(7, cliente.getBairroCliente());//bairro
            stmt.setString(8, cliente.getCepCliente());//cep
            stmt.setString(9, cliente.getCidadeCliente());//cidade
            stmt.setString(10, cliente.getEstadoCliente()); //estado selected
            stmt.setString(11, cliente.getNumeroCasaCliente());//numero casa
            stmt.setString(12, cliente.getNumeroRgCliente());////numero rg
            stmt.setString(13, cliente.getTelefoneCliente());//tell
            stmt.setString(14, cliente.getTellCelularCliente());//cell
            stmt.setString(15, cliente.getSenhaCliente());//senha   
            stmt.setString(16, "ativo");//situacao   
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (SQLException erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }
    
    public ArrayList<MCliente> listarTadosClientes() {
        
        ArrayList<MCliente> lista = new ArrayList<>();
        try {
           
            String sql = "SELECT * FROM tb_cliente ORDER BY nome";
            
             conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
            
            try (ResultSet rs = stmt.executeQuery(sql)) {
                while (rs.next()) {
                    MCliente cliente = new MCliente();
                    cliente.setIdCliente(rs.getInt("id_cliente"));
                    cliente.setNomeCliente(rs.getString("nome"));
                    cliente.setDataNaciCliente(rs.getString("data_nascimento"));
                    cliente.setEmailCliente(rs.getString("email"));
                    cliente.setCpfCliente(rs.getString("cpf"));
                    cliente.setLogradouroCliente(rs.getString("logradouro"));
                    cliente.setComplementoCliente(rs.getString("complemento"));
                    cliente.setBairroCliente(rs.getString("bairro"));
                    cliente.setCepCliente(rs.getString("cep"));
                    cliente.setCidadeCliente(rs.getString("cidade"));
                    cliente.setEstadoCliente(rs.getString("estado"));
                    cliente.setNumeroCasaCliente(rs.getString("numero"));
                    cliente.setNumeroRgCliente(rs.getString("numero_rg"));
                    cliente.setTelefoneCliente(rs.getString("telefone"));
                    cliente.setTellCelularCliente(rs.getString("celular"));
                    cliente.setSenhaCliente(rs.getString("senha"));
                    cliente.setSutuacao(rs.getString("situacao"));
                    
                    
                    lista.add(cliente);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
             e.toString();
        }
        return lista;
    }
    //Busca por cpf  para ver se tem cadastro
    public boolean verificaCad(MCliente cliente) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf FROM tb_cliente where cpf = ?";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getPesquisaCpf());
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                achou = true;
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
             e.toString();
            
        }
        return achou;
    }

    public boolean validaFormCadastro(MCliente cliente) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf ,email FROM tb_cliente where cpf =? or email =?;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getCpfCliente());
            stmt.setString(2, cliente.getEmailCliente());
         
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
       
    public String ativaCliente(MCliente cliente) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_cliente SET situacao=? WHERE id_cliente =?" ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, cliente.getSutuacao());
            stmt.setInt(2, cliente.getIdCliente());
         
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
    public ArrayList<MCliente> listarCliente(MCliente cliente) {
        
        ArrayList<MCliente> lista = new ArrayList<>();
        try {
           
           String sql = "SELECT * from tb_cliente where id_cliente = ? ";
            
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,cliente.getIdCliente());
            stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    
                    
                    cliente.setIdCliente(rs.getInt("id_cliente"));
                    cliente.setNomeCliente(rs.getString("nome"));
                    cliente.setDataNaciCliente(rs.getString("data_nascimento"));
                    cliente.setEmailCliente(rs.getString("email"));
                    cliente.setCpfCliente(rs.getString("cpf"));
                    cliente.setLogradouroCliente(rs.getString("logradouro"));
                    cliente.setComplementoCliente(rs.getString("complemento"));
                    cliente.setBairroCliente(rs.getString("bairro"));
                    cliente.setCepCliente(rs.getString("cep"));
                    cliente.setCidadeCliente(rs.getString("cidade"));
                    cliente.setEstadoCliente(rs.getString("estado"));
                    cliente.setNumeroCasaCliente(rs.getString("numero"));
                    cliente.setNumeroRgCliente(rs.getString("numero_rg"));
                    cliente.setTelefoneCliente(rs.getString("telefone"));
                    cliente.setTellCelularCliente(rs.getString("celular"));
                    cliente.setSenhaCliente(rs.getString("senha"));
                    cliente.setSutuacao(rs.getString("situacao"));
                    
                    
                    
                    
                    
                    lista.add(cliente);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
             e.toString();
        }
        
        return lista;
    }
    
    public String alterarCliente(MCliente cliente) {
        
   String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
             
           // String sql1 ="UPDATE tb_cliente SET nome=?, data_nascimento=?, email=?, logradouro=?, complemento=?, bairro=?, cep=?, cidade=?, estado=?, numero=?, numero_rg=?, telefone=?, celular=? ,cpf=? WHERE id_cliente=?; "; 
           String sql = "UPDATE tb_cliente SET nome=?, data_nascimento=?, email=?, logradouro=?, complemento=?, bairro=?, cep=?, cidade=?, estado=?, numero=?,  numero_rg=?, telefone=?, celular=?, cpf=?  WHERE id_cliente=? ;" ;
           stmt = conn.prepareStatement(sql);
           
             stmt.setString(1,  cliente.getNomeCliente());
             stmt.setString(2,  cliente.getDataNaciCliente());
             stmt.setString(3, cliente.getEmailCliente());
             stmt.setString(4, cliente.getLogradouroCliente());
             stmt.setString(5, cliente.getComplementoCliente());
             stmt.setString(6, cliente.getBairroCliente());
             stmt.setString(7, cliente.getCepCliente());
             stmt.setString(8, cliente.getCidadeCliente());
             stmt.setString(9, cliente.getEstadoCliente());
             stmt.setString(10,cliente.getNumeroCasaCliente());
             stmt.setString(11,cliente.getNumeroRgCliente());
             stmt.setString(12,cliente.getTelefoneCliente());
             stmt.setString(13,cliente.getTellCelularCliente());
             stmt.setString(14,cliente.getCpfCliente());
             
          

            stmt.setInt(15,cliente.getIdCliente());
            stmt.executeUpdate();
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
    public String alteraSenhaCliente(MCliente cliente) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
           String sql = "UPDATE tb_cliente SET senha=? WHERE id_cliente =? and senha=? " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, cliente.getNovaSenha());
            stmt.setInt(2, cliente.getIdCliente());
            stmt.setString(3, cliente.getSenhaCliente());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
    
     public boolean verificaSenha(MCliente cliente) {
        boolean achou = false;
        try {

            String sql = "SELECT senha FROM tb_cliente where senha=? and id_cliente=? ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setInt(2, cliente.getIdCliente());
            stmt.setString(1, cliente.getSenhaCliente());
            
         
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
    
    
    
    
}
