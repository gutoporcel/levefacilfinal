/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.PedidoOrcamentoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.RequestDispatcher;
import model.MPedidoOrcamento;
 
//import org.dom4j.Document;
//import org.dom4j.DocumentException;
//import org.dom4j.Element;
//import org.dom4j.io.SAXReader;

/**
 *
 * @author Guto
 */
public class PrincipalCliente extends HttpServlet {

 PedidoOrcamentoDao pedidodao = new PedidoOrcamentoDao();
 

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }
 
 
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             processRequest(request, response); 
           RequestDispatcher despachar = request.getRequestDispatcher("dashboardCliente.jsp");
                    despachar.forward(request, response);
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        
        
        try {
            
    
        
            MPedidoOrcamento pe = new MPedidoOrcamento();
            pe.setTipoCarreto(request.getParameter("tipoCarreto"));
            pe.setData(request.getParameter("data"));
            pe.setHora(request.getParameter("hora-cons"));
            pe.setDescricao(request.getParameter("descricao"));
            pe.setDestino(request.getParameter("destino"));
            pe.setLocalPartida(request.getParameter("partida"));
            pe.setDistancia(request.getParameter("distancia"));
            pe.setIdCliente(Integer.parseInt(request.getParameter("id")));
        
       if (request.getParameter("acao").equalsIgnoreCase("cadastrar")) {
       
           
           if (pedidodao.cadastraPedido(pe)) {
               
               
                 
                    //request.setAttribute("mensagem", "Você foi cadastrado com sucesso!");
                 //   RequestDispatcher despachar = request.getRequestDispatcher("dashboardCliente.jsp");
                  
                   // despachar.forward(request, response);
           }
          
         response.sendRedirect("dashboardCliente.jsp");
       }
       
  
     } catch (Exception e) {
         
          RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
                    despachar.forward(request, response);
       
         
         
        }
 
   

        
        
       
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


    
    

}
