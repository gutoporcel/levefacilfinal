<%@page import="dao.CartaoDao"%>
<%@page import="model.Mcartao"%>
<%@include file="sessaocliente.jsp" %>
<%@page import="java.util.ArrayList"%>
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

</head>

<body>

	
	<!-- Header -->
	<div id="mws-header" class="clearfix">
    
    	<!-- Logo Container -->
    	<div id="mws-logo-container">
        
        	<!-- Logo Wrapper, images put within this wrapper will always be vertically centered -->
        	<div id="mws-logo-wrap">
            	<img src="images/mws-logo.png" alt="mws admin">
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
                        <li><a href="deslogar.jsp">Logout</a></li>
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
                    <li class="active"><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cartões</a></li>
                  <li><a href="listaTransacoesCliente.jsp"><i class="icon-briefcase"></i>Histórico</a></li>
                     <li><a href="listaSolicitacoesCliente.jsp"><i class="icon-check"></i>Solicitações</a></li>
                     <li><a href="gerenciarPagamentoCliente.jsp"><i class="icon-lock"></i>Pagamentos</a></li>
                    <li><a href="sac.jsp"><i class="icol32-user"></i>SAC </a></li>
                </ul>
            </div>         
        </div>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Inner Container Start -->
            <div class="container">
            
                <!-- Panels Start -->
                
            	<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Lista de Cartões</span>
                    </div>
                    
                    <div class="mws-panel-toolbar">
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <a href="gerenciarCartaoCliente.jsp" class="btn"><i class="icol-add"></i> Novo Cartão</a>
                                <a href="listaTransacoesCliente.jsp" class="btn"><i class="icol-application-view-list"></i> Histórico de Transações</a>
                                <a href="gerenciarCartaoClienteEditar.jsp" class="btn"><i class="icol-application-edit"></i> Alterar Cartão</a>
                            </div>
                        </div>
                    </div>
                           <div class="mws-panel-body no-padding">
                            <table class="mws-datatable-fn mws-table">
                                <thead>
                                    <tr>
                                        <th>Nome</th>
                                        <th>Número</th>
                                        <th>CVV</th>
                                        <th>Validade</th>
                                        <th>Bandeira</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        Mcartao car = new Mcartao();
                                        car.setId_cliente(id);
                                        ArrayList<Mcartao> lista = new CartaoDao().listarCartao(car);
                                         for (int i = 0; i < lista.size(); i++) {
                                            out.println("<tr>");

                                         //   out.println("<td>" + lista.get(i).getId_cliente()+ "</td>");
                                           // out.println("<td>" + lista.get(i).getId_cartao() + "</td>");
                                            out.println("<td>" + lista.get(i).getNomeCartao()+ "</td>");
                                            out.println("<td>" + lista.get(i).getNumeroCartao()+ "</td>");
                                            out.println("<td>" + lista.get(i).getCvv()+ "</td>");
                                            out.println("<td>" + lista.get(i).getValidadeCartao()+ "</td>");
                                            out.println("<td>" + lista.get(i).getBandeira() + "</td>");

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