<%@page import="dao.MotoristaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.MMotorista"%>
<%@include file="sessaocliente.jsp" %>
<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
    
    
        <script>
    
    
      function alterarMotorista() {
              
           document.formAlteraMotorista.acao.value = 'alterarMotorista';
           document.formAlteraMotorista.submit();

                                    

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

<title>Leve Facil - Dashboard</title>
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
                        Olá <%= usuario %>
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
                   <li class="active"><a href="dadosMotorista.jsp"><i class="icon-business-card"></i>Perfil</a></li>
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
            
                <!-- Panels Start -->
                
            	<div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span>Dados do Motorista</span>
                    </div>
                    
                    
             <%
                       
                      
                                      MMotorista motorista = new MMotorista();
                                      motorista.setIdMotorista(id);
                                      ArrayList<MMotorista> lista = new MotoristaDAO().listarMotoristaDados(motorista);
                                        for (int i = 0; i < lista.size(); i++) {                                                                                                                     
        %>
                    
                    
                    
                    <div class="mws-panel-body no-padding">
                        <form class="mws-form" name="formAlteraMotorista" method="post" action="AlteraMotorista">
                            <div class="mws-form-row">
                            	<div class="mws-form-cols">
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Nome</label>
                                        <div class="mws-form-item">
                                            <input name="nome" type="text" value="<%= lista.get(i).getNome() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">RG</label>
                                        <div class="mws-form-item">
                                            <input name="rg" type="text" value="<%= lista.get(i).getNumero_rg() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">CPF</label>
                                        <div class="mws-form-item">
                                            <input name="cpf" type="text" value="<%= lista.get(i).getCpf() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Data de Nascimento</label>
                                        <div class="mws-form-item">
                                            <input name="dataNasc" type="date" value="<%= lista.get(i).getData_nac() %>" >
                                        </div>
                                    </div>
									
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Telefone</label>
                                        <div class="mws-form-item">
                                            <input name="telefone" type="text" value="<%= lista.get(i).getTelefone() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Celular</label>
                                        <div class="mws-form-item">
                                            <input name="celular" type="text" value="<%= lista.get(i).getCelular() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">E-mail</label>
                                        <div class="mws-form-item">
                                            <input name="email" type="text" value="<%= lista.get(i).getEmail() %>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                            	<div class="mws-form-cols">
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">CNH</label>
                                        <div class="mws-form-item">
                                            <input name="cnh" type="text" value="<%= lista.get(i).getNumero_cnh() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Data de Vencimento</label>
                                        <div class="mws-form-item">
                                            <input name="validadeCNH" type="date" value="<%= lista.get(i).getValidade_cnh() %>" >
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Categoria</label>
                                        <div class="mws-form-item">
                                            <input name="categoria" type="text" value="<%= lista.get(i).getCategoria_cnh() %>">
                                        </div>
                                    </div>
									
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">CEP</label>
                                        <div class="mws-form-item">
                                            <input name="cep" type="text" value="<%= lista.get(i).getCep() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-4-8">
                                        <label class="mws-form-label">Endereço</label>
                                        <div class="mws-form-item">
                                            <input name="logradouro" type="text" value="<%= lista.get(i).getLogradouro() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-1-8">
                                        <label class="mws-form-label">Número</label>
                                        <div class="mws-form-item">
                                            <input name="numero" type="text" value="<%= lista.get(i).getNumero() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                        <label class="mws-form-label">Complemento</label>
                                        <div class="mws-form-item">
                                            <input name="complemento" type="text" value="<%= lista.get(i).getComplemento() %>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="mws-form-row">
                                <div class="mws-form-cols">
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Bairro</label>
                                        <div class="mws-form-item">
                                            <input name="bairro" type="text" value="<%= lista.get(i).getBairro() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-3-8">
                                        <label class="mws-form-label">Cidade</label>
                                        <div class="mws-form-item">
                                            <input name="cidade" type="text" value="<%= lista.get(i).getCidade() %>">
                                        </div>
                                    </div>
                                    <div class="mws-form-col-2-8">
                                         <label class="mws-form-label">Estado</label>
                                        <div class="mws-form-item">
                                            <select class="large" name="estado">
                                                <option value="" disabled>-</option>
                                                <%= lista.get(i).getCidade()%>
                                                <option selected="<%= lista.get(i).getEstado() %>" value="<%= lista.get(i).getEstado() %>"></option>
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

                                <%    } %>
                                         
                            </div>
                            
                    		
                                <button type="button" value="alterar" name="btnAltera" class="btn btn-danger" onclick="alterarMotorista()" ID="btnConfirmar" >Alterar</button>
                                        <input type="hidden" name="acao">
                    			
                                        <input type="hidden" name="id" value="<%= id %>">
                    		
                        </form><br>
                   <a href="alterarSenhaMotorista.jsp">  <button class="btn btn-danger">Editar Senha</button></a>
                </div>
                
                <!-- Panels End -->
            </div>
            <!-- Inner Container End -->
                       
            <!-- Footer -->
            <div id="mws-footer">
            	Sistema desenvolvido por José Augusto Porcel Stacio  Grupo 3 - Leve Fácil &copy; 2019,
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