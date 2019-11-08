<%@page import="model.Login"%>
<%@page import="model.Mcartao"%>
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
      
        
               <script>
            function funcao1()
            {
                if(validaCadastroCartao()){
                    document.formCartao.acao.value = 'inseriCartao';
                    document.formCartao.submit();
                }
            }
            function  validaCadastroCartao() {
                //var idCliente = formCartao.idCliente.value;
                var nomeCartao =formCartao.nomecartao.value;
                var numeroCartao = formCartao.numerocartao.value;
                var bandeira =  formCartao.bandeira.value;
                var cvv =  formCartao.cvv.value;
                var validade = formCartao.validade.value;
                if (nomeCartao === "") {
                    alert('Preencha o campo com  nome do cartão');
                    formCartao.nomeCartao.focus();
                    return false;
                }
                if ( numeroCartao === "" || numeroCartao.length < 19 ) {
                    alert('Preencha o campo  numero do cartão corretamente');
                    formCartao.numeroCartao.focus();
                    return false;
                }
                   if ( bandeira === "") {
                    alert('selecione  a bandeira do cartão');
                    formCartao.bandeira.focus();
                    return false;
                }
                     if ( cvv === "" || cvv.length < 3) {
                    alert('Preencha o campo  numero do cvv');
                    formCartao.cvv.focus();
                    return false;
                }
                     if ( validade === "") {
                    alert('Preencha     o campo validade do cartão');
                    formCartao.validade.focus();
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
                            Ola, <%= usuario%>
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
                            <span>Dados do Cartões</span>
                        </div>
                        <div class="mws-panel-body no-padding">
                            <form class="mws-form" name="formCartao" action="Cartao" method="post">
                                <div class="">

                                       <div class="mws-form-row"> 
                                    <div class="mws-form-cols">
                                            <div class="mws-form-col-3-8">
                                                <label class="mws-form-label">Nome do Cartão</label>
                                                <input type="text" name="nomecartao" id="nomeCartao ">
                                                <input type="hidden" name="idCliente" id="idCliente" value="<%= id %>">

                                            </div>
                                            <div class="mws-form-col-3-8">
                                                <label class="mws-form-label">Numero Cartão</label >
                                                <input type="text" name="numerocartao" id="numeroCartao" maxlength="19" onkeydown="mascara(this,mCartao)">
                                            </div>
                                            <div class="mws-form-col-1-8">
                                                <label class="mws-form-label">Bandeira</label>
                                             
                                                
                                                            <select runat="server" name="bandeira" id="bandeira" class="selectpicker w100ppc">
                                                                <option value="" selected disabled>-</option>
                                                                <option value="Mastercard">Mastercard</option>
                                                                <option value="Visa">Visa</option>
                                                                <option value="Elo">Elo</option>
                                                             
                                                            </select>
                                                
                                            </div>
                                        </div>
                                    </div>   
                                    <div class="mws-form-row">
                                        <div class="mws-form-cols">

                                            <div class="mws-form-col-1-8">
                                                <label class="mws-form-label">CVV</label>
                                                <input  type="text" name="cvv" id="cvv">
                                            </div>
                                            <div class="mws-form-col-2-8">
                                                <label class="mws-form-label">Validade</label>
                                                <input type="date" name="validade" id="validade">
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <div class="mws-button-row">
                                    
                                    
                                <button class="btn btn-danger" type="button" onclick="funcao1()" value="inseriCartao" />Cadastrar Cartão</button>



                                <input type="hidden" name="acao">
                                    
                                    
                                   
                                    <input type="reset" value="Excluir" class="btn ">
                                </div>
                            </form>
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
        
        
          <script src="js1/validacoes.js"></script>
    </body>
</html>