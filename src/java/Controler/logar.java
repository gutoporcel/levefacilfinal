/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.ConnectionFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Login;
import org.apache.catalina.ant.SessionsTask;
import sun.security.pkcs11.wrapper.Functions;

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

            Login l = new Login();
            l.setUsername(request.getParameter("username"));
            l.setSenha(request.getParameter("password"));
            if (request.getParameter("acao").equalsIgnoreCase("logar")) {
// login administrador
                if (validaLoginAdmin(l)) {

                   String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    //session.setAttribute("id", l.getId_usuario());
                    session.setAttribute("usuario",user);
                    response.sendRedirect("dashboardAdmin.jsp");
                    
                   

                } else if (validaLoginCliente(l) == true && validaLoginMotorista(l) == true) {
                   // Login objeto =  new Login(nome, Senha, nome, 0);
                    /* 
                     private String username;
    private String Senha;
    private String nome; 
    private int id_usuario*/
                    
                    
                    
                    
                    String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    //session.setAttribute("id", l.getId_usuario());
                    session.setAttribute("usuario",user);
                    response.sendRedirect("selectPerfil.jsp");

                } else if (validaLoginMotorista(l)) {
                      String nome = l.getNome();
                    String cpf = l.getUsername();
                    String senha =  l.getSenha();
                    int id =l.getId_usuario();
                    
                    Login user = new Login(cpf, senha, nome, id);
                    
         

                    HttpSession session = request.getSession();
                    //session.setAttribute("id", l.getId_usuario());
                    session.setAttribute("usuario",user);
                    response.sendRedirect("dashboardMotorista.jsp");

                } else if (validaLoginCliente(l)) {

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

        } catch (Exception e) {

        }

    }

    public boolean validaLoginMotorista(Login login) {
        boolean achou = false;
        try {

            String sql = "SELECT nome, id_motorista, cpf, senha  FROM tb_motorista where cpf =? and senha =? and situacao =?;";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());
            stmt.setString(3, "ativo");

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_motorista"));
                login.setUsername(rs.getString("cpf"));
                 login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;

    }

    public boolean validaLoginCliente(Login login) {

        boolean achou = false;
        try {

            String sql = "SELECT nome, id_cliente, cpf, senha  FROM tb_cliente where cpf =? and senha =? and situacao =?; ";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());
            stmt.setString(3, "ativo");

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_cliente"));
                login.setUsername(rs.getString("cpf"));
                login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;
    }

    public boolean validaLoginAdmin(Login login) {

        boolean achou = false;
        try {

            String sql = "SELECT nome, id_administrador, cpf, senha  FROM tb_administrador where cpf =? and senha =? ; ";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, login.getUsername());
            stmt.setString(2, login.getSenha());

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                 login.setNome(rs.getString("nome"));
                login.setId_usuario(rs.getInt("id_administrador"));
                login.setUsername(rs.getString("cpf"));
                 login.setSenha(rs.getString("senha"));

                achou = true;

            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;

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
