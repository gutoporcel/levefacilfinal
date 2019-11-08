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
                   <li ><a href="listaCarrosMotorista.jsp"><i class="icon-truck"></i>Ve�culos</a></li>
                   <li ><a href="listaTransacoesMotorista.jsp"><i class="icon-archive"></i>Hist�rico</a></li>
                    <li class="active"><a href="listaSolicitacoesMotorista.jsp"><i class="icon-check"></i>Solicita��es</a></li>
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
                    	<span><i class="icon-table"></i> Lista de Solicitações</span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Partida</th>
                                    <th>Destino</th>
                                    <th>Distância</th>
                                    <th>Valor</th>
                                    <th>Data</th>
                                    <th>Tipo</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                
								<tr>
                                    <td><a href="gerenciarSolicitacaoMotorista.jsp" style="text-decoration:none; color: #333;"> Unicsul - AF</a></td>
                                    <td>Unicsul - Liberdade</td>
                                    <td>10KM</td>
                                    <td>R$300,00</td>
                                    <td>25/04/2019</td>
                                    <td>Agendada</td>
                                    <td style="color:green;">Aprovada</td>
                                </tr>
                                <tr>
                                    <td>Unicsul - Liberdade</td>
                                    <td>Unicsul - AF</td>
                                    <td>10KM</td>
                                    <td>R$450,00</td>
                                    <td>21/04/2019</td>
                                    <td>Urgência</td>
                                    <td style="color:red;">Reprovada</td>
                                </tr>
                                <tr>
                                    <td>Unicsul - AF</td>
                                    <td>Unicsul - SM</td>
                                    <td>10KM</td>
                                    <td>R$450,00</td>
                                    <td>20/05/2019</td>
                                    <td>Agendada</td>
                                    <td style="color:orange;">Em Análise</td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Sistema desenvolvido por Grupo 3 - Leve Fácil &copy; 2019,
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