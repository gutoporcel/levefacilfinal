/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

//import dao.ClienteDao;
import dao.ClienteDao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    
    
    ClienteDao clienteDao = new ClienteDao();
    
   // private Connection conn;
  //  private PreparedStatement stmt;

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
                    request.setAttribute("mensagemE", "Dados já cadastrados em nosso sistema.");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                    despachar.forward(request, response);

                }else if (clienteDao.inserirClinte(c)) {
                    request.setAttribute("mensagem", "Você foi cadastrado com sucesso!");
                    RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
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
                }
                request.setAttribute("mensagemE", "Você não possui cadastro.");
                RequestDispatcher despachar = request.getRequestDispatcher("cadastroCliente.jsp");
                despachar.forward(request, response);

                // response.sendRedirect("index.jsp");
            }
            response.sendRedirect("cadastroCliente.jsp");

        } catch (Exception erro) {

            // RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
            //     despachar.forward(request, response);
            throw new RuntimeException("Erro7" + erro);

        }
    }
//inserir o cadastro   o banco de dados
/*
    private boolean inserir(MCliente cliente) {
        boolean cada = false;
        String sql = "INSERT INTO tb_cliente(nome,data_nacimento,email,cpf,logradouro,complemento,bairro,cep,cidade,estado,numero,numero_rg,telefone,celular,senha,situacao) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)  ";
        try {
            conn = new ConnectionFactory().getConnection();

            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getNomeCliente());  //  nome           
            stmt.setString(2, cliente.getDataNaciCliente());//date
            stmt.setString(3, cliente.getEmailCliente());//email
            stmt.setString(4, cliente.getCpfCliente());//cpf
            stmt.setString(5, cliente.getLogradouroCliente());//endereco
            stmt.setString(6, cliente.getComplementoCliente()); //comple
            stmt.setString(7, cliente.getBairroCliente());//bairro
            stmt.setString(8, cliente.getCepCliente());//cep
            stmt.setString(9, cliente.getCidadeCliente());//cidade
            stmt.setString(10, cliente.getEstadoCliente()); //estado selected
            stmt.setString(11, cliente.getNumeroCasaCliente());//numero casa
            stmt.setString(12, cliente.getNumeroRgCliente());////numero rg
            stmt.setString(13, cliente.getTelefoneCliente());//tell
            stmt.setString(14, cliente.getTellCelularCliente());//cell
            stmt.setString(15, cliente.getSenhaCliente());//senha   
            stmt.setString(16, "ativo");//situacao   
            stmt.execute();
            stmt.close();
            cada = true;
        } catch (Exception erro) {
            throw new RuntimeException("Erro2: " + erro);
        }
        return cada;
    }

    public void alterar(MCliente cliente) {
        String sql = "";
        try {

        } catch (Exception erro) {
            throw new RuntimeException("Erro3: " + erro);
        }

    }

    public void excluir(int id) {
        String sql = "";
        try {

        } catch (Exception erro) {
            throw new RuntimeException("Erro4: " + erro);
        }

    }
        public ArrayList<MCliente> getAlunos() {
        
        ArrayList<MCliente> lista = new ArrayList<MCliente>();
        try {
           
            String sql = "SELECT * FROM tb_cliente ORDER BY nome";
            
             conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);
            
             ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                MCliente cliente = new MCliente();
                cliente.setIdCliente(rs.getInt("id_cliente"));
                cliente.setNomeCliente(rs.getString("data_nascimento"));
            
                
                lista.add(cliente);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return lista;
    }
    
    
    
    

    //Busca por cpf  para ver se tem cadastro
    public boolean verificaCad(MCliente cliente) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf FROM tb_cliente where cpf = ?";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getPesquisaCpf());
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

    public boolean validaFormCadastro(MCliente cliente) {
        boolean achou = false;
        try {

            String sql = "SELECT cpf ,email, numero_rg  FROM tb_cliente where cpf =? or email =? or numero_rg=?;";
            conn = new ConnectionFactory().getConnection();
            stmt = conn.prepareStatement(sql);

            stmt.setString(1, cliente.getCpfCliente());
            stmt.setString(2, cliente.getEmailCliente());
            stmt.setString(3, cliente.getNumeroRgCliente());
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
*/
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
