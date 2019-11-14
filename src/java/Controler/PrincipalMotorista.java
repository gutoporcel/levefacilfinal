/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

//import static Controler.PrincipalCliente.calcular;
import dao.OrcamentoDao;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrcamentoMotorista;

/**
 *
 * @author Guto
 */
public class PrincipalMotorista extends HttpServlet {
    
    
   


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           
            throws ServletException, IOException {
        try {
             OrcamentoDao orcamentodao = new OrcamentoDao();
            OrcamentoMotorista orca = new OrcamentoMotorista();
            orca.setValor(Float.parseFloat(request.getParameter("valor")));
            orca.setId_motorista(Integer.parseInt(request.getParameter("idMotorista")));
            orca.setId_pedido(Integer.parseInt(request.getParameter("idPedido")));
            
            
            
            
             if (request.getParameter("acao").equalsIgnoreCase("inserirOrcamento")) {
                orcamentodao.inserirOrcamento(orca);
                orcamentodao.aceitaPedido(orca);
                  response.sendRedirect("dashboardMotorista.jsp");
             }

            
        } catch (IOException | NumberFormatException erro) {

             RequestDispatcher despachar = request.getRequestDispatcher("paginaErro.jsp");
                 despachar.forward(request, response);
            throw new RuntimeException("Erro7" + erro);

        }        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
