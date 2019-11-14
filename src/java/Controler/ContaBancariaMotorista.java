/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.ContaBancariaMotoristaDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.McontaBancariaMotorista;

/**
 *
 * @author Guto
 */
public class ContaBancariaMotorista extends HttpServlet {

    
    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            ContaBancariaMotoristaDao contabancariadao = new   ContaBancariaMotoristaDao();

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
           //  conta.setIdContaBancaria(id_conta);
            
            
               if (request.getParameter("acao").equalsIgnoreCase("cadastroConta")) {
                   
            contabancariadao.inserirContaBancaria(conta);
            response.sendRedirect("listaCartoesMotorista.jsp");
            
            
            } else     if (request.getParameter("acao").equalsIgnoreCase("alteraConta")) {
                
                            int id_conta = Integer.parseInt((request.getParameter("idConta")));
                    McontaBancariaMotorista conta1 = new McontaBancariaMotorista();
                 conta1.setTitular(titular);
             conta1.setBanco(banco);
             conta1.setTipo(tipo);
             conta1.setAgencia(agencia);
             conta1.setNumero_conta(numero_conta);
             conta1.setIdMotorista(id_motorista);
            conta1.setIdContaBancaria(id_conta);  
                   
           if(              "OK".equals(contabancariadao.alteraConta(conta1))){}
            response.sendRedirect("listaCartoesMotorista.jsp");
            
            
            }
              
            
            
            
            
            
        } catch (IOException | NumberFormatException e) {
             response.sendRedirect("PaginaErro.jsp");
            
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
