/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.MotoristaDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MMotorista;

/**
 *
 * @author Guto
 */
public class AlteraMotorista extends HttpServlet {

    MotoristaDAO motoristadao = new MotoristaDAO();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        
        try {
            MMotorista m =  new MMotorista();
            m.setNome(request.getParameter("nome"));
            m.setNumero_rg(request.getParameter("rg"));
            m.setCpf(request.getParameter("cpf"));
            m.setData_nac(request.getParameter("dataNasc"));
            m.setTelefone(request.getParameter("telefone"));
            m.setCelular(request.getParameter("celular"));
            m.setEmail(request.getParameter("email"));
            m.setNumero_cnh(request.getParameter("cnh"));
           m.setValidade_cnh(request.getParameter("validadeCNH"));
           m.setCategoria_cnh(request.getParameter("categoria"));
           m.setCep(request.getParameter("cep"));
           m.setLogradouro(request.getParameter("logradouro"));
           m.setNumero(request.getParameter("numero"));
           m.setComplemento(request.getParameter("complemento"));
           m.setBairro(request.getParameter("bairro"));
           m.setCidade(request.getParameter("cidade"));
           m.setEstado(request.getParameter("estado"));
            
            
            
            
            
             m.setIdMotorista(Integer.parseInt(request.getParameter("id")));
             m.setSenha(request.getParameter("senha"));
             m.setNovaSenha(request.getParameter("novaSenha"));
            
            
            
             
            if (request.getParameter("acao").equalsIgnoreCase("alterarMotorista")) {
                motoristadao.alterarMotorista(m);
                RequestDispatcher despachar = request.getRequestDispatcher("dadosMotorista.jsp");
                despachar.forward(request, response);

            }else if(request.getParameter("acao").equalsIgnoreCase("alteraSenhaMotorista")){
                
               if(motoristadao.verificaSenhaMotorista(m)== false){
                    request.setAttribute("mensagemE", "Senha Coloque uma senha valida ");
                    RequestDispatcher despachar = request.getRequestDispatcher("alterarSenhaMotorista.jsp");
                    despachar.forward(request, response);
                   
                   
               } else{
                
                motoristadao.alteraSenhaMotorista(m);
                RequestDispatcher despachar = request.getRequestDispatcher("dadosMotorista.jsp");
                despachar.forward(request, response);
               }
                
            } else if (request.getParameter("acao").equalsIgnoreCase("excluirMotorista")) {
                motoristadao.excluirMotorista(m);
           response.sendRedirect("index.jsp");
            }
            
            
            
            
            //excluirMotorista
            
            
            
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
