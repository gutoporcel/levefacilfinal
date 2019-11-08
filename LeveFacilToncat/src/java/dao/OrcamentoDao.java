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
import model.MFinalizaOrcamento;
import model.MPedidoOrcamento;
import model.OrcamentoMotorista;

/**
 *
 * @author Guto
 */
public class OrcamentoDao {
    
    
    
          private Connection conn;
    private PreparedStatement stmt;
    
     // isert
     public boolean inserirOrcamento(OrcamentoMotorista orcamento) {
        boolean cada = false;
        String sql = "INSERT INTO tb_retorno_orcamento(valor , id_motorista,id_pedido_orcamento  ) values(?,?,?)  ";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);
            stmt.setFloat(1,orcamento.getValor());
            stmt.setFloat(2,orcamento.getId_motorista());
            stmt.setInt(3, orcamento.getId_pedido());
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (SQLException erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }    
       
    // update
    public String aceitaPedido(OrcamentoMotorista orcamento) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_pedido_orcamento SET situacao=? WHERE id_pedido_orcamento =?  " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, "Em analise");
            stmt.setInt(2, orcamento.getId_pedido());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
              
    public String recusarPedido(OrcamentoMotorista orcamento) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_pedido_orcamento SET situacao=? WHERE id_pedido_orcamento =?  " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, "Aguardando");
            stmt.setInt(2, orcamento.getId_pedido());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
   
    public String pedidoAguardandoPagamento(OrcamentoMotorista orcamento) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_pedido_orcamento SET situacao=? WHERE id_pedido_orcamento =?  " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, "Aguardando Pagamento");
            stmt.setInt(2, orcamento.getId_pedido());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
     
    public String finalizaPagamento(OrcamentoMotorista orcamento) {
        
        String resp = "";
        try {
             conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_pedido_orcamento SET situacao=? WHERE id_pedido_orcamento =?  " ;
           stmt = conn.prepareStatement(sql);
           
            stmt.setString(1, "Pagamento Efetuado");
            stmt.setInt(2, orcamento.getId_pedido());
            
            stmt.execute();
            
            stmt.close();
            conn.close();
            
            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
             }
    
    public String pedidoEntregue(OrcamentoMotorista orcamento) {

        String resp = "";
        try {
            conn = ConnectionFactory.getConnection();
            String sql = "UPDATE tb_pedido_orcamento SET situacao=? WHERE id_pedido_orcamento =?  ";
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, "Pedido Entregue");
            stmt.setInt(2, orcamento.getId_pedido());

            stmt.execute();

            stmt.close();
            conn.close();

            resp = "OK";
        } catch (SQLException e) {
            resp = "ERRO: " + e.toString();
        }
        return resp;
    }
           
        
    //listar
    public ArrayList<MFinalizaOrcamento> listarorcamentoClienteAguardandoPagamento(Login lo) {
        
        ArrayList<MFinalizaOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select p.descricao ,p.id_pedido_orcamento, n.nome,m.nome,p.partida,p.destino,p.distancia,p.id_nome_categoria_carreto,p.situacao,p.data_pedido,o.valor from tb_pedido_orcamento as p inner join tb_retorno_orcamento as o  on (p.id_pedido_orcamento = o.id_pedido_orcamento) inner join tb_cliente as n  on (p.id_cliente = n.id_cliente) inner join tb_motorista as m  on (o.id_motorista = m.id_motorista) where p.id_cliente = ? and p.situacao = 'Aguardando Pagamento' ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,lo.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                   MFinalizaOrcamento orcamento = new MFinalizaOrcamento ();
                   orcamento.setIdPedido(rs.getInt("p.id_pedido_orcamento"));
                    orcamento.setNomeCliente(rs.getString("n.nome"));
                    orcamento.setNomeMotorista(rs.getString("m.nome"));
                    orcamento.setPartida(rs.getString("p.partida"));
                    orcamento.setDistino(rs.getString("p.destino"));
                    orcamento.setDistancia(rs.getString("p.distancia"));
                    orcamento.setCategoria(rs.getString("p.id_nome_categoria_carreto"));
                    orcamento.setSituacao(rs.getString("p.situacao"));
                    orcamento.setData(rs.getString("p.data_pedido"));
                    orcamento.setValor(rs.getFloat("o.valor"));
                    orcamento.setDescricao(rs.getString("p.descricao"));
                    
                    lista.add(orcamento);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return lista;
    }  
                     
    public ArrayList<MFinalizaOrcamento> listarorcamentoClienteAnalise(Login lo) {
        
        ArrayList<MFinalizaOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select p.descricao, p.id_pedido_orcamento, n.nome,m.nome,p.partida,p.destino,p.distancia,p.id_nome_categoria_carreto,p.situacao,p.data_pedido,o.valor from tb_pedido_orcamento as p inner join tb_retorno_orcamento as o  on (p.id_pedido_orcamento = o.id_pedido_orcamento) inner join tb_cliente as n  on (p.id_cliente = n.id_cliente) inner join tb_motorista as m  on (o.id_motorista = m.id_motorista) where p.id_cliente = ? and p.situacao = 'Em analise' ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,lo.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                   MFinalizaOrcamento orcamento = new MFinalizaOrcamento ();
                   orcamento.setIdPedido(rs.getInt("p.id_pedido_orcamento"));
                    orcamento.setNomeCliente(rs.getString("n.nome"));
                    orcamento.setNomeMotorista(rs.getString("m.nome"));
                    orcamento.setPartida(rs.getString("p.partida"));
                    orcamento.setDistino(rs.getString("p.destino"));
                    orcamento.setDistancia(rs.getString("p.distancia"));
                    orcamento.setCategoria(rs.getString("p.id_nome_categoria_carreto"));
                    orcamento.setSituacao(rs.getString("p.situacao"));
                    orcamento.setData(rs.getString("p.data_pedido"));
                    orcamento.setValor(rs.getFloat("o.valor"));
                    orcamento.setDescricao(rs.getString("p.descricao"));
                    
                    lista.add(orcamento);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return lista;
    }  
 
           
     public ArrayList<MFinalizaOrcamento> listarorcamentoEntregue(Login lo) {
        
        ArrayList<MFinalizaOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select p.descricao ,p.id_pedido_orcamento, n.nome,m.nome,p.partida,p.destino,p.distancia,p.id_nome_categoria_carreto,p.situacao,p.data_pedido,o.valor from tb_pedido_orcamento as p inner join tb_retorno_orcamento as o  on (p.id_pedido_orcamento = o.id_pedido_orcamento) inner join tb_cliente as n  on (p.id_cliente = n.id_cliente) inner join tb_motorista as m  on (o.id_motorista = m.id_motorista) where p.id_cliente = ? and p.situacao = 'Pedido Entregue' ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,lo.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                   MFinalizaOrcamento orcamento = new MFinalizaOrcamento ();
                   orcamento.setIdPedido(rs.getInt("p.id_pedido_orcamento"));
                    orcamento.setNomeCliente(rs.getString("n.nome"));
                    orcamento.setNomeMotorista(rs.getString("m.nome"));
                    orcamento.setPartida(rs.getString("p.partida"));
                    orcamento.setDistino(rs.getString("p.destino"));
                    orcamento.setDistancia(rs.getString("p.distancia"));
                    orcamento.setCategoria(rs.getString("p.id_nome_categoria_carreto"));
                    orcamento.setSituacao(rs.getString("p.situacao"));
                    orcamento.setData(rs.getString("p.data_pedido"));
                    orcamento.setValor(rs.getFloat("o.valor"));
                    orcamento.setDescricao(rs.getString("p.descricao"));
                    
                    lista.add(orcamento);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return lista;
    }  
    
           
     public ArrayList<MFinalizaOrcamento> listarorcamentoClientepago(Login lo) {
        
        ArrayList<MFinalizaOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
            String sql= "select p.descricao, p.id_pedido_orcamento, n.nome,m.nome,p.partida,p.destino,p.distancia,p.id_nome_categoria_carreto,p.situacao,p.data_pedido,o.valor from tb_pedido_orcamento as p inner join tb_retorno_orcamento as o  on (p.id_pedido_orcamento = o.id_pedido_orcamento) inner join tb_cliente as n  on (p.id_cliente = n.id_cliente) inner join tb_motorista as m  on (o.id_motorista = m.id_motorista) where p.id_cliente = ? and p.situacao = 'Pagamento Efetuado' ;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,lo.getId_usuario());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                   MFinalizaOrcamento orcamento = new MFinalizaOrcamento ();
                   orcamento.setIdPedido(rs.getInt("p.id_pedido_orcamento"));
                    orcamento.setNomeCliente(rs.getString("n.nome"));
                    orcamento.setNomeMotorista(rs.getString("m.nome"));
                    orcamento.setPartida(rs.getString("p.partida"));
                    orcamento.setDistino(rs.getString("p.destino"));
                    orcamento.setDistancia(rs.getString("p.distancia"));
                    orcamento.setCategoria(rs.getString("p.id_nome_categoria_carreto"));
                    orcamento.setSituacao(rs.getString("p.situacao"));
                    orcamento.setData(rs.getString("p.data_pedido"));
                    orcamento.setValor(rs.getFloat("o.valor"));
                    orcamento.setDescricao(rs.getString("p.descricao"));
                    
                    lista.add(orcamento);
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
