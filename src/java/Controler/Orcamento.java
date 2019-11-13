/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.OrcamentoDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrcamentoMotorista;

/**
 *
 * @author Guto
 */
public class Orcamento extends HttpServlet {

    


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            
        OrcamentoDao orcamentodao = new OrcamentoDao();
                    
                 int codigo = Integer.parseInt(request.getParameter("codigo"));
                  OrcamentoMotorista moto = new OrcamentoMotorista();
                  moto.setId_pedido(codigo);
        
        
              if (request.getParameter("acao").equalsIgnoreCase("ativar")) {
                  
                  
                
                 if ("OK".equals(orcamentodao.pedidoAguardandoPagamento(moto))){
                     
    
                     
                       response.sendRedirect("gerenciarPagamentoCliente.jsp");
                 }

            // response.sendRedirect("listaSolicitacoesCliente.jsp");
            //RequestDispatcher despachar = request.getRequestDispatcher("listaSolicitacoesCliente.jsp");
            //despachar.forward(request, response);

        }else if(request.getParameter("acao").equalsIgnoreCase("recusar")){
            
            if ("OK".equals(orcamentodao.recusarPedido(moto))){
            response.sendRedirect("listaSolicitacoesCliente.jsp");
            }
            
            
        }else if(request.getParameter("acao").equalsIgnoreCase("pagar")){
           if ("OK".equals(orcamentodao.finalizaPagamento(moto))){
          response.sendRedirect("listaSolicitacoesCliente.jsp");
            
           }
            
            
        }else if(request.getParameter("acao").equalsIgnoreCase("entregaPAgamento")){
            if ("OK".equals(orcamentodao.pedidoEntregue(moto))){
            response.sendRedirect("dashboardMotorista.jsp");
            }
            
        }
        
        
   
        
        
          } catch (IOException | NumberFormatException e) {
              
               response.sendRedirect("paginaErro.jsp");
              
        }
        
        
    }

 
    
    
    
    
    
    
    
    
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
