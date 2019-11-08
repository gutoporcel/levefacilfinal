
$(function() {
    $("#popup_android").hide();
    $("#popup_ios").hide();
    $("#popup_eua_android").hide();
    $("#popup_eua_ios").hide();

    var conteudo_popup_android = "<div class='box_popup'> <h2>ANDROID</h2> <h3>COMO CONFIGURAR O Chip de Viagem Internacional NO SISTEMA ANDROID</h3> <p style='text-align:left;'> Se o número ICCID do seu chip internacional começar com “8901”, apenas ative o roaming de dados. Caso esteja nos Estados unidos, não é necessário nenhuma configuração. <br> Chip internacional com ICCID com início “8944”, siga os procedimentos abaixo:<br> 1. Desligar o Wi-Fi do celular <br> 2. Inserir o simcard no celular <br> 3. Seguir os passos: Configurações > Redes Móveis > Dados em Roaming (ativar o botão) <br> 4. Dentro de Dados em Roaming, entrar em Pontos de Acesso e inserir uma nova configuração: <br> • Nome: ELO <br> • APN: chili <br> • Nome do Usuário: chili <br> • Demais configurações: pode manter como “indefinido” <br> IMPORTANTE: O Nome, APN e Nome do Usuário devem ser exatamente os descritos acima. <br> 5. Após feita a nova configuração, selecionar o Ponto de Acesso ELO. <small><br>Obs: Manter o Chip Internacional ELO no slot 1 de seu aparelho.<br> </small></p>  <h3>Pronto! Agora é só usar o seu Chip de Viagem Internacional!</h3> <a id='btn_popup_eua_android' onClick='popup_eua_android()'>CONFIGURAÇÃO ADICIONAL PARA OS ESTADOS UNIDOS</a> <a class='a-voltar' onClick='fecha_popup()'>X</a> </div>";

    var conteudo_popup_ios = "<div class='box_popup'> <h2>iOS</h2> <h3>COMO CONFIGURAR O Chip de Viagem Internacional NO SISTEMA iOS</h3> <p style='text-align:left;'> Se o número ICCID do seu chip internacional começar com “8901”, apenas ative o roaming de dados. Caso esteja nos Estados unidos, não é necessário nenhuma configuração. <br> Chip internacional com ICCID com início “8944”, siga os procedimentos abaixo:<br>  1. Na tela inicial do iPhone toque em Ajustes; <br> 2. Selecione a opção Celular > ativar o botão de Dados Celulares; <br> 3. Na mesma tela, logo abaixo, selecione Opções de Dados Celulares e ativar o botão Roaming de Dados; <br> 4. Dentro desta tela, toque em Rede de Dados Celulares e preencher os campos abaixo: <br> • APN: chili <br> • Nome do Usuário: chili <br> • Demais configurações: não é necessário alterar <br> IMPORTANTE: O APN e Nome do Usuário devem ser exatamente os descritos acima. </p> <h3>Pronto! Agora é só usar o seu Chip de Viagem Internacional!</h3> <a id='btn_popup_eua_ios' onClick='popup_eua_ios()'>CONFIGURAÇÃO ADICIONAL PARA OS ESTADOS UNIDOS</a> <a class='a-voltar' onClick='fecha_popup()'>X</a> </div>";

	var conteudo_popup_eua_android = "<div class='box_popup'> <h2>ANDROID</h2> <h3>CONFIGURAÇÃO ADICIONAL PARA OS ESTADOS UNIDOS</h3> <p style='text-align:left;'> Caso possua alguma dificuldade na conexão nos Estados Unidos, siga os passos abaixo! <br> Essa configuração deve ser feita apenas nos Estados Unidos. </p> <p style='text-align:left;'> 1. Localize o aplicativo '<strong>Sim Services</strong>', '<strong>Ferramentas do Sim</strong>' ou '<strong>Toolkit</strong>'. <br> 2. Vá em Settings > Country Selection > Manual Mode <br> 3. Settings novamente > Country > Global+ <br> <br> <small>Obs: Assim que sair dos Estados Unidos, no passo 2 altere para '<strong>Automatic Mode</strong>'.</small> </p> <h3>Pronto! Agora é só usar o seu Chip de Viagem Internacional!</h3> <a class='a-voltar' onClick='fecha_popup()'>X</a> </div>";

	var conteudo_popup_eua_ios = "<div class='box_popup'> <h2>IOS</h2> <h3>CONFIGURAÇÃO ADICIONAL PARA OS ESTADOS UNIDOS</h3> <p style='text-align:left;'> Caso possua alguma dificuldade na conexão nos Estados Unidos, siga os passos abaixo! <br> Essa configuração deve ser feita apenas nos Estados Unidos. </p> <p style='text-align:left;'> 1. Vá em Ajustes > Telefone > Aplicativos Sim <br> 2. Settings > Country Selection > Manual Mode <br> 3. Settings novamente > Country > Global+ <br> <br> <small>Obs: Assim que sair dos Estados Unidos, no passo 2 altere para '<strong>Automatic Mode</strong>'. <br> </small> </p> <h3>Pronto! Agora é só usar o seu Chip de Viagem Internacional!</h3> <a class='a-voltar' onClick='fecha_popup()'>X</a> </div>";

	$("#popup_android").html(conteudo_popup_android);
	$("#popup_ios").html(conteudo_popup_ios);
	$("#popup_eua_android").html(conteudo_popup_eua_android);
	$("#popup_eua_ios").html(conteudo_popup_eua_ios);
});

function popup_android(){
	$("#popup_android").show();
}

function popup_ios(){
	$("#popup_ios").show();
}

function fecha_popup() {
    $("#popup_android").hide();
    $("#popup_ios").hide();
    $("#popup_regras").hide();
    $("#popup_temp").hide();
    $("#popup_eua_android").hide();
    $("#popup_eua_ios").hide();
}

function popup_eua_android() {
    $("#popup_android").hide();
    $("#popup_eua_android").show();
}

function popup_eua_ios() {
    $("#popup_ios").hide();
    $("#popup_eua_ios").show();
}