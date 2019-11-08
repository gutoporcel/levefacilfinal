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
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
<title>Leve Fácil - Dashboard</title>
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<style>
        .pieContainer {
             height: 100px;
        }
        .pieBackground {
             background-color: grey;
             position: absolute;
             width: 100px;
             height: 100px;
             -moz-border-radius: 50px;
             -webkit-border-radius: 50px;
             -o-border-radius: 50px;
             border-radius: 50px;
             -moz-box-shadow: -1px 1px 3px #000;
             -webkit-box-shadow: -1px 1px 3px #000;
             -o-box-shadow: -1px 1px 3px #000;
             box-shadow: -1px 1px 3px #000;
        }
   </style>
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
                    <li ><a href="dashboardAdmin.jsp"><i class="icon-home"></i> Home</a></li>
                    <li class="active"><a href="propostaAdmin.jsp"><i class="icon-list-2"></i> Propostas</a></li>
                    <li><a href="Link"><i class="icol32-user"></i>SAC</a></li>
                    
                   
                </ul>
            </div>         
        </div>
        
        <!-- Main Container Start -->
        <div id="mws-container" class="clearfix">
        
        	<!-- Inner Container Start -->
            <div class="container">
            <!-- TELA PRINCIPAL (COLOCAR
                 AQUI) -->
            <h1>Propostas e Corridas</h1>
            <br><br><br><br><br>
           
            <div class="mws-panel grid_8">
                <div class="mws-panel-header">
                    <span><i class="icon-table"></i> Lista de Solicita��es</span>
                </div>
                
                <div class="mws-panel-toolbar">
                    <div class="btn-toolbar">
                        
                    </div>
                </div>
                <div class="mws-panel-body no-padding">
                    <table class="mws-datatable-fn mws-table">
                        <thead>
                            <tr>
                                <th>Trajeto</th>
                                <th>Cliente</th>
                                <th>Carreto</th>
                                <th>Valor</th>
                                <th>Data</th>
                                <th>Tipo</th>
                                <th>Status</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <td>Avenida Aricanduva <b>para</b> Rua Melo Freire</a></td>
                                <td>ADAM.SANDLER</td>
                                <td>WILL.SMITH</td>
                                <td>R$500,00</td>
                                <td>23/07/2019</td>
                                <td>Agendada</td>
                                <td style="color:green;">Aprovada</td>
                                
                            </tr>
                            <tr>
                                <td>Avenida Rebouças <b>para</b> Avenida dos Latinos</td>
                                <td>KLEBER.BAMBAM</td>
                                <td>CLAUDINEI.VIEIRA</td>
                                <td>R$630,00</td>
                                <td>01/04/2019</td>
                                <td>Urgência</td>
                                <td style="color:red;">Reprovada</td>
                            </tr>
                            <tr>
                                <td>Avenida Rebouças <b>para</b> Avenida dos Latinos</td>
                                <td>KLEBER.BAMBAM</td>
                                <td>WILL.SMITH</td>
                                <td>R$450,00</td>
                                <td>01/04/2019</td>
                                <td>Urgência</td>
                                <td style="color:green;">Aprovada</td>
                            </tr>
                            <tr>
                                <td>Avenida Eliseu de Almeida <b>para</b> Avenida Lider</td>
                                <td>ALEXANDRO.ALVES</td>
                                <td>FERNANDO.TEIXEIRA</td>
                                <td>R$650,00</td>
                                <td>21/02/2019</td>
                                <td>Urgência</td>
                                <td style="color:green;">Aprovada</td>
                            </tr>
                            <tr>
                                <td>Rua legal <b>para</b> Avenida TOP</td>
                                <td>ADILSSON.VLADMIR</td>
                                <td>WILL.SMITH</td>
                                <td>R$250,00</td>
                                <td>22/07/2019</td>
                                <td>Urgência</td>
                                <td style="color:green;">Aprovada</td>
                            </tr>
                            <tr>
                                <td>Avenida Qualuqer <b>para</b> Rua Tal</td>
                                <td>FABIO.LINS</td>
                                <td>BOB.TYLER</td>
                                <td>R$750,00</td>
                                <td>21/04/2019</td>
                                <td>Urgência</td>
                                <td style="color:red;">Reprovada</td>
                            </tr>
                            <tr>
                                <td>Avenida Qualuqer <b>para</b> Rua Tal</td>
                                <td>FABIO.LINS</td>
                                <td>KLAYTON.MARCEL</td>
                                <td>R$500,00</td>
                                <td>21/04/2019</td>
                                <td>Urgência</td>
                                <td style="color:green;">Aprovada</td>
                            </tr>
                            <tr>
                                <td>Rua Castelo de Paia <b>para</b> Rua José Carlos de Andrade</td>
                                <td>JURANDIR.SILVA</td>
                                <td>KLAYTON.MARCEL</td>
                                <td>Aguardando</td>
                                <td>20/05/2019</td>
                                <td>Agendada</td>
                                <td style="color:orange;">Em Análise</td>
                            </tr>
                            <tr>
                                <td>Rua Mais ou menos <b>para</b> Rua bem legal</td>
                                <td>LACIR.SILVA</td>
                                <td>LULA.PRESIDENTE</td>
                                <td>Aguardando</td>
                                <td>20/05/2019</td>
                                <td>Agendada</td>
                                <td style="color:orange;">Em Análise</td>
                            </tr>
                            <tr>
                                <td>Rua Castelo de Paia <b>para</b> Rua José Carlos de Andrade</td>
                                <td>JURANDIR.SILVA</td>
                                <td>KLAYTON.MARCEL</td>
                                <td>Aguardando</td>
                                <td>20/05/2019</td>
                                <td>Agendada</td>
                                <td style="color:orange;">Em Análise</td>
                            </tr>
                            <tr>
                                <td>Rua Castelo de Paia <b>para</b> Rua José Carlos de Andrade</td>
                                <td>JURANDIR.SILVA</td>
                                <td>KLAYTON.MARCEL</td>
                                <td>Aguardando</td>
                                <td>20/05/2019</td>
                                <td>Agendada</td>
                                <td style="color:orange;">Em Análise</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
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