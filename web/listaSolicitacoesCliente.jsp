
<%@page import="model.OrcamentoMotorista"%>
<%@page import="dao.OrcamentoDao"%>
<%@page import="model.MFinalizaOrcamento"%>
<%@page import="dao.PedidoOrcamentoDao"%>
<%@page import="model.MPedidoOrcamento"%>
<%@page import="java.util.ArrayList"%>
<%@include file="sessaocliente.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
<meta charset="utf-8">

<!-- Viewport Metatag -->
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- Plugin Stylesheets first to ease overrides -->
<link rel="stylesheet" type="text/css" href="plugins/colorpicker/colorpicker.css" media="screen">

<!-- Required Stylesheets -->
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/fonts/ptsans/stylesheet.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/fonts/icomoon/style.css" media="screen">

<link rel="stylesheet" type="text/css" href="css/mws-style.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/icons/icol16.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/icons/icol32.css" media="screen">

<!-- Demo Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/demo.css" media="screen">

<!-- jQuery-UI Stylesheet -->
<link rel="stylesheet" type="text/css" href="jui/css/jquery.ui.all.css" media="screen">
<link rel="stylesheet" type="text/css" href="jui/jquery-ui.custom.css" media="screen">

<!-- Theme Stylesheet -->
<link rel="stylesheet" type="text/css" href="css/mws-theme.css" media="screen">
<link rel="stylesheet" type="text/css" href="css/themer.css" media="screen">

<title>Leve Fácil - Dashboard</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<script>
     function ativarOrcamento()
            {
               // if(validaCadastroCartao()){
                    document.formOrca.acao.value = 'ativar';
                    document.formOrca.submit();
               // }
            }
        function recusaOrcamento()
            {
               // if(validaCadastroCartao()){
                    document.formOrca.acao.value = 'recusar';
                    document.formOrca.submit();
               // }
            }
    
    
    
</script>

</head>

<body>

	
	<!-- Header -->
	<div id="mws-header" class="clearfix">
    
    	<!-- Logo Container -->
    	<div id="mws-logo-container">
        
        	<!-- Logo Wrapper, images put within this wrapper will always be vertically centered -->
        	<div id="mws-logo-wrap">
            	<img src="images/mws-logo.png" alt="Leve Fácil">
			</div>
        </div>
        
        <!-- User Tools (notifications, logout, profile, change password) -->
        <div id="mws-user-tools" class="clearfix">
        
            <!-- User Information and functions section -->
            <div id="mws-user-info" class="mws-inset">
            
            	<!-- User Photo -->
            	<div id="mws-user-photo">
                	<i class="icol32-user"></i>
                </div>
                
                <!-- Username and Functions -->
                <div id="mws-user-functions">
                    <div id="mws-username">
                        Olá, <%= usuario %>
                    </div>
                    <ul>
                        <li><a href="alterarSenhaCliente.jsp">Mudar Senha</a></li>
                        <li><a href="login.jsp">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Start Main Wrapper -->
    <div id="mws-wrapper">
    
    	<!-- Necessary markup, do not remove -->
		<div id="mws-sidebar-stitch"></div>
		<div id="mws-sidebar-bg"></div>
        
        <!-- Sidebar Wrapper -->
        <div id="mws-sidebar">
        
            <!-- Hidden Nav Collapse Button -->
            <div id="mws-nav-collapse">
                <span></span>
                <span></span>
                <span></span>
            </div>
            
            <!-- Main Navigation -->
            <div id="mws-navigation">
                <ul>
                   <li ><a href="dashboardCliente.jsp"><i class="icon-home"></i> Home</a></li>
                    <li><a href="dadosCliente.jsp"><i class="icon-list-2"></i> Perfil</a></li>
                    
                    <li><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cartões</a></li>
                   <li><a href="listaTransacoesCliente.jsp"><i class="icon-briefcase"></i>Histórico</a></li>
                    <li class="active"> <a href="listaSolicitacoesCliente.jsp"><i class="icon-check"></i>Solicitações</a></li>
                    <li><a href="gerenciarPagamentoCliente.jsp"><i class="icon-lock"></i>Pagamentos</a></li>
                    <li><a href="sac.jsp"><i class="icol32-user"></i>SAC </a></li>
                   
                </ul>
            </div>         
        </div>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Inner Container Start -->
            <div class="container">
                
                
                
                
                
                
                
                 <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Pedidos  em andamento</span>
                    </div>
                    
                    <div class="mws-panel-body no-padding">
                     
                           <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Código  </th>
                                    <th>Nome Cliente </th>
                                    <th>Nome Motorista</th>
                                    <th>Local Partida</th>
                                    <th>Local Destino</th>
                                    <th>Distância</th>
                                    <th>Categoria</th>
                                     <th>Descrição</th>
                                    <th>Situação</th>
                                    <th>Data</th>
                                    <th>Valor</th>
                                </tr>
                            </thead>
                            <tbody>
                           
                                              <%
                                                  //MPedidoOrcamento ped = new MPedidoOrcamento();
                                                  //ped.setIdCliente(id);
                                        ArrayList<MFinalizaOrcamento> lista2 = new OrcamentoDao().listarorcamentoClientepago(user);
                                        for (int i = 0; i < lista2.size(); i++) {
                                            out.println("<tr>");
                                          //  out.println("<td onclick=valor(" + lista2.get(i).getId_pedidoOrca() + ")>" + lista2.get(i).getId_pedidoOrca()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getIdPedido()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getNomeCliente()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getNomeMotorista()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getPartida()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getDistino()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getDistancia() + "</td>");
                                            out.println("<td>" + lista2.get(i).getCategoria()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getDescricao()+ "</td>");
                                            out.println("<td style='color:green'>" + lista2.get(i).getSituacao()+ "</td>");                                        
                                            out.println("<td>" + lista2.get(i).getData()+ "</td>");
                                            out.println("<td> R$ " + lista2.get(i).getValor()+ "</td>");

                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usuário" /></td>
                                            out.println("</tr>");

                                        }


                                    %>  
                            </tbody>
                        </table>
                    </div>
                </div>
                
                
                
                
                
                
                 <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Propostas Motorista</span>
                    </div>
                     
                     
                     
                     
                    
                      <form name="formOrca" action="Orcamento" method="post">

                            <div class="mws-panel-body"  >
                          

                                <label>Código do Pedido</label>
                                <input type="text" id="id" name="codigo" class=""  />

                             <button class="btn" type="button" onclick="ativarOrcamento()" value="inserirOrcamento" /><i class="icol-accept"></i>Aceitar</button>
                            <button class="btn" type="button" onclick="recusaOrcamento()" value="inserirOrcamento" /><i class="icol-delete"></i>Recusar</button>



        <input type="hidden" name="acao">




                            </div>

                        </form>
                     
                     
                     
                    <div class="mws-panel-body no-padding">
                     
                           <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Código  </th>
                                    <th>Nome Cliente </th>
                                    <th>Nome Motorista</th>
                                    <th>Local Partida</th>
                                    <th>Local Destino</th>
                                    <th>Distância</th>
                                    <th>Categoria</th>
                                     <th>Descrição</th>
                                    <th>Situação</th>
                                    <th>Data</th>
                                    <th>Valor</th>
                                </tr>
                            </thead>
                            <tbody>
                           
                                              <%
                                                  //MPedidoOrcamento ped = new MPedidoOrcamento();
                                                  //ped.setIdCliente(id);
                                        ArrayList<MFinalizaOrcamento> lista = new OrcamentoDao().listarorcamentoClienteAnalise(user);
                                        for (int i = 0; i < lista.size(); i++) {
                                            out.println("<tr>");
                                          //  out.println("<td onclick=valor(" + lista2.get(i).getId_pedidoOrca() + ")>" + lista2.get(i).getId_pedidoOrca()+ "</td>");
                                            out.println("<td>" + lista.get(i).getIdPedido()+ "</td>");
                                            out.println("<td>" + lista.get(i).getNomeCliente()+ "</td>");
                                            out.println("<td>" + lista.get(i).getNomeMotorista()+ "</td>");
                                            out.println("<td>" + lista.get(i).getPartida()+ "</td>");
                                            out.println("<td>" + lista.get(i).getDistino()+ "</td>");
                                            out.println("<td>" + lista.get(i).getDistancia() + "</td>");
                                            out.println("<td>" + lista.get(i).getCategoria()+ "</td>");
                                            out.println("<td>" + lista.get(i).getDescricao()+ "</td>");
                                            out.println("<td style='color:green'>" + lista.get(i).getSituacao()+ "</td>");                                        
                                            out.println("<td>" + lista.get(i).getData()+ "</td>");
                                            out.println("<td> R$ " + lista.get(i).getValor()+ "</td>");

                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usuário" /></td>
                                            out.println("</tr>");

                                        }


                                    %>  
                            </tbody>
                        </table>
                    </div>
                </div>
                
                
                
                
                
                
            
                 <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Pedidos Solicitados</span>
                    </div>
                    
                    <div class="mws-panel-body no-padding">
                     
                           <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Código  </th>
                                   
                                    <th>Local Partida</th>
                                    <th>Local Destino</th>
                                    <th>Distância</th>
                                     <th>Descrição</th>
                                     <th>Situação</th>
                                    <th>Categoria</th>
                                    
                                    
                                    <th>Data</th>
                                    <th>hora</th>
                                </tr>
                            </thead>
                            <tbody>
                           
                                              <%
                                                 
    
                                                  MPedidoOrcamento ped = new MPedidoOrcamento();
                                                  ped.setIdCliente(id);
                                        ArrayList<MPedidoOrcamento> lista5 = new PedidoOrcamentoDao().listarPedidoCliente(ped);
                                        for (int i = 0; i < lista5.size(); i++) {
                                            out.println("<tr>");
                                          //  out.println("<td onclick=valor(" + lista2.get(i).getId_pedidoOrca() + ")>" + lista2.get(i).getId_pedidoOrca()+ "</td>");
                                    
                                            out.println("<td>" + lista5.get(i).getId_pedidoOrca()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getLocalPartida()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getDestino()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getDistancia()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getDescricao()+ "</td>");
                                            out.println("<td style='color:red'>" + lista5.get(i).getSituacao() + "</td>");
                                            out.println("<td>" + lista5.get(i).getTipoCarreto()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getData()+ "</td>");
                                            out.println("<td >" + lista5.get(i).getHora()+ "</td>");                                        
                                        

                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usuário" /></td>
                                            out.println("</tr>");

                                        }


                                    %>  
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Sistema desenvolvido por José Augusto Porcel Stacio - Grupo 3 - Leve Fácil © 2019
            </div>
            
        </div>
        <!-- Main Container End -->
        
    </div>


    <!-- JavaScript Plugins -->
    <script src="js/libs/jquery-1.8.3.min.js"></script>
    <script src="js/libs/jquery.mousewheel.min.js"></script>
    <script src="js/libs/jquery.placeholder.min.js"></script>
    <script src="custom-plugins/fileinput.js"></script>
    
    <!-- jQuery-UI Dependent Scripts -->
    <script src="jui/js/jquery-ui-1.9.2.min.js"></script>
    <script src="jui/jquery-ui.custom.min.js"></script>
    <script src="jui/js/jquery.ui.touch-punch.js"></script>

    <!-- Plugin Scripts -->
    <script src="plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="plugins/colorpicker/colorpicker-min.js"></script>

    <!-- Core Script -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/core/mws.js"></script>

    <!-- Themer Script (Remove if not needed) -->
    <script src="js/core/themer.js"></script>

    <!-- Demo Scripts (remove if not needed) -->
    <script src="js/demo/demo.table.js"></script>

</body>
</html>