<%@page import="java.util.ArrayList"%>
<%@page import="dao.VeiculoDao"%>
<%@page import="model.Mveiculo"%>
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
                        Ol�, <%= usuario %>
                    </div>
                    <ul>                    	
                        <li><a href="alterarSenhaMotorista.jsp">Mudar Senha</a></li>
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
                       <li><a href="dashboardMotorista.jsp"><i class="icon-home"></i> Home</a></li>
                   <li ><a href="dadosMotorista.jsp"><i class="icon-business-card"></i>Perfil</a></li>
                   <li ><a href="listaCartoesMotorista.jsp"><i class="icon-lock" ></i>Conta Banc�ria</a></li>
                   <li class="active"><a href="listaCarrosMotorista.jsp"><i class="icon-truck"></i>Ve�culos</a></li>
                   <li ><a href="listaTransacoesMotorista.jsp"><i class="icon-archive"></i>Hist�rico</a></li>
                   <!-- <li><a href="listaSolicitacoesMotorista.jsp"><i class="icon-check"></i>Solicita��es</a></li> -->
                    <li><a href="sacMotorista.jsp"><i class="icol32-user"></i> SAC</a></li>
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
                    	<span><i class="icon-table"></i> Lista de Ve�culos</span>
                    </div>
                    
                    <div class="mws-panel-toolbar">
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <a href="gerenciarCarroMotorista.jsp" class="btn"><i class="icol-add"></i> Novo Ve�culo</a>
                                 
                                <a href="gerenciarCarroMotoristaEditar.jsp" class="btn"><i class="icol-application-edit"></i> Editar</a>
                    			
                       
                            </div>
                        </div>
                    </div>
                          <div class="mws-panel-body no-padding">
                            <table class="mws-datatable-fn mws-table">
                                <thead>
                                    <tr>
                                        <th>N� Ve�culo</th>
                                        <th>Marca</th>
                                        <th>Modelo</th>
                                        <th>Cor</th>
                                        <th>placa</th>
                                         <th>Porte</th>
                                          <th>renavam</th>
                                           <th>ano</th>
                                           <th>botao</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% Login lo = new Login();
                                    lo.setId_usuario(id);
                                   
                                        ArrayList<Mveiculo> lista = new VeiculoDao().listarCarro(lo);
                                         for (int i = 0; i < lista.size(); i++) {
                                            out.println("<tr>");

                                            out.println("<td>" + lista.get(i).getIdVeiculo()+ "</td>");
                                           out.println("<td>" + lista.get(i).getMarca() + "</td>");
                                            out.println("<td>" + lista.get(i).getModelo()+ "</td>");
                                            out.println("<td>" + lista.get(i).getCor()+ "</td>");
                                            out.println("<td>" + lista.get(i).getPlaca()+ "</td>");
                                            out.println("<td>" + lista.get(i).getPorte()+ "</td>");
                                            out.println("<td>" + lista.get(i).getRenavam() + "</td>");
                                             out.println("<td>" + lista.get(i).getAno() + "</td>");
                                           out.println("<td>" + "<input type='hidden' value='"+ lista.get(i).getIdVeiculo()+"'>"+  "<a href='gerenciarCarroMotoristaEditar.jsp' class='btn'><i class='icol-application-edit'></i> Editar</a>"+"</td>");
                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usu�rio" /></td>
                                            out.println("</tr>");

                                        }


                                    %>                                 
                                </tbody>
                            </table>
                        </div>
                </div>
                  <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Tipo do Carreto:</label>
                                        <div class="mws-form-item">                                              
                                            <select name="tipoCarreto" id="tipoCarreto">
                                                 <option value="" selected disabled>-</option>
                                          <%            ArrayList<Mveiculo> lista1 = new VeiculoDao().listarCarro(lo);
                                        for (int i = 0; i < lista.size(); i++) {                        

                             %>
                                                <option value="<%= lista1.get(i).getIdVeiculo()%>" > <%= lista1.get(i).getModelo()%></option>
                                              <% } %>
                                            </select>
                                                  
                                        </div>
                                    </div>
                                
                                
                                
                                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Sistema desenvolvido por jos� Augusto Porcel Stacio Grupo 3 - Leve F�cil &copy; 2019,
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