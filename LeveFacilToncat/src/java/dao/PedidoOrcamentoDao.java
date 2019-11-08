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
import model.MPedidoOrcamento;

/**
 *
 * @author Guto
 */
public class PedidoOrcamentoDao {
    
      private Connection conn;
    private PreparedStatement stmt;
    
    
    
       public boolean cadastraPedido(MPedidoOrcamento pedido) {
        boolean volta = false;
        String sql = "INSERT INTO tb_pedido_orcamento(data_pedido,descricao,partida,destino,distancia,hora_pedido,id_nome_categoria_carreto,id_cliente,situacao) VALUES (?,?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionFactory.getConnection();

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, pedido.getData());  //  nome           
            stmt.setString(2, pedido.getDescricao());//date
            stmt.setString(3, pedido.getLocalPartida());//email
            stmt.setString(4, pedido.getDestino());//cpf
            stmt.setString(5, pedido.getDistancia());//endereco
            stmt.setString(6, pedido.getHora()); //comple
            stmt.setString(7, pedido.getTipoCarreto());//bairro
            stmt.setInt(8, pedido.getIdCliente());//cep
            stmt.setString(9, "Aguardando");
            stmt.execute();
            stmt.close();
            volta = true;
        } catch (SQLException erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return volta;
    }
    
       
         public ArrayList<MPedidoOrcamento> listarPedido( ) {
        
        ArrayList<MPedidoOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
           // String sql=" select id_pedido_orcamento, data_pedido,descricao,partida,destino,distancia,hora_pedido,id_categoria_carreto,situacao from tb_pedido_orcamento; ";
           String sql ="select*from tb_pedido_orcamento where situacao = 'Aguardando';";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
          
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    
                    
                   MPedidoOrcamento pedido = new MPedidoOrcamento();
                   pedido.setIdCliente(rs.getInt("id_cliente"));
                    pedido.setId_pedidoOrca(rs.getInt("id_pedido_orcamento"));
                    pedido.setData(rs.getString("data_pedido"));
                    pedido.setDescricao(rs.getString("descricao"));
                    pedido.setLocalPartida(rs.getString("partida"));
                    pedido.setDestino(rs.getString("destino"));
                    pedido.setDistancia(rs.getString("distancia"));
                    pedido.setHora(rs.getString("hora_pedido"));
                    pedido.setTipoCarreto(rs.getString("id_nome_categoria_carreto"));
                    pedido.setSituacao(rs.getString("situacao"));
                    
                    
                    lista.add(pedido);
                }
            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return lista;
    }  
     
       
              public ArrayList<MPedidoOrcamento> listarPedidoCliente(MPedidoOrcamento ped ) {
        
        ArrayList<MPedidoOrcamento> lista = new ArrayList<>();
        try {
           
         //  String sql = "SELECT  b.nome_cartao, b.numero_cartao, b.bandeira, b.validade, b.codigo_seguranca FROM tb_cliente as C INNER JOIN tb_cartao as B on c.id_cliente = b.id_cliente  where b.id_cliente = ? order by c.nome;";
           // String sql=" select id_pedido_orcamento, data_pedido,descricao,partida,destino,distancia,hora_pedido,id_categoria_carreto,situacao from tb_pedido_orcamento; ";
           String sql ="select*from tb_pedido_orcamento where id_cliente = ?  and  situacao = 'Aguardando';";
             conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
           stmt.setInt(1,ped.getIdCliente());
           stmt.execute();
            
            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    
                    
                   MPedidoOrcamento pedido = new MPedidoOrcamento();
                   pedido.setIdCliente(rs.getInt("id_cliente"));
                    pedido.setId_pedidoOrca(rs.getInt("id_pedido_orcamento"));
                    pedido.setData(rs.getString("data_pedido"));
                    pedido.setDescricao(rs.getString("descricao"));
                    pedido.setLocalPartida(rs.getString("partida"));
                    pedido.setDestino(rs.getString("destino"));
                    pedido.setDistancia(rs.getString("distancia"));
                    pedido.setHora(rs.getString("hora_pedido"));
                    pedido.setTipoCarreto(rs.getString("id_nome_categoria_carreto"));
                    pedido.setSituacao(rs.getString("situacao"));
                    
                    
                    lista.add(pedido);
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
