<!doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <link rel="stylesheet"  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>
    
   <meta charset="utf-8">
    <title>Leve Facil</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="img/favicon.png" sizes="32x32 48x48 64x64 128x128" />
    <link href="css1/stack-interface.css" rel="stylesheet" type="text/css" media="all">
    <link href="css1/socicon.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/stack-interface.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/theme-cedar.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/custom.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/stylemob.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css1/p-m.css" rel="stylesheet" type="text/css" media="all" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:200,300,400,400i,500,600,700" rel="stylesheet">

    <style>
          a.m-home {
            font-weight: 600 !important;
            border-bottom-color: #fff !important;
        }

        .bgblackmob {
            background:transparent!important;
        
    </style>
        
    <!-- Google Tag Manager -->
<script>(function (w, d, s, l, i) {
    w[l] = w[l] || []; w[l].push({
        'gtm.start':
        new Date().getTime(), event: 'gtm.js'
    }); var f = d.getElementsByTagName(s)[0],
    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
    'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
})(window, document, 'script', 'dataLayer', 'GTM-KB35TR2');</script>
<!-- End Google Tag Manager -->


</head>
<body data-smooth-scroll-offset="77">

    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KB35TR2"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

    <div class="nav-container bgblackmob" style="position: fixed; width: 100%; z-index: 99;">
        <div>
            <div class="bar bar--sm visible-xs bg-transparent-mob">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-3 col-sm-2">
                            <a href="index.jsp">
                                <img class="logo logo-dark" alt="Leve Facil" title="Leve Facil" src="images1/logo.png">
                                <img class="logo logo-light" alt="Leve Facil" title="Leve Facil" src="images1/logo.png">
                            </a>
                        </div>
                        <div class="col-xs-9 col-sm-10 text-right" style="z-index:9999999999;">
                            <a href="#" class="hamburger-toggle" data-toggle-class="#menu1;hidden-xs hidden-sm" style="z-index:9999999999;"><i class="icon icon--sm stack-interface stack-menu"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <nav id="menu1" class="bar bar-1 hidden-xs bg--dark">
                <div class="">
                    <div class="row">

                        <div class="col-md-12 col-sm-10 text-center text-center-xs text-center-sm right-ipad p-absolute">
                            <div class="bar__module">
                                <ul class="menu-horizontal menu-oficial text-left textright-ipad">
                                    <li><a href="index.jsp" class="active">HOME</a></li>
                                    <li><a href="cadastroCliente.jsp">CADASTRO CLIENTE</a></li>
                                    <% // /WEB-INF/views/cadastrar.html" %>
                                    <li><a href="cadastroMotorista.jsp">CADASTRO MOTORISTA</a></li>
                                    <li><a href="login.jsp">ÁREA RESTRITA</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-2 hidden-xs left-ipad logo">
                            <div class="bar__module">
                                <a href="index.jsp">
                                    <img class="logo logo-dark" alt="Leve Facil" title="Leve Facil" src="images1/logo.png">
                                    <img class="logo logo-light" alt="Leve Facil" title="Leve Facil" src="images1/logo.png">
                                </a>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-12 text-center text-center-xs text-center-sm">

                        </div>

                   
                    </div>
                </div>
            </nav>

        </div>
    </div>


    <div class="main-container pt-90 some-mob">

        <section class="cover height-70 imagebg switchable" data-overlay="8">
            <div class="background-image-holder">
                <img alt="background" src="images1/bg_1.jpg">
            </div>
            <style>
                .borda_texto{
                -webkit-text-stroke-width: 2px;
                -webkit-text-stroke-color: #000;
                font-size: 3em; color: #fffdd9;
                }
            </style>
            <div class="container pos-vertical-center">
                <div class="row">
                    <div class="col-md-6 col-sm-9">
                        <div class="switchable__text">
                            <h1 class="borda_texto">LEVE FÁCIL<br>
                            </h1>
                            <p class="lead p-font1 mb-10">O jeito mais fácil de transportar seu bens sem burocracia e contrato.
                                Para o motorista uma forma simples de receber uma renda a mais.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="cover height-70 imagebg switchable" data-overlay="8">
            <div class="background-image-holder">
                <img alt="background" src="images1/bg_2.jpg">
            </div>
            <div class="container pos-vertical-center">
                <div class="row">
                    <div class="col-md-2 col-sm-1"></div>
                    <div class="col-md-5 col-sm-8">
                        <div class="switchable__text">
                            <h1>CLIENTE<br>LEVE FÁCIL<br>
                            </h1>
                            <p class="lead p-font1">Faça seu cadastro para transportar seus bens de forma rápida e fácil
                                

                            <div class="btn-home">
                                <a href="cadastroCliente.jsp" title="Faça seu cadastro como Cliente">CLIENTE</a>
                            </div>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12"></div>
                </div>
            </div>
        </section>

        <section class="cover height-70 imagebg switchable" data-overlay="8">
            <div class="background-image-holder">
                <img alt="background" src="images1/bg_3.jpg">
            </div>
            <div class="container pos-vertical-center">
                <div class="row">
                    <div class="col-md-4 col-sm-9">
                        <div class="switchable__text">
                            <h1>MOTORISTA<br>
                                LEVE FÁCIL</h1>
                            <p class="lead p-font1">Faça seu cadastro, realize corridas e tenha uma renda extra.</p>

                            <div class="btn-home">
                                <a href="cadastroMotorista.jsp" title="Faça seu cadastro como Motorista">MOTORISTA</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <footer class="space--sm footer-2 some-mob" style="background: #000; border-top: 1px solid #3e3e3e;">
            <div class="container">
                <div class="row mt-20">
                    <div class="col-sm-2 col-md-2 col-xs-6">
                        <a href="index.jsp">
                            <img class="logo" alt="Leve Facil" title="Leve Facil" src="images1/logo.png"></a>
                    </div>
                
                </div>

            </div>

            <hr style="border-color: #3e3e3e" />

            <p class="text-center" style="color: #999">Copyright Leve Fácil 2019. Todos os direitos reservados.</p>
   
         </footer>

    </div>


    

    <script src="js1/popup-mobile.js"></script>

    <script src="js1/jquery-3.1.1.min.js"></script>
    <script src="js1/parallax.js"></script>
    <script src="js1/smooth-scroll.min.js"></script>
    <script src="js1/scripts.js"></script>
    <script src="https://www.w3schools.com/lib/w3.js"></script>
    <script>w3.includeHTML();</script>

    <script>
        function tela1() { $('#item1').show(); $('#item2').hide(); $('#item3').hide(); $('#item4').hide(); }
        function tela2() { $('#item1').hide(); $('#item2').show(); $('#item3').hide(); $('#item4').hide(); }
        function tela3() { $('#item1').hide(); $('#item2').hide(); $('#item3').show(); $('#item4').hide(); }
        function tela4() { $('#item1').hide(); $('#item2').hide(); $('#item3').hide(); $('#item4').show(); }
    </script>

</body>

</html>
