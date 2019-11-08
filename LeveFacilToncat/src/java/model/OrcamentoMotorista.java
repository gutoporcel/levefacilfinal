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
public class OrcamentoMotorista {
    /*
    create table if not exists `db_leve_facil`.`tb_retorno_orcamento`(
id_retorno_orcamento int(11)not null,
valor float (11) not null,
id_nome_categoria_carreto varchar (100) not null,
id_motorista int (11) not null,
primary key (`id_retorno_orcamento`),
FOREIGN KEY (`id_motorista`)  REFERENCES `db_leve_facil`.`tb_motorista` (`id_motorista`)
FOREIGN KEY (`id_nome_categoria_carreto`)  REFERENCES `db_leve_facil`.`tb_pedido_orcamento` (`id_nome_categoria_carreto`)*/

    private int id_orcamento;
    private float valor;
    private int id_pedido ;
    private int id_motorista;

    public OrcamentoMotorista() {
    }

    public OrcamentoMotorista(int id_orcamento, float valor, int id_pedido, int id_motorista) {
        this.id_orcamento = id_orcamento;
        this.valor = valor;
        this.id_pedido = id_pedido;
        this.id_motorista = id_motorista;
    }

    @Override
    public String toString() {
        return "OrcamentoMotorista{" + "id_orcamento=" + id_orcamento + ", valor=" + valor + ", id_pedido=" + id_pedido + ", id_motorista=" + id_motorista + '}';
    }

    public int getId_orcamento() {
        return id_orcamento;
    }

    public void setId_orcamento(int id_orcamento) {
        this.id_orcamento = id_orcamento;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    public int getId_motorista() {
        return id_motorista;
    }

    public void setId_motorista(int id_motorista) {
        this.id_motorista = id_motorista;
    }
    
   
    
    
    
    
    
    
}
