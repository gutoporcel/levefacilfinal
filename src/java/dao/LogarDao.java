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
import model.Login;

/**
 *
 * @author Guto
 */
public class LogarDao {
    
        private Connection conn;
    private PreparedStatement stmt;

      public boolean validaLoginMotorista(Login login) {
        boolean achou = false;
        try {

            String sql = "SELECT nome, id_motorista, cpf, senha  FROM tb_motorista where cpf =? and senha =? and situacao =?;";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());
            stmt.setString(3, "ativo");

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_motorista"));
                login.setUsername(rs.getString("cpf"));
                 login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
              e.toString();
        }
        return achou;

    }

    public boolean validaLoginCliente(Login login) {

        boolean achou = false;
        try {

            String sql = "SELECT nome, id_cliente, cpf, senha  FROM tb_cliente where cpf =? and senha =? and situacao =?; ";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());
            stmt.setString(3, "ativo");

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_cliente"));
                login.setUsername(rs.getString("cpf"));
                login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return achou;
    }

    public boolean validaLoginAdmin(Login login) {

        boolean achou = false;
        try {

            String sql = "SELECT nome, id_administrador, cpf, senha  FROM tb_administrador where cpf =? and senha =? ; ";
            conn = ConnectionFactory.getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                 login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_administrador"));
                login.setUsername(rs.getString("cpf"));
                 login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.toString();
        }
        return achou;

    }

    
    
    
    
}
