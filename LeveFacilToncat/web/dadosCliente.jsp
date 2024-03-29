<%@page import="java.util.ArrayList"%>
<%@page import="dao.ClienteDao"%>
<%@page import="model.MCliente"%>
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
<link rel="stylesheet" type="text/css" href="custom-plugins/wizard/wizard.css" media="screen">

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

<title>Leve F�cil - Dashboard</title>
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
                        Ol�,  <%= usuario %>
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
                        <li class="active"><a href="dadosCliente.jsp"><i class="icon-list-2"></i> Perfil</a></li>
                        <li><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cart�es</a></li>
                       <li><a href="listaTransacoesCliente.jsp"><i class="icon-briefcase"></i>Hist�rico</a></li>
                         
                           <li><a href="listaSolicitacoesCliente.jsp"><i class="icon-check"></i>Solicita��es</a></li>
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
                    	<span>Dados do Cliente</span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <div class="mws-form-row">
                        
                           <%
                       
                      
                                      MCliente cliente = new MCliente();
                                      cliente.setIdCliente(id);
                                      ArrayList<MCliente> lista = new ClienteDao().listarCliente(cliente);
                                        for (int i = 0; i < lista.size(); i++) {                                          
                                            out.println("<b>Nome: </b>" + lista.get(i).getNomeCliente()+ "<br>");
                                            out.println("<b>CPF: </b> " + lista.get(i).getCpfCliente()+ "<br>");
                                            out.println("<b>E-mail: </b>" + lista.get(i).getEmailCliente()+ "<br>");
                                            out.println("<b>Situa��o: </b>" + lista.get(i).getSutuacao()+ "<br>");                                            
                                            out.println("<b>Data nascimento: </b>" + lista.get(i).getDataNaciCliente()+ "<br>");                                            
                                            out.println("<b>Rua: </b>" + lista.get(i).getLogradouroCliente()+ "<br>");
                                            out.println("<b>Complemento: </b>" + lista.get(i).getComplementoCliente()+ "<br>");
                                            out.println("<b>Bairro: </b>" + lista.get(i).getBairroCliente()+ "<br>");
                                            out.println("<b>CEP: </b>" + lista.get(i).getCepCliente()+ "<br>");
                                            out.println("<b>Cidade: </b>" + lista.get(i).getCidadeCliente()+ "<br>");
                                            out.println("<b>Estado: </b>" + lista.get(i).getEstadoCliente()+ "<br>");
                                            out.println("<b>N�: </b>" + lista.get(i).getNumeroCasaCliente()+ "<br>");
                                            out.println("<b>RG: </b>" + lista.get(i).getNumeroRgCliente()+ "<br>");
                                            out.println("<b>Telefone: </b>" + lista.get(i).getTelefoneCliente()+ "<br>");
                                            out.println("<b>Celular: </b>" + lista.get(i).getTellCelularCliente()+ "<br>");
                                            out.println("<b>Senha: </b>" + lista.get(i).getSenhaCliente()+ "<br>");

                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usu�rio" /></td>
                                           
                                        }

        %>
                        </div>
                        <hr>
                    	    <div class="mws-button-row">
                            <a href="dadosClienteEditar.jsp">  <button  type="submit" value="Editar " class="btn btn-danger">Editar</button></a>
                    			
                        </div>
                    </div>
                        
                </div>
                    
                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Sistema desenvolvido por Jos� Augusto Porcel Stacio - Grupo 3 - Leve F�cil � 2019
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
    <!--[if lt IE 9]>
    <script src="js/libs/excanvas.min.js"></script>
    <![endif]-->
    <script src="plugins/flot/jquery.flot.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.tooltip.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.pie.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.stack.min.js"></script>
    <script src="plugins/flot/plugins/jquery.flot.resize.min.js"></script>
    <script src="plugins/colorpicker/colorpicker-min.js"></script>
    <script src="plugins/validate/jquery.validate-min.js"></script>
    <script src="custom-plugins/wizard/wizard.min.js"></script>

    <!-- Core Script -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/core/mws.js"></script>

    <!-- Themer Script (Remove if not needed) -->
    <script src="js/core/themer.js"></script>

    <!-- Demo Scripts (remove if not needed) -->
    <script src="js/demo/demo.dashboard.js"></script>

</body>
</html>