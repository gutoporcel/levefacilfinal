var duvidas = [

	{
		"pergunta" : "Paguei minha viagem com o Cartão Elo. Como peço meu chip?"
		,
		"resposta" : "Você só precisa entrar em nosso site e solicitar o envio de seu Chip Grátis, através do link <a href='https://www.yesdobrasil.com.br/voceconectado/'>www.yescelular.com.br/voceconectado</a>, preenchendo um breve cadastro e aguardar nossas instruções de envio."
	}
	,
	{
		"pergunta" : "Quanto tem de <strong>Internet</strong> e Voz grátis no chip?"
		,
		"resposta" : "Oferecemos 2 Gigas e mais 100 minutos totalmente grátis para serem usados em mais de 140 países."
	}
	,
	{
		"pergunta" : "Como comprovo que paguei com cartão ELO na hora de solicitar meu chip?"
		,
		"resposta" : "Acessando o nosso site, no link <a href='peca-o-seu.aspx' target='_blank' title='Yes Celular'>PEÇA O SEU!</a> efetuando seu cadastro, você irá anexar a imagem do comprovante de pagamento da passagem com cartão elo e bilhete de viagem.."
	}
	,
	{
		"pergunta" : "Solicitei o meu Chip. Quando recebo? Tenho até quando para usá-lo?"
		,
		"resposta" : "O prazo para recebimento do seu chip <strong>ELO YES</strong> é de até 10 dias uteis. após a validação do seu chip ele ficará ativo por 30 dias para uso exclusivo em território internacional."
	}
	,
	{
		"pergunta" : "Recebi o Chip. O que tenho que fazer?"
		,
		"resposta" : "Você só precisa inserir o chip em seu celular um dia antes de sua viagem ao exterior, sem esquecer de ativar o <strong>ROAMING DE DADOS</strong>, para que a internet funcione. O funcionamento é automático. Toda a configuração é feita por nossa equipe, para que não precise se preocupar com nada e somente usufruir do seu plano."
	}
	,
	{
		"pergunta" : "O tamanho do Chip é compatível com o meu celular?"
		,
		"resposta" : "Sim, você receberá o Chip em três formatos, compatíveis com todas as marcas e modelos de celulares existentes."
	}
	,
	{
		"pergunta" : "Em caso de perda ou extravio, posso obter uma segunda via do Chip?"
		,
		"resposta" : "Infelizmente, não. Pela característica do produto e do plano pré-pago, o seu Chip é único e não há como obter outro em caso de perda, devendo um novo Chip ser adquirido. Portanto, recomendamos guardá-lo cuidadosamente."
	}
	,
	{
		"pergunta" : "Estou com problemas de configuração. como faço?"
		,
		"resposta" : "Primeiramente, procure uma rede Wi-Fi para que possa manter contato com nosso suporte via WhastApp. Através do número (11) 92001-0404, descreva seu problema que iremos ajudar imediatamente, para que possa ter uma excelente experiência."
	}
	,
	{
		"pergunta" : "Meu problema não foi resolvido. Como faço?"
		,
		"resposta" : "Sentimos muito em não conseguir atender sua solicitação. Alguns fatores alheios a nossa vontade podem ocasionar essa situação, mas nem por isso você vai ficar sem navegar, pedimos a gentileza de ir à uma loja da operadora local de sua preferência e adquirir um chip da mesma que faremos o reembolso até o valor de $50 doláres americanos, bastando para o ressarcimento, o envio do comprovante de pagamento. Mas lembramos que, se seu celular for bloqueado pela operadora Brasileira, não haverá como fazer o mesmo funcionar em qualquer outro país."
	}
	,
	{
		"pergunta" : "Algo altera em relação aos aplicativos que tenho no meu telefone?"
		,
		"resposta" : "Não, tudo continua do mesmo jeito. Você utiliza os seus aplicativos usando a internet da mesma forma como sempre fez."
	}
	,
	{
		"pergunta" : "E em relação ao WhatsApp?"
		,
		"resposta" : "Também não mudará nada. Continuará usando da mesma forma, com o seu número de conta atual e todos os seus contatos. O WhatsApp vai detectar que houve alteração no número do seu telefone e abrirá uma tela perguntando se deseja manter o seu número de conta atual ou alterar para o novo número. Basta escolher a opção <strong>MANTER</strong> o numero atual."
	}
	,
	{
		"pergunta" : "Tenho um iPhone, como ativar o <strong>ROAMING DE DADOS</strong>?"
		,
		"resposta" : "Basta ir a <strong>AJUSTES</strong> > <strong>CELULAR</strong> > <strong>OPÇÕES DE DADOS CELULARES</strong> > <strong>ROAMING DE DADOS</strong> e ativar. <br> <br> Para <strong>VOZ E DADOS</strong>, selecione <strong>4G</strong> e sempre deixe ativado <strong>DADOS CELULAR</strong>."
	}
	,
	{
		"pergunta" : "Tenho um celular sistema <strong>ANDROID</strong>. Como ativar o <strong>ROAMING DE DADOS</strong>?"
		,
		"resposta" : "Basta deslizar o topo da tela para baixo, clicar em <strong>CONFIGURAÇÕES</strong> > <strong>MAIS CONFIGURAÇÕES</strong> > <strong>REDES MÓVEIS</strong> > <strong>DADOS EM ROAMING</strong>, ativar e pressionar <strong>OK</strong>, e a tecla de inicio para finalizar e voltar à tela inicial."
	}
	,
	{
		"pergunta" : "Estou viajando e meu plano acabou. O que fazer?"
		,
		"resposta" : "Você pode adquirir uma recarga em nosso site, em dias úteis no horário comercial, e seu celular será recarregado em minutos. Basta acessar nosso site <a href='http://yescelular.com.br/voceconectado' target='_blank'>www.yescelular.com.br/voceconectado</a> e acessar o item '<a href='https://www.pagtel.com.br/yestelecom/' target='_blank'>Recarga</a>' no menu."
	}
	
];

var conteudo;

for(var x = 0; x < duvidas.length; x++){

conteudo = "<li class='comment'>";

	// CAIXINHA DE PERGUNTA
	conteudo += "<div class='comment-body caixapergunta' style='cursor:pointer' id='caixinhapergunta" + x + "'>";

		conteudo += "<div class='photo'>";
			conteudo += "<i class='fa fa-user fa-3x'></i>";
		conteudo += "</div>";
		
		conteudo += "<div class='comment-text'>";
			conteudo += "<p>";
				conteudo += duvidas[x].pergunta;
			conteudo += "</p>"
		conteudo += "</div>";

		conteudo += "<i class='reply-link fa fa-share'></i>";

	conteudo += "</div>";

	// CAIXINHA DE RESPOSTA
	conteudo += "<ul class='child-comments' id='caixinhareposta" + x + "' style='display:none;'>";

		conteudo += "<li class='comment'>";

			conteudo += "<div class='comment-body'>";

				conteudo += "<div class='photo'>";
					conteudo += "<img src='images/icone-elo.png' alt='ELO' />";
				conteudo += "</div>";

				conteudo += "<div class='comment-text'>";

					conteudo += "<header>";
						conteudo += "<h6>";
							conteudo += "<a>Suporte Técnico - Yes Elo</a>";
						conteudo += "</h6>";
					conteudo += "</header>";

					conteudo += "<p>";
						conteudo += duvidas[x].resposta;
					conteudo += "</p>";

				conteudo += "</div>";

				conteudo += "<a href='javascript:;' class='reply-link'></a>";

			conteudo += "</div>";

		conteudo += "</li>";

		// conteudo += "<hr />";

	conteudo += "</ul>";

conteudo += "</li>";

	$("#duvidas").append(conteudo);

}

$(function() {
	
	var conteudopf = "<script>";

	for(var n = 0; n < duvidas.length; n++){

	conteudopf += `
	
	$("#caixinhapergunta" + ` + n + `).click(function() {
		$("#caixinhareposta" + ` + n + `).toggle();
		$("#caixinhapergunta" + ` + n + `).toggleClass(' caixaperguntaclick');
	});

	`;

	}

	conteudopf += "</script>";

	$("#scriptpf").html(conteudopf);

});