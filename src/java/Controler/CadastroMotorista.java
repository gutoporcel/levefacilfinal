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
 * @author logonaf
 */
public class CadastroMotorista extends HttpServlet {

   
   


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
              MotoristaDAO motoristaDao = new MotoristaDAO();
              MMotorista m = new MMotorista();
           
            m.setNome(request.getParameter("nome"));
            m.setTelefone(request.getParameter("telefone"));
            m.setNumero_rg(request.getParameter("rg"));
            m.setLogradouro(request.getParameter("endereco"));
            m.setEmail(request.getParameter("email"));
            m.setNumero(request.getParameter("numero"));
            m.setComplemento(request.getParameter("complemento"));
            m.setBairro(request.getParameter("bairro"));
            m.setData_nac(request.getParameter("nascimento"));
            m.setCep(request.getParameter("cep"));
            m.setCidade(request.getParameter("cidade"));
            m.setEstado(request.getParameter("estado"));
            m.setNumero_rg(request.getParameter("rg"));
            m.setNumero_cnh(request.getParameter("cnh"));
            m.setValidade_cnh(request.getParameter("validadeCNH"));
            m.setCategoria_cnh(request.getParameter("categoria"));
            m.setCpf(request.getParameter("cpfm"));
            m.setSenha(request.getParameter("senha"));
            m.setCelular(request.getParameter("celular"));
          
            
            
            if (request.getParameter("acao").equalsIgnoreCase("cadastrar")) {

               if (motoristaDao.validaFormCadastroM(m)) {
                   request.setAttribute("mensagemE", "Dados já cadastrados em nosso sistema. ");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);

                } else if (motoristaDao.inserirMotorisa(m)) {
                    request.setAttribute("mensagem", "Você foi cadastrado com sucesso!");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);

                } 

            } else if (request.getParameter("acao").equalsIgnoreCase("verifica")) {
                
                MMotorista m1 = new MMotorista();
                  m1.setPesquisaCpf(request.getParameter("cpf"));
                
                if (motoristaDao.verificaCad(m1)) {
                    request.setAttribute("mensagem", "Você já possui cadastro.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);
                }else{
                request.setAttribute("mensagemE", "Você não possui Cadastro.");
                RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                despachar.forward(request, response);
                }
                // response.sendRedirect("index.jsp");*/
            }
           // response.sendRedirect("cadastroMotorista.jsp");
            
         } catch (Exception erro) {
         
       }                                                                                   

    }
 
/*    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
*/
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {return "Short description";}

}// </editor-fold>
