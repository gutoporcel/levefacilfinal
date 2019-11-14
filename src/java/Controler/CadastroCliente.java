/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

//import dao.ClienteDao;
import dao.ClienteDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MCliente;

/**
 *
 * @author logonaf
 */
public class CadastroCliente extends HttpServlet {
    
    
    
    
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
            ClienteDao clienteDao = new ClienteDao();
            
            MCliente c = new MCliente();
            c.setPesquisaCpf(request.getParameter("cpf"));
            c.setNomeCliente(request.getParameter("nome"));
            c.setNumeroRgCliente(request.getParameter("rg"));
            c.setCpfCliente(request.getParameter("cpfc"));
            c.setDataNaciCliente(request.getParameter("datana"));
            c.setTelefoneCliente(request.getParameter("telefone"));
            c.setTellCelularCliente(request.getParameter("celular"));
            c.setEmailCliente(request.getParameter("email"));
            c.setSenhaCliente(request.getParameter("senha"));
            c.setCepCliente(request.getParameter("cep"));
            c.setLogradouroCliente(request.getParameter("endereco"));
            c.setNumeroCasaCliente(request.getParameter("numero"));
            c.setComplementoCliente(request.getParameter("complemento"));
            c.setBairroCliente(request.getParameter("bairro"));
            c.setCidadeCliente(request.getParameter("cidade"));
            c.setEstadoCliente(request.getParameter("estado"));

           
            if (request.getParameter("acao").equalsIgnoreCase("cadastrar")) {

                if (clienteDao.validaFormCadastro(c)) {

                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                    request.setAttribute("mensagemE", "Dados já cadastrados em nosso sistema.");
                    despachar.forward(request, response);

                }else if (clienteDao.inserirClinte(c)) {
                    
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                    request.setAttribute("mensagem", "Você foi cadastrado com sucesso!");
                    despachar.forward(request, response);
                    

                } else {
                    request.setAttribute("mensagemE", "Algo deu errado. Tente de novo.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                    
                    despachar.forward(request, response);

                }

            } else if (request.getParameter("acao").equalsIgnoreCase("verifica")) {

                if (clienteDao.verificaCad(c)) {
                    request.setAttribute("mensagem", "Você já possui cadastro.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                    despachar.forward(request, response);
                    //out.println("voce ja possui cadastro");
                }
             
                
                
                RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                request.setAttribute("mensagemE", "Você não possui cadastro.");
                despachar.forward(request, response);
                

                //response.sendRedirect("cadastroCliente.jsp");
            }
            response.sendRedirect("cadastroCliente.jsp");

        } catch (IOException | ServletException erro) {

            // RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
            //     despachar.forward(request, response);
            throw new RuntimeException("Erro7" + erro);

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
