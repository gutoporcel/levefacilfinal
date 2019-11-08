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
                    <li><a href="dashboardCliente.jsp"><i class="icon-home"></i> Dashboard</a></li>
                    <li><a href="dadosCliente.jsp"><i class="icon-list-2"></i> Dados Cadastrais</a></li>
					<li><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cartões</a></li>
                    <li><a href="listaCarrosMotorista.jsp"><i class="icon-truck"></i>Veículos</a></li>
                    <li class="active"><a href="listaSolicitacoesMotorista.jsp"><i class="icon-briefcase"></i>Solicitações</a></li>
                    <li><a href="listaLeilaoMotorista.jsp"><i class="icon-legal"></i>Leilão Reverso</a></li>
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
                        <span>Dados da Solicitação</span>
                    </div>
                    
                    <div class="mws-panel-toolbar">
                        <div class="btn-toolbar">
                            <div class="btn-group">
                                <a href="#" class="btn"><i class="icol-accept"></i> Aceitar</a>
                                <a href="#" class="btn"><i class="icol-cross"></i> Recusar</a>
                            </div>
                        </div>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <form class="mws-form">
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-8-8">
                                        <label class="mws-form-label">Local de Partida</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label"><strong>Unicsul - AF</strong></label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-8-8">
                                        <label class="mws-form-label">Destino</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label"><strong>Unicsul - Liberdade</strong></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Distância</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label"><strong>10KM</strong></label>
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Tipo</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label"><strong>Agendada</strong></label>
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Data</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label"><strong>25/04/2019</strong></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">Valor</label>
                                        <div class="mws-form-item">
                                            <input type="text">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">Status</label>
                                        <div class="mws-form-item">
                                            <label class="mws-form-label" style="color:orange"><strong>Aguarado
                                                    Resposta</strong></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-button-row">
                                <input type="submit" value="Submit" class="btn btn-danger">
                                <input type="reset" value="Reset" class="btn ">
                            </div>
                        </form>
                    </div>
                </div>

                <div class="mws-panel grid_8">
                    <div class="mws-panel-header">
                        <span><i class="icon-pictures"></i> Imagens</span>
                    </div>
                    <div class="mws-panel-body">
                        <ul class="thumbnails mws-gallery">
                            <li>
                                <span class="thumbnail"><img src="example/example6.jpg" alt=""></span>
                                <span class="mws-gallery-overlay">
                                    <a href="example/example6.jpg" rel="prettyPhoto[gallery1]"
                                        class="mws-gallery-btn"><i class="icon-search"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-pencil"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-trash"></i></a>
                                </span>
                            </li>
                            <li>
                                <span class="thumbnail"><img src="example/example7.jpg" alt=""></span>
                                <span class="mws-gallery-overlay">
                                    <a href="example/example7.jpg" rel="prettyPhoto[gallery1]"
                                        class="mws-gallery-btn"><i class="icon-search"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-pencil"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-trash"></i></a>
                                </span>
                            </li>
                            <li>
                                <span class="thumbnail"><img src="example/example8.jpg" alt=""></span>
                                <span class="mws-gallery-overlay">
                                    <a href="example/example8.jpg" rel="prettyPhoto[gallery1]"
                                        class="mws-gallery-btn"><i class="icon-search"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-pencil"></i></a>
                                    <a href="#" class="mws-gallery-btn"><i class="icon-trash"></i></a>
                                </span>
                            </li>
                        </ul>
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