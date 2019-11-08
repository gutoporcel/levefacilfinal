
<%@include file="sessaocliente.jsp" %>
<%@page import="dao.ClienteDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MCliente"%>
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
            function funcao1()
            {
                if (validaSituacao()) {
                    document.form_ativa_destaiva.acao.value = 'confirma';
                    document.form_ativa_destaiva.submit();
                }
            }
            function  validaSituacao() {
                var ID = form_ativa_destaiva.id.value;
               

                if (ID === "") {
                    alert('Preencha o campo com id  do Cliente');
                    form_ativa_destaiva.id.focus();
                    return false;
                }
               
                return true;

            }
        </script>
        <style>
            .btn{
                border-color: #f44336;
            }
            .btn2{
                display: inline-block;
                *display: inline;
                /* IE7 inline-block hack */

                *zoom: 1;
                padding: 4px 12px;
                margin-bottom: 0;
                font-size: 13px;
                line-height: 20px;
                *line-height: 20px;
                text-align: center;
                vertical-align: middle;
                cursor: pointer;
                color: #333333;
                text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
                background-color: #f5f5f5;
                background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
                background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6));
                background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
                background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
                background-image: linear-gradient(to bottom, #ffffff, #e6e6e6);
                background-repeat: repeat-x;
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffffff', endColorstr='#ffe6e6e6', GradientType=0);
                border-color: #e6e6e6 #e6e6e6 #bfbfbf;
                border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
                *background-color: #e6e6e6;
                /* Darken IE7 buttons by default so they stand out more given they won't have borders */

                filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
                border: 1px solid #bbbbbb;
                *border: 0;
                border-bottom-color: #a2a2a2;
                -webkit-border-radius: 4px;
                -moz-border-radius: 4px;
                border-radius: 4px;
                *margin-left: .3em;
                -webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                -moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
                border-color: #45be15;
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
                    <img src="images/mws-logo.png" alt="Leve Facil">
                </div>
            </div>

            <!-- User Tools (notifications, logout, profile, change password) -->
            <div id="mws-user-tools" class="clearfix">

                <!-- User Information and functions section -->
                <div id="mws-user-info" class="mws-inset">

                    <!-- User Photo -->
                    <div id="mws-user-photo">
                        </i>
                    </div>

                    <!-- Username and Functions -->
                    <div id="mws-user-functions">
                        <div id="mws-username">
                            Ola, <%= usuario %>
                        </div>
                        <ul>                    	

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
                        <li class="active"><a href="dashboardAdmin.jsp"><i class="icon-home"></i> Home</a></li>
                        <li><a href="propostaAdmin.jsp"><i class="icon-list-2"></i> Propostas</a></li>
                        <li><a href="Link"><i class="icol32-user"></i>SAC</a></li>
                </div>         
            </div>

            <!-- Main Container Start -->
            <div id="mws-container" class="clearfix">

                <!-- Inner Container Start -->
                <div class="container">

                    <!-- Panels Start -->

                    <div class="mws-panel grid_8">
                        <div class="mws-panel-header">
                            <span><i class="icon-table"></i> Lista de Usuários Clientes</span>
                        </div>
                        <form name="form_ativa_destaiva" action="GerenciaUsuarioCliente" method="post">

                            <div class="mws-panel-body"  >
                                <label>Digite o ID e o CPF para desativar ou ativar  o Usuario</label> <hr>

                                <label>ID</label>
                                <input type="text" id="id" name="ID" class=""  />


                                

                                <label>Situação</label>
                                <select name="situacao" id="situacao" class="selectpicker w100ppc">

                                    <option value="ativo">Ativar</option>
                                    <option value="Desativado">Desativar</option>                                                                                                             
                                </select>



                                <button class="btn" type="button" onclick="funcao1()" value="confirma" />Confirmar</button>



                                <input type="hidden" name="acao">




                            </div>

                        </form>





                        <div class="mws-panel-body no-padding">
                            <table class="mws-datatable-fn mws-table">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nome</th>
                                        <th>CPF</th>
                                        <th>Email</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        ArrayList<MCliente> lista = new ClienteDao().listarTadosClientes();
                                        for (int i = 0; i < lista.size(); i++) {
                                            out.println("<tr>");

                                            out.println("<td>" + lista.get(i).getIdCliente() + "</td>");
                                            out.println("<td>" + lista.get(i).getNomeCliente() + "</td>");
                                            out.println("<td>" + lista.get(i).getCpfCliente() + "</td>");
                                            out.println("<td>" + lista.get(i).getEmailCliente() + "</td>");
                                            out.println("<td>" + lista.get(i).getSutuacao() + "</td>");

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
                    Sistema desenvolvido por Grupo 3 - Leve Facil &copy; 2019,
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
        <script src="js1/validacoes.js"></script>
    </body>
</html>