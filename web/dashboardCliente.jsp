

<%@page import="dao.OrcamentoDao"%>
<%@page import="model.MFinalizaOrcamento"%>
<%@page import="dao.PedidoOrcamentoDao"%>
<%@page import="model.MPedidoOrcamento"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoriaCarretoDao"%>
<%@page import="model.MCategoriaCarreto"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


<style type="text/css">
     
      #map_content { height: 100% ;height: 400px}
    </style>


 <script type="text/javascript"src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBGGlIaXJtgA-J5hZtlAtM21q6OxWqrds" >
</script>
<script type="text/javascript" src="jqu/jquery.min.js"></script>

 <script src="http://code.jquery.com/jquery-1.8.1.js" type="text/javascript"></script>

   
   <script type="text/javascript">

 


		var map;
		var directionsService = new google.maps.DirectionsService();
		var info = new google.maps.InfoWindow({maxWidth: 200});
		
		var marker = new google.maps.Marker({
			title: 'Google sao paulo',
			//icon: 'marker.png',
                        
			position: new google.maps.LatLng('-23.5506507', '-46.6333824')
                        
                        
		});

		function initialize() {
			var options = {
					zoom: 15,
					center: marker.position,
					mapTypeId: google.maps.MapTypeId.ROADMAP
			};
			
			map = new google.maps.Map($('#map_content')[0], options);
			
			marker.setMap(map);
			
			google.maps.event.addListener(marker, 'click', function() {
				info.setContent('Rua gomes,53');
				info.open(map, marker);
			}); 
		}
		
		$(document).ready(function() {
			$('#route_des').change(function() {
				info.close();
				marker.setMap(null);
				
				var directionsDisplay = new google.maps.DirectionsRenderer();
				
				var request = {
						origin: $("#route_des").val(),
						destination: $("#route_from").val(),
						travelMode: google.maps.DirectionsTravelMode.DRIVING
				};
				
				directionsService.route(request, function(response, status) {
						if (status === google.maps.DirectionsStatus.OK) {
							directionsDisplay.setDirections(response);
							directionsDisplay.setMap(map);
						}
				});
				
				return false;
			});
                     
		});
                
                
              
                  function CalculaDistancia() {
                $('#litResultado').html('Aguarde...');
                //Instanciar o DistanceMatrixService
                var service = new google.maps.DistanceMatrixService();
                //executar o DistanceMatrixService
                service.getDistanceMatrix(
                  {
                      //Origem
                      origins: [$("#route_des").val()],
                      //Destino
                      destinations: [$("#route_from").val()],
                      //Modo (DRIVING | WALKING | BICYCLING)
                      travelMode: google.maps.TravelMode.DRIVING,
                      //Sistema de medida (METRIC | IMPERIAL)
                      unitSystem: google.maps.UnitSystem.METRIC
                      //Vai chamar o callback
                  }, callback,initialize());
            }
            //Tratar o retorno do DistanceMatrixService
            function callback(response, status) {
                //Verificar o Status
                if (status !== google.maps.DistanceMatrixStatus.OK)
                    //Se o status não for "OK"
                    $('#litResultado').html(status);
                else {
                    //Se o status for OK
                    //Endereço de origem = response.originAddresses
                    //Endereço de destino = response.destinationAddresses
                    //Distância = response.rows[0].elements[0].distance.text
                    //Duração = response.rows[0].elements[0].duration.text
                    $('#litResultado').html("<strong>Origem</strong>: " +   response.destinationAddresses+
                        "<br /><strong>Destino:</strong> " +  response.originAddresses +
                        "<br /><strong>Distância</strong>: " + response.rows[0].elements[0].distance.text +
                        " <br /><strong>Duração</strong>: " + response.rows[0].elements[0].duration.text
                        
                        
                       
                        );
                 document.getElementById('distancia').value = response.rows[0].elements[0].distance.text ;
                 document.getElementById('route_from').value=  response.destinationAddresses;    
                 document.getElementById('route_des').value= response.originAddresses;
                    //Atualizar o mapa
                    $("#map_conten").attr("src", "https://maps.google.com/maps?saddr=" + response.originAddresses + "&daddr=" + response.destinationAddresses + "&output=embed");
                }
            }
 
                
                
              
                
               

                
                
                
                
                
                
                
                     function cadastrar() {
                                       if(validaPedidoOrcamento()){
                                        document.frmPedido.acao.value = 'CADASTRAR';
                                        document.frmPedido.submit();
                                    }

                                    }
                                    
                                    
                  function  validaPedidoOrcamento(){
                      
                                        var partida = frmPedido.partida.value; 
                                        var destino = frmPedido.destino.value;
                                        var tipoCarreto = frmPedido.tipoCarreto.value;
                                        var data = frmPedido.data.value;
                                        var descricao = frmPedido.descricao.value;
                                        //var hora = frmPedido.hora-cons.value;
                                        

                                        if (partida === "") {
                                            alert('Preencha o campo de partida ');
                                            frmPedido.partida.focus();
                                            return false;
                                        }
                                         if (destino === "") {
                                            alert('Preencha o campo de destino ');
                                            frmPedido.destino.focus();
                                            return false;
                                        }
                                          if (tipoCarreto === "") {
                                            alert('Preencha  o tipo de carreto ');
                                            frmPedido.tipoCarreto.focus();
                                            return false;
                                        }
                                             if (data === "") {
                                            alert('Preencha a data ');
                                            frmPedido.data.focus();
                                            return false;
                                        }
                                     
                                     
                                     
                                        
                                        
                                     return true;
                  }   

                  
                                    
                                    
	</script>


</head>

<body onload="initialize()">
	<!--<div id="map_canvas" style="width:30%; height:30%"></div>-->
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
                        
                      
                        Olá, <%= usuario %>
                    </div>
                    <ul>                    	
                        <li><a href="alterarSenhaCliente.jsp">Mudar Senha</a></li>
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
                    <li class="active"><a href="dashboardCliente.jsp"><i class="icon-home"></i> Home</a></li>
                    <li><a href="dadosCliente.jsp"><i class="icon-list-2"></i> Perfil</a></li>
                    
                    <li><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cartões</a></li>
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
                        <span>Realização do Pedido</span>                         
                    </div> 
                   <div class="mws-panel-body  " id="map_content" ></div>
                   <div class="mws-panel-toolbar"><span id="litResultado">&nbsp;</span></div>
                    <div class="">
                       
                        
                        <div class="btn-toolbar">
                            
                            <span id="litResultado"></span>
                            
                          
                            
                            
                            
                            
                            
                            
                            
                            
                           
                        </div>
                           
                    </div>                      
                            <div class="mws-panel grid_8">
                	
                    
                    <div class="mws-panel-body no-padding">

                   
                                 <div class="col-md-12 col-xs-12" align="center">

                  <br>
                 
                      <div class="clearfix"></div></div> 
       
                
                        
                        <form class="mws-form" method="post" action="PrincipalCliente" name="frmPedido" id="pedido">
                          
                            <div class="mws-form-row">
                                 
                                <div class="mws-form-cols">
                                    
                                    <div class="mws-form-col-8-8">
                                       
                                        <label for="route_from" class="mws-form-label">Local de Partida:</label>
                                        <div class="mws-form-item">
                                            <input type="text"id="route_from" name="partida" placeholder="Digite o endereço com o  numero, CPF  ou nome do lugar   ">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                           

                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-8-8">
                                        <label for="route_des" class="mws-form-label">Destino:</label>
                                        <div class="mws-form-item">
                                            <input name="destino" type="text" id="route_des" onchange="CalculaDistancia()" placeholder="Digite o endereço com o  numero, CPF  ou nome do lugar   " >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div><span id="litResultado">&nbsp;</span></div>
                            
                            
                           <!-- <button class="btn" id="calcuarDistancia "type="submit" value="Traçar rota"  onclick="CalculaDistancia()" />Traçar rota</button>
                            -->
                             
                             
                          
                            
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Distância:</label>
                                        <div class="mws-form-item">
                                            <input type="text" id="distancia" name="distancia"readonly> 
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Tipo do Carreto:</label>
                                        <div class="mws-form-item">                                              
                                            <select name="tipoCarreto" id="tipoCarreto">
                                                 <option value="" selected disabled>-</option>
                                          <%           ArrayList<MCategoriaCarreto> lista = new CategoriaCarretoDao().listarCategoriaCarreto();
                                        for (int i = 0; i < lista.size(); i++) {                        

                             %>
                                                <option value="<%= lista.get(i).getNomeCategoriaCarreto()%>" > <%= lista.get(i).getNomeCategoriaCarreto()%></option>
                                              <% } %>
                                            </select>
                                                  
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Data:</label>
                                        <div class="mws-form-item">
                                            <input type="date" name="data">
                                        </div>
                                    </div>
                                    
                                     <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">Hora:</label>
                                       
                                        <div class="mws-form-item">
                                            <input id="hora-cons" type="time" name="hora-cons" value="00:00"  >
                                        </div>
                                    </div>
                                </div>                                
                            </div>
                           
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-8-8">
                                        <label class="mws-form-label">Descrição da Carga:</label>
                                        <div class="mws-form-item">
                                            <textarea name="descricao" class="big"  type="text"  placeholder="Digite as caracteristicas do produto. Ex: nome, peso, dimensões"></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-button-row">
                                <button type="button" value="cadastrar" name="btnCadastrar" class="btn btn-danger" onclick="cadastrar()" ID="btnConfirmar" >Enviar</button>
                                <!--<input type="submit" value="Submit" class="btn btn-danger">
                                <input type="reset" value="Reset" class="btn "> -->
                            </div>
                            <input type="hidden" name="id" value="<%= id %>">
                            <input type="hidden" name="acao">
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

</body>

</html>