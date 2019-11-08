<%@page import="java.util.ArrayList"%>
<%@page import="dao.ClienteDao"%>
<%@page import="model.MCliente"%>
<%@include file="sessaocliente.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
    
    
    
    
    <script>
    
    
      function Alterar() {
              
           document.formAlteraCliente.acao.value = 'alterar';
           document.formAlteraCliente.submit();

                                    

                                    }
                                    
                                    
         </script>                
         
         
         
         
         
         
         
         
         
                                    
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
                        Olá,  <%= usuario %>
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
                        <li class="active"><a href="dadosCliente.jsp"><i class="icon-list-2"></i> Perfil</a></li>
                        <li><a href="listaCartoesCliente.jsp"><i class="icon-business-card"></i>Cartões</a></li>
                   <li><a href="listaTransacoesCliente.jsp"><i class="icon-briefcase"></i>Histórico</a></li>
                           <li><a href="listaSolicitacoesCliente.jsp"><i class="icon-check"></i>Solicitações</a></li>
                           <li><a href="gerenciarPagamentoCliente.jsp"><i class="icon-lock"></i>Pagamentos</a></li>
                         <li><a href="sac.jsp"><i class="icol32-user"></i>SAC</a></li>
                        
                    
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
                    	<span>Dados do Cliente</span>
                    </div>
                    
                                               <%
                       
                      
                                      MCliente cliente = new MCliente();
                                      cliente.setIdCliente(id);
                                      ArrayList<MCliente> lista = new ClienteDao().listarCliente(cliente);
                                        for (int i = 0; i < lista.size(); i++) {                                                                                                                     
        %>
                    
                    
                    
                    
                    
                    
                    
                    <div class="mws-panel-body no-padding">
                       
                        <form class="mws-form" name="formAlteraCliente" action="AlteraCliente" id="FormAltera" method="post">
                            <div class="mws-form-row">
                            	<div class="mws-form-cols">
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Nome</label>
                                        <div class="mws-form-item">
                                            <input name="nome" type="text" value="<%= lista.get(i).getNomeCliente() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">RG</label>
                                        <div class="mws-form-item">
                                            <input name="rg" type="text"   maxlength="12" onkeydown="mascara(this,mRG)"  value="<%= lista.get(i).getNumeroRgCliente() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">CPF</label>
                                        <div class="mws-form-item">
                                            <input name="cpf" type="text" maxlength="14" onkeydown="mascara(this, mCPF)"  value="<%= lista.get(i).getCpfCliente() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Data de Nascimento</label>
                                        <div class="mws-form-item">
                                            <input name="dataNascimento" type="date" value="<%= lista.get(i).getDataNaciCliente() %>" >
                                        </div>
                                    </div>
									
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Telefone</label>
                                        <div class="mws-form-item">
                                            <input name="telefone" type="text" maxlength="14" onkeydown="mascara(this, mTel)" value="<%= lista.get(i).getTelefoneCliente() %>"  >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Celular</label>
                                        <div class="mws-form-item">
                                            <input name="celular" type="text"  maxlength="15" onkeydown="mascara(this, mTel)" value="<%= lista.get(i).getTelefoneCliente() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">E-mail</label>
                                        <div class="mws-form-item">
                                            <input name="email" type="text" value="<%= lista.get(i).getEmailCliente() %>" >
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">CEP</label>
                                        <div class="mws-form-item">
                                            <input name="cep" type="text"  maxlength="9" onkeydown="mascara(this, mCEP)" value="<%= lista.get(i).getCepCliente() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">Endereço</label>
                                        <div class="mws-form-item">
                                            <input name="edereco"type="text" value="<%= lista.get(i).getLogradouroCliente() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">N°</label>
                                        <div class="mws-form-item">
                                            <input name="numeroCasa" type="text" value="<%= lista.get(i).getNumeroCasaCliente() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Complemento</label>
                                        <div class="mws-form-item">
                                            <input name="complemento" type="text" value="<%= lista.get(i).getComplementoCliente() %>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Bairro</label>
                                        <div class="mws-form-item">
                                            <input name="bairro" type="text" value="<%= lista.get(i).getBairroCliente() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Cidade</label>
                                        <div class="mws-form-item">
                                            <input name="cidade" type="text" value="<%= lista.get(i).getCidadeCliente() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Estado</label>
                                        <div class="mws-form-item">
                                            <select class="large" name="estado">
                                                <option value="" disabled>-</option>
                                                <%= lista.get(i).getCidadeCliente() %>
                                                <option selected="<%= lista.get(i).getEstadoCliente() %>" value="<%= lista.get(i).getEstadoCliente() %>"></option>
                                                <option value="AC">Acre</option>
                                                <option value="AL">Alagoas</option>
                                                <option value="AP">Amapá</option>
                                                <option value="AM">Amazonas</option>
                                                <option value="BA">Bahia</option>
                                                <option value="CE">Ceará</option>
                                                <option value="DF">Distrito Federal</option>
                                                <option value="ES">Espírito Santo</option>
                                                <option value="GO">Goiás</option>
                                                <option value="MA">Maranhão</option>
                                                <option value="MT">Mato Grosso</option>
                                                <option value="MS">Mato Grosso do Sul</option>
                                                <option value="MG">Minas Gerais</option>
                                                <option value="PA">Pará</option>
                                                <option value="PB">Paraíba</option>
                                                <option value="PR">Paraná</option>
                                                <option value="PE">Pernambuco</option>
                                                <option value="PI">Piauí­</option>
                                                <option value="RJ">Rio de Janeiro</option>
                                                <option value="RN">Rio Grande do Norte</option>
                                                <option value="RS">Rio Grande do Sul</option>
                                                <option value="RO">Rondónia</option>
                                                <option value="RR">Roraima</option>
                                                <option value="SC">Santa Catarina</option>
                                                <option value="SP">São Paulo</option>
                                                <option value="SE">Sergipe</option>
                                                <option value="TO">Tocantins</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    		
                    			
                            
                                          <%    } %>
                                        
                                        <button type="button" value="alterar" name="btnAltera" class="btn btn-danger" onclick="Alterar()" ID="btnConfirmar" >Alterar</button>
                                        <input type="hidden" name="acao">
                    			
                                        <input type="hidden" name="id" value="<%= id %>">
                        </form><br>
                        <a href="alterarSenhaCliente.jsp">  <button class="btn btn-danger">Editar Senha</button></a>
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