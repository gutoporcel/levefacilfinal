/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.ClienteDao;
import dao.MotoristaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.MCliente;
import model.MMotorista;

/**
 *
 * @author Guto
 */
public class GerenciaUsuarioCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        
        
        try{

        String id = request.getParameter("ID");
        String cpf = request.getParameter("CPF");
        String situacao = request.getParameter("situacao");
        
        /*
                String idm = request.getParameter("IDM");
        String cpfm = request.getParameter("CPFM");
        String situacaom = request.getParameter("situacaoM");*/

        if (request.getParameter("acao").equalsIgnoreCase("confirma")) {

            ClienteDao clienteDao = new ClienteDao();
            MCliente c = new MCliente();

            c.setIdCliente((Integer) Integer.parseInt(id));
            c.setCpfCliente(cpf);
            c.setSutuacao(situacao);

            clienteDao.ativaCliente(c);
             response.sendRedirect("gerenciarUsuarioscliente.jsp");
            //RequestDispatcher despachar = request.getRequestDispatcher("gerenciarUsuarioscliente.jsp");
            //despachar.forward(request, response);

        } else if (request.getParameter("acao").equalsIgnoreCase("confirmaM")) {
            MotoristaDAO motoristaDao = new MotoristaDAO();
            MMotorista m = new MMotorista();

            m.setIdMotorista((Integer) Integer.parseInt(id));
            m.setCpf(cpf);
            m.setSituacao(situacao);

            motoristaDao.ativaMotorista(m);
              response.sendRedirect("gerenciarUsuarioscarretos.jsp");

            //RequestDispatcher despachar = request.getRequestDispatcher("gerenciarUsuarioscarretos.jsp");
            //despachar.forward(request, response);

        }
         } catch (Exception erro) {

            // RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
            //     despachar.forward(request, response);
            throw new RuntimeException("Erro7" + erro);

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
