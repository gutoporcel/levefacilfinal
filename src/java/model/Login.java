/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author Guto
 */
public class Login implements Serializable{

    public Login() {
    }
    
    
    private String username;
    private String Senha;
    private String nome; 
    private int id_usuario;

    public Login(String username, String Senha, String nome, int id_usuario) {
        this.username = username;
        this.Senha = Senha;
        this.nome = nome;
        this.id_usuario = id_usuario;
    }
   
   

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

   
   
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSenha() {
        return Senha;
    }

    public void setSenha(String Senha) {
        this.Senha = Senha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
  
    
}
