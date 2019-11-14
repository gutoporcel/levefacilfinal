/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.CartaoDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Mcartao;

/**
 *
 * @author Guto
 */
public class Cartao extends HttpServlet {


   
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
     try{   
         CartaoDao cartaoDao = new CartaoDao();
       String nomeCartao = request.getParameter("nomecartao");
       String numeroCartao = request.getParameter("numerocartao");
       String bandeira = request.getParameter("bandeira");
       String cvv = request.getParameter("cvv");
       String validade = request.getParameter("validade");
       String idCliente = request.getParameter("idCliente");
       String idCartao = request.getParameter("idCartao");
       
       
         Mcartao cartao = new Mcartao();
        
       cartao.setId_cliente(Integer.parseInt(idCliente));
       cartao.setNomeCartao(nomeCartao);
       cartao.setNumeroCartao(numeroCartao);
       cartao.setBandeira(bandeira);
       cartao.setCvv(cvv);
       cartao.setValidadeCartao(validade); 
       //cartao.setId_cartao(Integer.parseInt(idCartao));
       
       
  
        if (request.getParameter("acao").equalsIgnoreCase("inseriCartao")) {
                if(cartaoDao.inserirCartao(cartao)){
     
      //  RequestDispatcher despachar = request.getRequestDispatcher("gerenciarCartaoCliente.jsp");
        //            despachar.forward(request, response);
                    
                }
                  response.sendRedirect("listaCartoesCliente.jsp");
        } else if(request.getParameter("acao").equalsIgnoreCase("alteraCartao")){
                  Mcartao cartao1 = new Mcartao();
        
       cartao1.setId_cliente(Integer.parseInt(idCliente));
       cartao1.setNomeCartao(nomeCartao);
       cartao1.setNumeroCartao(numeroCartao);
       cartao1.setBandeira(bandeira);
       cartao1.setCvv(cvv);
       cartao1.setValidadeCartao(validade); 
       cartao1.setId_cartao(Integer.parseInt(idCartao));
       
            
             if(  "OK".equals(cartaoDao.alteraCartao(cartao1))){
                 
             }
            response.sendRedirect("listaCartoesCliente.jsp");
            
            
        }
        
        
        
        
        
         } catch (IOException | NumberFormatException erro) {

             RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
                 despachar.forward(request, response);
            throw new RuntimeException("Erro7" + erro);

        }
        
    }


}
