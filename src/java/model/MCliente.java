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
public class MCliente  implements Serializable{

 
    private String pesquisaCpf;
    private int idCliente;
    private String nomeCliente;
    private String dataNaciCliente;
    private String emailCliente;
    private String cpfCliente;    
    private String logradouroCliente;
    private String complementoCliente;
    private String bairroCliente;
    private String cepCliente;
    private String cidadeCliente;
    private String estadoCliente;
    private String numeroCasaCliente;
    private String numeroRgCliente;
    private String novaSenha;
    private String telefoneCliente;
    private String tellCelularCliente;
    private String senhaCliente;
   private String sutuacao;

    public MCliente() {
    }

    public MCliente(String pesquisaCpf, int idCliente, String nomeCliente, String dataNaciCliente, String emailCliente, String cpfCliente, String logradouroCliente, String complementoCliente, String bairroCliente, String cepCliente, String cidadeCliente, String estadoCliente, String numeroCasaCliente, String numeroRgCliente, String novaSenha, String telefoneCliente, String tellCelularCliente, String senhaCliente, String sutuacao) {
        this.pesquisaCpf = pesquisaCpf;
        this.idCliente = idCliente;
        this.nomeCliente = nomeCliente;
        this.dataNaciCliente = dataNaciCliente;
        this.emailCliente = emailCliente;
        this.cpfCliente = cpfCliente;
        this.logradouroCliente = logradouroCliente;
        this.complementoCliente = complementoCliente;
        this.bairroCliente = bairroCliente;
        this.cepCliente = cepCliente;
        this.cidadeCliente = cidadeCliente;
        this.estadoCliente = estadoCliente;
        this.numeroCasaCliente = numeroCasaCliente;
        this.numeroRgCliente = numeroRgCliente;
        this.novaSenha = novaSenha;
        this.telefoneCliente = telefoneCliente;
        this.tellCelularCliente = tellCelularCliente;
        this.senhaCliente = senhaCliente;
        this.sutuacao = sutuacao;
    }

    @Override
    public String toString() {
        return "MCliente{" + "pesquisaCpf=" + pesquisaCpf + ", idCliente=" + idCliente + ", nomeCliente=" + nomeCliente + ", dataNaciCliente=" + dataNaciCliente + ", emailCliente=" + emailCliente + ", cpfCliente=" + cpfCliente + ", logradouroCliente=" + logradouroCliente + ", complementoCliente=" + complementoCliente + ", bairroCliente=" + bairroCliente + ", cepCliente=" + cepCliente + ", cidadeCliente=" + cidadeCliente + ", estadoCliente=" + estadoCliente + ", numeroCasaCliente=" + numeroCasaCliente + ", numeroRgCliente=" + numeroRgCliente + ", novaSenha=" + novaSenha + ", telefoneCliente=" + telefoneCliente + ", tellCelularCliente=" + tellCelularCliente + ", senhaCliente=" + senhaCliente + ", sutuacao=" + sutuacao + '}';
    }
    
   

    public String getPesquisaCpf() {
        return pesquisaCpf;
    }

    public void setPesquisaCpf(String pesquisaCpf) {
        this.pesquisaCpf = pesquisaCpf;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getDataNaciCliente() {
        return dataNaciCliente;
    }

    public void setDataNaciCliente(String dataNaciCliente) {
        this.dataNaciCliente = dataNaciCliente;
    }

    public String getEmailCliente() {
        return emailCliente;
    }

    public void setEmailCliente(String emailCliente) {
        this.emailCliente = emailCliente;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }

    public String getLogradouroCliente() {
        return logradouroCliente;
    }

    public void setLogradouroCliente(String logradouroCliente) {
        this.logradouroCliente = logradouroCliente;
    }

    public String getComplementoCliente() {
        return complementoCliente;
    }

    public void setComplementoCliente(String complementoCliente) {
        this.complementoCliente = complementoCliente;
    }

    public String getBairroCliente() {
        return bairroCliente;
    }

    public void setBairroCliente(String bairroCliente) {
        this.bairroCliente = bairroCliente;
    }

    public String getCepCliente() {
        return cepCliente;
    }

    public void setCepCliente(String cepCliente) {
        this.cepCliente = cepCliente;
    }

    public String getCidadeCliente() {
        return cidadeCliente;
    }

    public void setCidadeCliente(String cidadeCliente) {
        this.cidadeCliente = cidadeCliente;
    }

    public String getEstadoCliente() {
        return estadoCliente;
    }

    public void setEstadoCliente(String estadoCliente) {
        this.estadoCliente = estadoCliente;
    }

    public String getNumeroCasaCliente() {
        return numeroCasaCliente;
    }

    public void setNumeroCasaCliente(String numeroCasaCliente) {
        this.numeroCasaCliente = numeroCasaCliente;
    }

    public String getNumeroRgCliente() {
        return numeroRgCliente;
    }

    public void setNumeroRgCliente(String numeroRgCliente) {
        this.numeroRgCliente = numeroRgCliente;
    }

    public String getTelefoneCliente() {
        return telefoneCliente;
    }

    public void setTelefoneCliente(String telefoneCliente) {
        this.telefoneCliente = telefoneCliente;
    }

    public String getTellCelularCliente() {
        return tellCelularCliente;
    }

    public void setTellCelularCliente(String tellCelularCliente) {
        this.tellCelularCliente = tellCelularCliente;
    }

    public String getSenhaCliente() {
        return senhaCliente;
    }

    public void setSenhaCliente(String senhaCliente) {
        this.senhaCliente = senhaCliente;
    }

    public String getSutuacao() {
        return sutuacao;
    }

    public void setSutuacao(String sutuacao) {
        this.sutuacao = sutuacao;
    }

    public String getNovaSenha() {
        return novaSenha;
    }

    public void setNovaSenha(String novaSenha) {
        this.novaSenha = novaSenha;
    }

  
    
}
