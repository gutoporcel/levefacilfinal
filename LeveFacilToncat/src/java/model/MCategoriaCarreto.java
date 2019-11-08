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
public class MCategoriaCarreto {
    private int idCategoriaCarreto;
    private String nomeCategoriaCarreto;

    public MCategoriaCarreto() {
    }

    public MCategoriaCarreto(int idCategoriaCarreto, String nomeCategoriaCarreto) {
        this.idCategoriaCarreto = idCategoriaCarreto;
        this.nomeCategoriaCarreto = nomeCategoriaCarreto;
    }

    @Override
    public String toString() {
        return "MCategoriaCarreto{" + "idCategoriaCarreto=" + idCategoriaCarreto + ", nomeCategoriaCarreto=" + nomeCategoriaCarreto + '}';
    }

    public int getIdCategoriaCarreto() {
        return idCategoriaCarreto;
    }

    public void setIdCategoriaCarreto(int idCategoriaCarreto) {
        this.idCategoriaCarreto = idCategoriaCarreto;
    }

    public String getNomeCategoriaCarreto() {
        return nomeCategoriaCarreto;
    }

    public void setNomeCategoriaCarreto(String nomeCategoriaCarreto) {
        this.nomeCategoriaCarreto = nomeCategoriaCarreto;
    }
    
    
    
    
}
