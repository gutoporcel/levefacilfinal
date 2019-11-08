/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author logonaf
 */
public class MMotorista  {
    private int idMotorista;
    private String pesquisaCpf;
    private String nome;
    private String telefone;
    private String logradouro;
    private String email;
    private String numero;
    private String complemento;
    private String bairro;
    private String data_nac;
    private String cep;
    private String cidade;
    private String estado;
    private String numero_rg;
    private String numero_cnh;
    private String validade_cnh;
    private String categoria_cnh;
    private String cpf;
    private String senha;
     private String celular;
     private String situacao;
      private String novaSenha;

    public MMotorista() {
    }

    public MMotorista(int idMotorista, String pesquisaCpf, String nome, String telefone, String logradouro, String email, String numero, String complemento, String bairro, String data_nac, String cep, String cidade, String estado, String numero_rg, String numero_cnh, String validade_cnh, String categoria_cnh, String cpf, String senha, String celular, String situacao, String novaSenha) {
        this.idMotorista = idMotorista;
        this.pesquisaCpf = pesquisaCpf;
        this.nome = nome;
        this.telefone = telefone;
        this.logradouro = logradouro;
        this.email = email;
        this.numero = numero;
        this.complemento = complemento;
        this.bairro = bairro;
        this.data_nac = data_nac;
        this.cep = cep;
        this.cidade = cidade;
        this.estado = estado;
        this.numero_rg = numero_rg;
        this.numero_cnh = numero_cnh;
        this.validade_cnh = validade_cnh;
        this.categoria_cnh = categoria_cnh;
        this.cpf = cpf;
        this.senha = senha;
        this.celular = celular;
        this.situacao = situacao;
        this.novaSenha = novaSenha;
    }

    @Override
    public String toString() {
        return "MMotorista{" + "idMotorista=" + idMotorista + ", pesquisaCpf=" + pesquisaCpf + ", nome=" + nome + ", telefone=" + telefone + ", logradouro=" + logradouro + ", email=" + email + ", numero=" + numero + ", complemento=" + complemento + ", bairro=" + bairro + ", data_nac=" + data_nac + ", cep=" + cep + ", cidade=" + cidade + ", estado=" + estado + ", numero_rg=" + numero_rg + ", numero_cnh=" + numero_cnh + ", validade_cnh=" + validade_cnh + ", categoria_cnh=" + categoria_cnh + ", cpf=" + cpf + ", senha=" + senha + ", celular=" + celular + ", situacao=" + situacao + ", novaSenha=" + novaSenha + '}';
    }

    
   

    public int getIdMotorista() {
        return idMotorista;
    }

    public void setIdMotorista(int idMotorista) {
        this.idMotorista = idMotorista;
    }

    public String getPesquisaCpf() {
        return pesquisaCpf;
    }

    public void setPesquisaCpf(String pesquisaCpf) {
        this.pesquisaCpf = pesquisaCpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getData_nac() {
        return data_nac;
    }

    public void setData_nac(String data_nac) {
        this.data_nac = data_nac;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNumero_rg() {
        return numero_rg;
    }

    public void setNumero_rg(String numero_rg) {
        this.numero_rg = numero_rg;
    }

    public String getNumero_cnh() {
        return numero_cnh;
    }

    public void setNumero_cnh(String numero_cnh) {
        this.numero_cnh = numero_cnh;
    }

    public String getValidade_cnh() {
        return validade_cnh;
    }

    public void setValidade_cnh(String validade_cnh) {
        this.validade_cnh = validade_cnh;
    }

    public String getCategoria_cnh() {
        return categoria_cnh;
    }

    public void setCategoria_cnh(String categoria_cnh) {
        this.categoria_cnh = categoria_cnh;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public String getNovaSenha() {
        return novaSenha;
    }

    public void setNovaSenha(String novaSenha) {
        this.novaSenha = novaSenha;
    }

   
   

 
}
