/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import dao.MotoristaDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

     MotoristaDAO motoristaDao = new MotoristaDAO();
     private Connection conn;
    private PreparedStatement stmt;


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
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
            m.setPesquisaCpf(request.getParameter("cpf"));
            
            
            if (request.getParameter("acao").equalsIgnoreCase("cadastrar")) {

               if (motoristaDao.validaFormCadastroM(m)) {
                   request.setAttribute("mensagemE", "Dados já cadastrados em nosso sistema. ");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);

                } else if (motoristaDao.inserirMotorisa(m)) {
                    request.setAttribute("mensagem", "Você foi cadastrado com sucesso!");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);

                } else {
                    request.setAttribute("mensagemE", "Algo deu errado tente de novo.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);

                }

            } else if (request.getParameter("acao").equalsIgnoreCase("verifica")) {
                
                if (motoristaDao.verificaCad(m)) {
                    request.setAttribute("mensagem", "Você já possui cadastro.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                    despachar.forward(request, response);
                }
                request.setAttribute("mensagemE", "Você não possui Cadastro.");
                RequestDispatcher despachar = request.getRequestDispatcher("cadastroMotorista.jsp");
                despachar.forward(request, response);

                // response.sendRedirect("index.jsp");*/
            }
            response.sendRedirect("cadastroMotorista.jsp");
            
            
            
           
            
            
         } catch (Exception erro) {
            throw new RuntimeException("Erro7" + erro);

       }                                                                                   
             
      /*
        private String numero_cnh;
    private String validade_cnh;
    private String categoria_cnh;
        */
    }
    /*
      public boolean verificaCad(MMotorista motorista) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf FROM tb_motorista where cpf = ?";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, motorista.getPesquisaCpf());
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                achou = true;
            }
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return achou;
    }
    
    private boolean inserirMotorisa(MMotorista motorista) {
        boolean cada = false;
        String sql = "INSERT INTO tb_motorista(nome,data_nacimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero_casa,numero_rg,telefone,celular,senha,numero_cnh,data_validade_cnh,categoria_cnh) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)  ";
        try {
            conn = new ConnectionFactory().getConnection();

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, motorista.getNome());  //  nome           
            stmt.setString(2, motorista.getData_nac());//date
            stmt.setString(3, motorista.getEmail());//email
            stmt.setString(4, motorista.getCpf());//cpf
            stmt.setString(5, motorista.getLogradouro());//endereco
            stmt.setString(6, motorista.getComplemento()); //comple
            stmt.setString(7, motorista.getBairro());//bairro
            stmt.setString(8, motorista.getCep());//cep
            stmt.setString(9, motorista.getCidade());//cidade
            stmt.setString(10, motorista.getEstado()); //estado selected
            stmt.setString(11, motorista.getNumero());//numero casa
            stmt.setString(12, motorista.getNumero_rg());////numero rg
            stmt.setString(13, motorista.getTelefone());//tell
            stmt.setString(14, motorista.getCelular());//cell
            stmt.setString(15, motorista.getSenha());//senha  
            stmt.setString(16, motorista.getNumero_cnh());// numero cnh
            stmt.setString(17, motorista.getValidade_cnh());//validade cnh
            stmt.setString(18, motorista.getCategoria_cnh());// categoria
            
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (Exception erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }
    
    
    
    
    
    
    
    
    */
    
    
    
    
    
        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {return "Short description";}}// </editor-fold>
