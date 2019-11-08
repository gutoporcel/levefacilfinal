<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
    <head>

        
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">






        <meta charset="utf-8">

        <!-- Viewport Metatag -->
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Required Stylesheets -->
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
        <link rel="stylesheet" type="text/css" href="css/fonts/ptsans/stylesheet.css" media="screen">
        <link rel="stylesheet" type="text/css" href="css/fonts/icomoon/style.css" media="screen">

        <link rel="stylesheet" type="text/css" href="css/login.css" media="screen">

        <link rel="stylesheet" type="text/css" href="css/mws-theme.css" media="screen">

        <title>Leve Facil - Login</title>
        <style>
            .bt {

                border:1px; solid: #00000;
                background-color: #00000;
                border-radius:4px;
                display:inline-block;
                cursor:pointer;
                font-family:Verdana;
                font-weight:bold;
                font-size:13px;
                padding:6px 10px;
                text-decoration:none;
                position:relative;
                top:10px;
                left: 15px;}
            </style>


            <script>

               function logar() {
                 //   if(validarLogin()){
                    document.formLogin.acao.value = 'logar';
                    document.formLogin.submit();
                //}

                }
                function validarLogin() {
                    var cpf = cadLogin.username.value;
                    var senha = formLogin.password.value;

                    if (cpf === "") {
                        alert('Preencha o campo com seu cpf');
                        cadLogin.username.focus();
                        return false;
                    }
                    if (senha === "") {
                        alert('Preencha o campo com sua senha');
                        formLogin.password.focus();
                        return false;
                    }
                    return true;

                }


            </script>
        </head>

        <body>
            <a class="bt" href="index.jsp" type="button">Voltar</a>

        <div id="mws-login-wrapper">
            <div id="mws-login">
                <h1>Login</h1>
                <div class="mws-login-lock"><i class="icon-lock"></i></div>
                <div id="mws-login-form">
                    <form name="formLogin" class="mws-form" action="logar" runat="server" method="post">
                        <input type="hidden" name="acao">
                        <div class="mws-form-row">
                            <div class="mws-form-item">
                                <input type="text" name="username" class="mws-login-username required" placeholder="CPF" maxlength="14" onkeydown="mascara(this,mCPF)">
                            </div>
                        </div>
                        <div class="mws-form-row">
                            <div class="mws-form-item">
                                <input type="password" name="password" class="mws-login-password required" placeholder="password">
                     
                            </div><br>
                 
                        <div class="mws-form-row">
                        
                            <button onclick="logar()" type="submit" value="Login" class="btn btn-success mws-login-button">Logar</button>
                       
                            </div>
                            
                       
                        </div>
                                         
                                                                                         <% String mensagem2 = (String) request.getAttribute("mensagemE");%>
                         <% if (mensagem2 != null) {%>
                         <div class="alert alert-danger" role="alert">
                             <label><%= mensagem2%></label>
                           </div> 
                         <% }%> 
                        
                     
                      
                       
                            
                        
                        
                       
                    </form>
                </div>
            </div>
        </div>

        <!-- JavaScript Plugins -->
        <script src="js/libs/jquery-1.8.3.min.js"></script>
        <script src="js/libs/jquery.placeholder.min.js"></script>
        <script src="custom-plugins/fileinput.js"></script>

        <!-- jQuery-UI Dependent Scripts -->
        <script src="jui/js/jquery-ui-effects.min.js"></script>

        <!-- Plugin Scripts -->
        <script src="plugins/validate/jquery.validate-min.js"></script>

        <!-- Login Script -->
        <script src="js/core/login.js"></script>



          <script src="js1/validacoes.js"></script>

    </body>
</html>
