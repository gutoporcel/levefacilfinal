/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Guto
 */
public class Mcartao {
     private String nomeCartao;
     private String numeroCartao;
     private String bandeira;
     private String cvv;
     private String validadeCartao;
     private int Id_cliente;
     private int id_cartao;

    public Mcartao() {
    }

    public Mcartao(String nomeCartao, String numeroCartao, String bandeira, String cvv, String validadeCartao, int Id_cliente, int id_cartao) {
        this.nomeCartao = nomeCartao;
        this.numeroCartao = numeroCartao;
        this.bandeira = bandeira;
        this.cvv = cvv;
        this.validadeCartao = validadeCartao;
        this.Id_cliente = Id_cliente;
        this.id_cartao = id_cartao;
    }

    @Override
    public String toString() {
        return "Mcartao{" + "nomeCartao=" + nomeCartao + ", numeroCartao=" + numeroCartao + ", bandeira=" + bandeira + ", cvv=" + cvv + ", validadeCartao=" + validadeCartao + ", Id_cliente=" + Id_cliente + ", id_cartao=" + id_cartao + '}';
    }

    public String getNomeCartao() {
        return nomeCartao;
    }

    public void setNomeCartao(String nomeCartao) {
        this.nomeCartao = nomeCartao;
    }

    public String getNumeroCartao() {
        return numeroCartao;
    }

    public void setNumeroCartao(String numeroCartao) {
        this.numeroCartao = numeroCartao;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public String getValidadeCartao() {
        return validadeCartao;
    }

    public void setValidadeCartao(String validadeCartao) {
        this.validadeCartao = validadeCartao;
    }

    public int getId_cliente() {
        return Id_cliente;
    }

    public void setId_cliente(int Id_cliente) {
        this.Id_cliente = Id_cliente;
    }

    public int getId_cartao() {
        return id_cartao;
    }

    public void setId_cartao(int id_cartao) {
        this.id_cartao = id_cartao;
    }

  
     
    
    
    
}
