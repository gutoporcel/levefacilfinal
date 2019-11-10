<%@page import="model.MFinalizaOrcamento"%>
<%@page import="dao.OrcamentoDao"%>
<%@page import="dao.PedidoOrcamentoDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MPedidoOrcamento"%>
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
          function inseriOrcamento()
            {
              if(validaOrcamento()){
                    document.frmOrcamento.acao.value = 'inserirOrcamento';
                    document.frmOrcamento.submit();
               }
            }
      function pedidoEntregue()
            {
              if(validaOrcamentoFinaliza()){
                    document.formFinaliza.acao.value = 'entregaPAgamento';
                    document.formFinaliza.submit();
               }
            }
    
    
    function  validaOrcamento() {
                //var idCliente = formCartao.idCliente.value;
                var idPedido =frmOrcamento.idPedido.value;
                var valor = frmOrcamento.valor.value;
         
                 
                 
                if (idPedido === "") {
                    alert('Prencha o N° do pedido:');
                  frmOrcamento.idPedido.focus();
                    return false;
                }
          
                   if ( valor === "") {
                    alert('Prencha o campo  valor');
                    frmOrcamento.valor.focus();
                    return false;
                }
            
            
                      
                return true;

            }
    
    
    
    
    
    
     function  validaOrcamentoFinaliza() {
                //var idCliente = formCartao.idCliente.value;
                var pedidoAceito =formFinaliza.pedidoAceito.value;
            
         
                 
                 
                if (pedidoAceito === "") {
                    alert('Prencha o N° do pedido:');
                  formFinaliza.pedidoAceito.focus();
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
                <li class="active"><a href="dashboardMotorista.jsp"><i class="icon-home"></i> Home</a></li>
                <li><a href="dadosMotorista.jsp"><i class="icon-business-card"></i>Perfil</a></li>
                <li><a href="listaCartoesMotorista.jsp"><i class="icon-lock" ></i>Conta Bancária</a></li>
                <li><a href="listaCarrosMotorista.jsp"><i class="icon-truck"></i>Veículos</a></li>
                <li ><a href="listaTransacoesMotorista.jsp"><i class="icon-archive"></i>Histórico</a></li>
                <!--  <li><a href="listaSolicitacoesMotorista.jsp"><i class="icon-check"></i>Solicitações</a></li>  -->  
                <li><a href="sacMotorista.jsp"><i class="icol32-user"></i> SAC</a></li>
                    
                    
                    
              
                </ul>
            </div>         
        </div>
        
       <!-- Main Container Start -->
       <div id="mws-container" class="clearfix">
        
        <!-- Inner Container Start -->
        <div class="container">
            
                    
        
             <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Pedidos Recebidos</span>
                    </div>
          
                 
                  <form name="frmOrcamento" action="PrincipalMotorista" method="post">

                            <div class="mws-panel-body"  >
                                <label>Escolha o carreto que irá fazer e prencha os campos:</label> <hr>

                                <label>Código do Pedido:</label>
                                <input type="text" id="idPedido" name="idPedido" class=""  />


                                <label>Valor:</label>
                                <input type="text" id="valor" name="valor" placeholder="R$"  />
                                
                          
                                <input type="hidden" id="idMotorista" name="idMotorista" value="<%= id %>"/>
                                
                                
                          <!--      <select name="situacao" id="situacao" class="selectpicker w100ppc">

                                    <option value="ativo">Ativar</option>
                                    <option value="Desativado">Desativar</option>                                                                                                             
                                </select>

-->

                                <button class="btn" type="button" onclick="inseriOrcamento()" value="inserirOrcamento" />Confirmar</button>



                            <input type="hidden" name="acao">




                            </div>

                        </form>
                    
                    <div class="mws-panel-body no-padding">
                        <table class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    
                                    <th>Código</th>
                                    <th>Partida</th>
                                    <th>Destino</th>
                                    <th>Distância</th>
                                    <th>Data</th>
                                    <th>Hora</th>
                                    <th>Descrição</th>
                                    <th>Situação</th>
                                     <!-- <th>id cliente</th> -->
                                      <th>Tipo</th>
                                      
                                     
                                </tr>
                            </thead>
                            <tbody>
                           
                                              <%
                                        ArrayList<MPedidoOrcamento> lista2 = new PedidoOrcamentoDao().listarPedido();
                                        for (int i = 0; i < lista2.size(); i++) {
                                            out.println("<tr>");

                                            out.println("<td>" + lista2.get(i).getId_pedidoOrca()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getLocalPartida()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getDestino()+ "</td>");
                                             out.println("<td>" + lista2.get(i).getDistancia()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getData() + "</td>");
                                             out.println("<td>" + lista2.get(i).getHora()+ "</td>");
                                            out.println("<td>" + lista2.get(i).getDescricao()+ "</td>");                                        
                                              out.println("<td>" + lista2.get(i).getSituacao()+ "</td>");
                                                  //out.println("<td>" + lista2.get(i).getIdCliente()+ "</td>");
                                                  out.println("<td>" + lista2.get(i).getTipoCarreto()+ "</td>");
                                                  


                                            //  <td><input class="btn" type="button" onclick="funcao1()" value="Desativar Usuario" /> <input class="btn2" type="button" onclick="funcao2()" value="Ativar Usuário" /></td>
                                            out.println("</tr>");

                                        }


                                    %>  
                                     
                                     
                                     
                                   
                      
                                
                                
                            </tbody>
                        </table>
                    </div>
                
                   
                                    
                                    
                <div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Pedidos Aceitos  </span>
                        </div>
                       
                       
                      <div class="mws-panel-body no-padding">
                          
                           <form name="formFinaliza" class="form" action="Orcamento"  method="post"
                            <label>Código: </label>
                               <input size="4" name="codigo"  id="pedidoAceito" type="text" value="">  
                            <input type="hidden" name="acao">
                           
                          <div class="btn-group">
                              <button type="submit" onclick="pedidoEntregue()" class="btn"><i class="icol-accept"></i>Pedido entregue</button>
                           </div>
                       </form>
                        <table id="exemplo" class="mws-datatable-fn mws-table">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th>Nome Cliente </th>
                                    <th>Nome Motorista</th>
                                    <th>Local Partida</th>
                                    <th>Local Destino</th>
                                    <th>Distância</th>
                                    <th>Categoria</th>
                                    <th>Descrição</th>
                                    <th>Situação</th>
                                    <th>Data</th>
                                    
                                    <th>Valor</th>
                                </tr>
                            </thead>
                            <tbody>
                           
                                              <%
                                                  //MPedidoOrcamento ped = new MPedidoOrcamento();
                                                  //ped.setIdCliente(id);
                                        ArrayList<MFinalizaOrcamento> lista5 = new OrcamentoDao().listarorcamentoEntreguePago(user);
                                        for (int i = 0; i < lista5.size(); i++) {
                                            out.println("<tr>");
                                          //  out.println("<td onclick=valor(" + lista2.get(i).getId_pedidoOrca() + ")>" + lista2.get(i).getId_pedidoOrca()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getIdPedido()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getNomeCliente()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getNomeMotorista()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getPartida()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getDistino()+ "</td>");
                                            out.println("<td>" + lista5.get(i).getDistancia() + "</td>");
                                            out.println("<td>" + lista5.get(i).getCategoria()+ "</td>");
                                             out.println("<td>" + lista5.get(i).getDescricao()+ "</td>");
                                           // out.println("<td>" + lista5.get(i).()+ "</td>");
                                            out.println("<td style='color:green'>" + lista5.get(i).getSituacao()+ "</td>");                                        
                                            out.println("<td>" + lista5.get(i).getData()+ "</td>");
                                            out.println("<td> R$ " + lista5.get(i).getValor()+ "</td>");

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
            Sistema desenvolvido por José Augusto Porcel Stacio grupo 3  - Leve Fácil &copy; 2019,
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