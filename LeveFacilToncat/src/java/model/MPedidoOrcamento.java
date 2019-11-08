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
public class MPedidoOrcamento {
    
    
    
     private int IdCliente;
     private String tipoCarreto;
     private int id_pedidoOrca;
     private String localPartida;
     private String destino;
     private String Distancia;
     private String data;
     private String  hora;
     private String descricao;
     private String situacao;

    public MPedidoOrcamento() {
    }

    public MPedidoOrcamento(int IdCliente, String tipoCarreto, int id_pedidoOrca, String localPartida, String destino, String Distancia, String data, String hora, String descricao, String situacao) {
        this.IdCliente = IdCliente;
        this.tipoCarreto = tipoCarreto;
        this.id_pedidoOrca = id_pedidoOrca;
        this.localPartida = localPartida;
        this.destino = destino;
        this.Distancia = Distancia;
        this.data = data;
        this.hora = hora;
        this.descricao = descricao;
        this.situacao = situacao;
    }

    @Override
    public String toString() {
        return "MPedidoOrcamento{" + "IdCliente=" + IdCliente + ", tipoCarreto=" + tipoCarreto + ", id_pedidoOrca=" + id_pedidoOrca + ", localPartida=" + localPartida + ", destino=" + destino + ", Distancia=" + Distancia + ", data=" + data + ", hora=" + hora + ", descricao=" + descricao + ", situacao=" + situacao + '}';
    }

 




    public int getId_pedidoOrca() {
        return id_pedidoOrca;
    }

    public void setId_pedidoOrca(int id_pedidoOrca) {
        this.id_pedidoOrca = id_pedidoOrca;
    }

    public String getLocalPartida() {
        return localPartida;
    }

    public void setLocalPartida(String localPartida) {
        this.localPartida = localPartida;
    }

    public String getDestino() {
        return destino;
    }

    public void setDestino(String destino) {
        this.destino = destino;
    }

    public String getDistancia() {
        return Distancia;
    }

    public void setDistancia(String Distancia) {
        this.Distancia = Distancia;
    }



    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getIdCliente() {
        return IdCliente;
    }

    public void setIdCliente(int IdCliente) {
        this.IdCliente = IdCliente;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public String getTipoCarreto() {
        return tipoCarreto;
    }

    public void setTipoCarreto(String tipoCarreto) {
        this.tipoCarreto = tipoCarreto;
    }
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
    
}
