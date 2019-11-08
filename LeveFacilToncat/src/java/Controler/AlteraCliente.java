/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.ClienteDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MCliente;

/**
 *
 * @author Guto
 */
public class AlteraCliente extends HttpServlet {

    ClienteDao clienteDao = new ClienteDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            MCliente c = new MCliente();

            c.setNomeCliente(request.getParameter("nome"));
            c.setDataNaciCliente(request.getParameter("dataNascimento"));
            c.setEmailCliente(request.getParameter("email"));
            c.setLogradouroCliente(request.getParameter("edereco"));
            c.setComplementoCliente(request.getParameter("complemento"));
            c.setBairroCliente(request.getParameter("bairro"));
            c.setCepCliente(request.getParameter("cep"));
            c.setCidadeCliente(request.getParameter("cidade"));
            c.setEstadoCliente(request.getParameter("estado"));
            c.setNumeroCasaCliente(request.getParameter("numeroCasa"));
            c.setNumeroRgCliente(request.getParameter("rg"));
            c.setTelefoneCliente(request.getParameter("telefone"));
            c.setTellCelularCliente(request.getParameter("celular"));
            c.setCpfCliente(request.getParameter("cpf"));
            c.setIdCliente(Integer.parseInt(request.getParameter("id")));
            c.setNovaSenha(request.getParameter("novaSenha"));
            c.setSenhaCliente(request.getParameter("senha"));
            
           

            if (request.getParameter("acao").equalsIgnoreCase("alterar")) {
                clienteDao.alterarCliente(c);
                RequestDispatcher despachar = request.getRequestDispatcher("dadosCliente.jsp");
                despachar.forward(request, response);

            }else if(request.getParameter("acao").equalsIgnoreCase("alteraSenha")){
                
               if(clienteDao.verificaSenha(c)== false){
                    request.setAttribute("mensagemE", "Senha Coloque uma senha valida ");
                    RequestDispatcher despachar = request.getRequestDispatcher("alterarSenhaCliente.jsp");
                    despachar.forward(request, response);
                   
                   
               } else{
                
                clienteDao.alteraSenhaCliente(c);
                RequestDispatcher despachar = request.getRequestDispatcher("dadosCliente.jsp");
                despachar.forward(request, response);
               }
                
            }

        } catch (Exception e) {
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
