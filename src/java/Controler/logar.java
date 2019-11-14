/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.LogarDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Login;

/**
 *
 * @author Guto
 */
public class logar extends HttpServlet {

    private Connection conn;
    private PreparedStatement stmt;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

        }
    }

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
        processRequest(request, response);
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
  LogarDao logardao = new LogarDao();
            Login l = new Login();
            l.setUsername(request.getParameter("username"));
            l.setSenha(request.getParameter("password"));
            if (request.getParameter("acao").equalsIgnoreCase("logar")) {
// login administrador
                if (logardao.validaLoginAdmin(l)) {

                   String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    session.setAttribute("usuario",user);
                    response.sendRedirect("dashboardAdmin.jsp");
                    
                   

                } else if (logardao.validaLoginCliente(l) == true && logardao.validaLoginMotorista(l) == true) {
                    
                    String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    session.setAttribute("usuario",user);
                    response.sendRedirect("selectPerfil.jsp");

                } else if (logardao.validaLoginMotorista(l)) {
                      String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    session.setAttribute("usuario",user);
                    response.sendRedirect("dashboardMotorista.jsp");

                } else if (logardao.validaLoginCliente(l)) {

                    String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    //session.setAttribute("id", l.getId_usuario());
                    session.setAttribute("usuario",user);
                    response.sendRedirect("dashboardCliente.jsp");
                } else {

                    request.setAttribute("mensagemE", "login invalido, <br>Tente um login valido.");
                    RequestDispatcher despachar = request.getRequestDispatcher("login.jsp");
                    despachar.forward(request, response);

                }
            }

        } catch (IOException | ServletException e) {
            
             response.sendRedirect("paginaErro.jsp");

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

    private void setAttribute(String usuario, String usuario0) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
