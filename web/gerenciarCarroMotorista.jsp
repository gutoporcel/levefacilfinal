<%@include file="sessaocliente.jsp" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en">
<!--<![endif]-->

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

<script>
  function cadastraVeiculo()
            {
                if (validaCadastroCarroMotosita()) {
    
     document.formCadaVeiculo.acao.value = 'cadastroVeiculo';
                    document.formCadaVeiculo.submit();
    
}
                   
                
            }



function  validaCadastroCarroMotosita() {
                //var idCliente = formCartao.idCliente.value;
                var modelo =formCadaVeiculo.modelo.value;
                var marca = formCadaVeiculo.marca.value;
                var renavam =  formCadaVeiculo.renavam.value;
                var placa =  formCadaVeiculo.placa.value;
                var ano = formCadaVeiculo.ano.value;
                
                var porte = formCadaVeiculo.porte.value;
                var cor = formCadaVeiculo.cor.value;
                 var carrocaria = formCadaVeiculo.carrocaria.value;
                 
                 
                if (modelo === "") {
                    alert('Preencha o campo com do modelo do veiculo');
                  formCadaVeiculo.modelo.focus();
                    return false;
                }
          
                   if ( marca === "") {
                    alert('Prencha o campo com a marca do veiculo ');
                    formCadaVeiculo.marca.focus();
                    return false;
                }
            
                     if ( renavam === "") {
                    alert('precha o campo renavam');
                    formCadaVeiculo.renavam.focus();
                    return false;
                }
                       if ( placa === "") {
                    alert('Preencha o campo placa');
                    formCadaVeiculo.placa.focus();
                    return false;
                }
                       if ( ano === "") {
                    alert('Preencha o campo ano');
                    formCadaVeiculo.ano.focus();
                    return false;
                }
                       if ( porte === "") {
                    alert('Preencha o campo porte');
                    formCadaVeiculo.porte.focus();
                    return false;
                }
                       if ( cor === "") {
                    alert('Preencha o campo cor');
                    formCadaVeiculo.cor.focus();
                    return false;
                }
                       if ( carrocaria === "") {
                    alert('Preencha o campo Carroceria');
                    formCadaVeiculo.carrocaria.focus();
                    return false;
                }
                return true;

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
                <img src="images/mws-logo.png" alt="Leve FÃ¡cil">
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
                        OlÁ, <%= usuario %>
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
                   <li ><a href="listaCartoesMotorista.jsp"><i class="icon-lock" ></i>Conta Bancária</a></li>
                   <li class="active"><a href="listaCarrosMotorista.jsp"><i class="icon-truck"></i>Veículos</a></li>
                   <li ><a href="listaTransacoesMotorista.jsp"><i class="icon-archive"></i>Histórico</a></li>
                   <!-- <li><a href="listaSolicitacoesMotorista.jsp"><i class="icon-check"></i>Solicitações</a></li> -->
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
                        <span>Dados do Veiculo</span>
                    </div>
                    <div class="mws-panel-body no-padding">
                        <form class="mws-form" name="formCadaVeiculo" action="Veiculo" method="post">
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Modelo</label>
                                        <div class="mws-form-item">
                                            <input id="modelo" type="text" name="modelo">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Marca</label>
                                        <div class="mws-form-item">
                                            <input id="marca" type="text" name="marca">
                                        </div>
                                    </div>
                                       <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">renavam</label>
                                        <div class="mws-form-item">
                                            <input  id="renavam" type="text" name="renavam" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Placa</label>
                                        <div class="mws-form-item">
                                            <input id="placa" type="text" name="placa">
                                           
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Ano</label>
                                        <div class="mws-form-item">
                                            <input id="ano" type="text" name="ano">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Porte</label>
                                        <div class="mws-form-item">
                                            <input id="porte" type="text" name="porte">
                                        </div>
                                    </div>
                                     <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">Cor</label>
                                        <div class="mws-form-item">
                                            <input id="cor" type="text"name="cor" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Carroceria</label>
                                        <div class="mws-form-item">
                                            <input id="carrocaria" type="text" name="carrocaria">
                                            </select>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <input name="acao" type="hidden">
                            <input type="hidden" name="idMotorista" value="<%= id %>">
                            <div class="mws-button-row">
                                
                                
                                
                                <button class="btn btn-success" type="button" onclick="cadastraVeiculo()" value="inseriCartao" />Cadastrar Veiculo</button>
                            
                            <!--
                                <input type="submit" value="Submit" class="btn btn-danger">
                                <input type="reset" value="Reset" class="btn "> -->
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->

            <!-- Footer -->
            <div id="mws-footer">
                Sistema desenvolvido por Jose Augusto Porcel Stacio grupo 3 - Leve Fácil &copy; 2019,
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