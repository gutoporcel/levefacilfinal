/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.ContaBancariaMotoristaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MCategoriaCarreto;
import model.McontaBancariaMotorista;

/**
 *
 * @author Guto
 */
public class ContaBancariaMotorista extends HttpServlet {

    ContaBancariaMotoristaDao contabancariadao = new   ContaBancariaMotoristaDao();

    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String titular = request.getParameter("titular");
            String banco = request.getParameter("banco");
            String tipo = request.getParameter("tipoConta");
            String numero_conta = request.getParameter("conta");
             String agencia = request.getParameter("agencia");
             int id_motorista = Integer.parseInt(request.getParameter("id"));
             
             McontaBancariaMotorista conta = new McontaBancariaMotorista();
             
             
             conta.setTitular(titular);
             conta.setBanco(banco);
             conta.setTipo(tipo);
             conta.setAgencia(agencia);
             conta.setNumero_conta(numero_conta);
             conta.setIdMotorista(id_motorista);
            
            
               if (request.getParameter("acao").equalsIgnoreCase("cadastroConta")) {
                   
            contabancariadao.inserirContaBancaria(conta);
            response.sendRedirect("listaCartoesMotorista.jsp");
            
            
            }
            
            
            
            
            
        } catch (Exception e) {
        }
                
        
        
      
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
