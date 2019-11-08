
var bins = [
	"509048",
	"509068",
	"651652",
	"651653",
	"651656",
	"651659",
	"651658",
	"650914",
	"650918"
]

function contains(arr, value) {
    var i = arr.length;
    while (i--) {
        if (arr[i] === value) return true;
    }
    return false;
}

//#region mascaras


	function fMasc(objeto, mascara) {
		obj = objeto
		masc = mascara
		setTimeout("fMascEx()", 1)
	}
	function fMascEx() {
		obj.value = masc(obj.value)
	}
	function mTel(tel) {
		tel = tel.replace(/\D/g, "")
		tel = tel.replace(/^(\d)/, "($1")
		tel = tel.replace(/(.{3})(\d)/, "$1) $2")
		if (tel.length == 9) {
			tel = tel.replace(/(.{1})$/, "-$1")
		} else if (tel.length == 10) {
			tel = tel.replace(/(.{2})$/, "-$1")
		} else if (tel.length == 11) {
			tel = tel.replace(/(.{3})$/, "-$1")
		} else if (tel.length == 12) {
			tel = tel.replace(/(.{4})$/, "-$1")
		} else if (tel.length > 12) {
			tel = tel.replace(/(.{4})$/, "-$1")
		}
		return tel;
	}
	function mCNPJ(cnpj) {
		cnpj = cnpj.replace(/\D/g, "")
		cnpj = cnpj.replace(/^(\d{2})(\d)/, "$1.$2")
		cnpj = cnpj.replace(/^(\d{2})\.(\d{3})(\d)/, "$1.$2.$3")
		cnpj = cnpj.replace(/\.(\d{3})(\d)/, ".$1/$2")
		cnpj = cnpj.replace(/(\d{4})(\d)/, "$1-$2")
		return cnpj;
	}
	function mCPF(cpf) {
		cpf = cpf.replace(/\D/g, "")
		cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
		cpf = cpf.replace(/(\d{3})(\d)/, "$1.$2")
		cpf = cpf.replace(/(\d{3})(\d{1,2})$/, "$1-$2")
		return cpf;
	}
	function mCEP(cpf) {
		cpf = cpf.replace(/\D/g, "")
		cpf = cpf.replace(/(\d{5})(\d)/, "$1-$2")
		return cpf;
	}
	function mRG(rg) {
	    rg = rg.replace(/\D/g, "")
	    rg = rg.replace(/(\d{2})(\d)/, "$1.$2")
	    rg = rg.replace(/(\d{3})(\d)/, "$1.$2")
	    rg = rg.replace(/(\d{3})(\d{1,2})$/, "$1-$2")
	    return rg;
	}

	function mNum(num) {
		num = num.replace(/\D/g, "")
		return num;
	}

	function mInput1(input) {
	    input = input.replace(/\D/g, "")
	    input = input.replace(/^(\d{4})(\d)/, "$1   $2")
	    return input;
	}

	function mInput2(input) {
	    input = input.replace(/\D/g, "")
	    input = input.replace(/^(\d{2})(\d)/, "$1   $2")
	    return input;
	}

	function mascara(o, f) {

		v_obj = o;
		v_fun = f;
		setTimeout("execmascara()", 1);

	}

	function execmascara() {

		v_obj.value = v_fun(v_obj.value);

	}

	function telefone(v) {

		v = v.replace(/\D/g, "");
		v = v.replace(/^(\d{2})(\d)/g, "($1) $2");
		v = v.replace(/(\d)(\d{4})$/, "$1-$2");

		return v;
	}

	function mdata(v) {
		v = v.replace(/\D/g, "");                    //Remove tudo o que não é dígito
		v = v.replace(/(\d{2})(\d)/, "$1/$2");
		v = v.replace(/(\d{2})(\d)/, "$1/$2");

		v = v.replace(/(\d{2})(\d{2})$/, "$1$2");
		return v;
	}

	function mChip(chip) {
		chip = chip.replace(/\D/g, "");
		chip = chip.replace(/(.{5})(\d)/, "$1 $2");
		chip = chip.replace(/(.{11})(\d)/, "$1 $2");
		chip = chip.replace(/(.{17})(\d)/, "$1 $2");
		chip = chip.replace(/(.{23})(\d)/, "$1 $2");
		return chip;
	}

	function mCartao(cartao) {
		cartao = cartao.replace(/\D/g, "");
		cartao = cartao.replace(/(.{4})(\d)/, "$1 $2");
		cartao = cartao.replace(/(.{9})(\d)/, "$1 $2");
		cartao = cartao.replace(/(.{14})(\d)/, "$1 $2");
		cartao = cartao.replace(/(.{19})(\d)/, "$1 $2");
		return cartao;
	}

//#endregion

function validarCampos(pagina) {
	
	if ($('#nome').val() == "")
	{
		alert("Digite o seu nome.");
		$('#nome').focus();
	}
	else if ($('#cpf').val() == "")
	{
		alert("Digite o seu CPF.");
		$('#cpf').focus();
	}
	else if ($('#telefone').val() == "")
	{
		alert("Digite o seu telefone.");
		$('#telefone').focus();
	}
	else if ($('#email').val() == "")
	{
		alert("Digite o seu e-mail.");
		$('#email').focus();
	}
	else if ($('#emailconfirmacao').val() == "")
	{
		alert("Confirme o seu e-mail.");
		$('#emailconfirmacao').focus();
	}
	else if ($('#email').val() != $('#emailconfirmacao').val())
	{
		alert("Ops... o e-mail digitado não foi confirmado.");
		$('#emailconfirmacao').focus();
	}
	
	else if (qtdchip > 0 && $('#nome1').val() == "")
	{
		alert("Digite o nome do portador do 2º chip.");
		$('#nome1').focus();
	}
	else if (qtdchip > 0 && $('#cpf1').val() == "")
	{
		alert("Digite o CPF do portador do 2º chip.");
		$('#cpf1').focus();
	}

	else if (qtdchip > 1 && $('#nome2').val() == "")
	{
		alert("Digite o nome do portador do 3º chip.");
		$('#nome2').focus();
	}
	else if (qtdchip > 1 && $('#cpf2').val() == "")
	{
		alert("Digite o CPF do portador do 3º chip.");
		$('#cpf2').focus();
	}

	else if (qtdchip > 2 && $('#nome3').val() == "")
	{
		alert("Digite o nome do portador do 4º chip.");
		$('#nome3').focus();
	}
	
	else if (qtdchip > 2 && $('#cpf3').val() == "")
	{
		alert("Digite o CPF do portador do 4º chip.");
		$('#cpf3').focus();
	}

	else if (qtdchip > 3 && $('#nome4').val() == "")
	{
		alert("Digite o nome do portador do 5º chip.");
		$('#nome4').focus();
	}

	else if (qtdchip > 3 && $('#cpf4').val() == "")
	{
		alert("Digite o CPF do portador do 5º chip.");
		$('#cpf4').focus();
	}

	else if ($('#cartaoelo').val() == "")
	{
		alert("Digite os 6 primeiros dígitos do seu Cartão ELO.");
		$('#cartaoelo').focus();
	}

	else if (!contains(bins,$('#cartaoelo').val()))
	{
		alert("O número digitado é inválido ou este cartão ainda não está elegível para este benefício.");
		$('#cartaoelo').focus();
	}

	else if ($('#dataida').val() == "")
	{
		alert("Digite a data de ida.");
		$('#dataida').focus();
	}

	else if ($('#datavolta').val() == "")
	{
		alert("Digite a data de volta.");
		$('#datavolta').focus();
	}
	
	else if ($('#comprovante').val() == "")
	{
		alert("Anexe o comprovante de viagem.");
		$('#comprovante').focus();
	}
	else if ($('#destino').val() == "")
	{
		alert("Digite o país de destino.");
		$('#destino').focus();
	}
	
	else if(pagina == 1){
		if ($('#endereco').val() == "")
		{
			alert("Digite o endereço.");
			$('#endereco').focus();
		}
		else if ($('#numero').val() == "")
		{
			alert("Digite o número do logradouro.");
			$('#numero').focus();
		}
		else if ($('#cidade').val() == "")
		{
			alert("Digite o nome da cidade.");
			$('#cidade').focus();
		}
		else if ($('#cep').val() == "")
		{
			alert("Digite o CEP.");
			$('#cep').focus();
			alert($('#estado').val());
		}
		else if (!$('#estado').val())
		{
			alert("Selecione o estado.");
			$('#estado').focus();
		}
		else
		{
			boxConfirmacao(1);
		}
	}

	else if(pagina == 2){
		if ($('#iccid').val() == "")
		{
			alert("Digite o seu ICCID.");
			$('#iccid').focus();
		}

		else if (qtdchip > 0 && $('#iccid1').val() == "")
		{
			alert("Digite o ICCID do portador do 2º chip.");
			$('#iccid1').focus();
		}
		else if (qtdchip > 0 && $('#telefone1').val() == "")
		{
			alert("Digite o telefone do portador do 2º chip.");
			$('#telefone1').focus();
		}
		
		else if (qtdchip > 1 && $('#iccid2').val() == "")
		{
			alert("Digite o ICCID do portador do 3º chip.");
			$('#iccid2').focus();
		}
		else if (qtdchip > 1 && $('#telefone2').val() == "")
		{
			alert("Digite o telefone do portador do 3º chip.");
			$('#telefone2').focus();
		}
		
		else if (qtdchip > 2 && $('#iccid3').val() == "")
		{
			alert("Digite o ICCID do portador do 4º chip.");
			$('#iccid3').focus();
		}
		else if (qtdchip > 2 && $('#telefone3').val() == "")
		{
			alert("Digite o telefone do portador do 4º chip.");
			$('#telefone3').focus();
		}
		
		else if (qtdchip > 3 && $('#iccid4').val() == "")
		{
			alert("Digite o ICCID do portador do 5º chip.");
			$('#iccid4').focus();
		}
		else if (qtdchip > 3 && $('#telefone4').val() == "")
		{
			alert("Digite o telefone do portador do 5º chip.");
			$('#telefone4').focus();
		}
		else if(!$("#chkTermo").is(':checked')){
			alert("Leia os termos de uso antes de continuar.");
			$('#chkTermo').focus();
		}
		else
		{
			boxConfirmacao(2);
		}

	}
}
		
$('#boxConfirmacao').hide();

function fecharBoxConfirmacao(){
	$('#boxConfirmacao').hide();
}

function boxConfirmacao(pagina){

	var maisDeUmChip = "";

	var qtdChipBox = qtdchip + 1;

	if(qtdChipBox > 1){
		maisDeUmChip = "S";
	}

	$('#qtdChips').html(qtdChipBox + " CHIP" + maisDeUmChip)

	$('#qtdChipsTexto').val(qtdChipBox + " CHIP" + maisDeUmChip)
	$('#qtdChipsNumero').val(qtdchip)

	$('#boxConfirmacao').show();

	var conteudo = "";

	conteudo += "<h3 style='padding-left:15px;'>CHIP 1</h3>";
	conteudo += "<div class='col-md-6'>";
	conteudo += "<p><strong>Nome:</strong> " + $('#nome').val() + "</p>";
	conteudo += "<p><strong>CPF:</strong> " + $('#cpf').val() + "</p>";

	if(pagina == 2){
		conteudo += "<p><strong>ICCID do CHIP:</strong> " + $('#iccid').val() + "</p>";		
	}

	conteudo += "</div>";
	conteudo += "<div class='col-md-6'>";
	conteudo += "<p><strong>Telefone:</strong> " + $('#telefone').val() + "</p>";
	conteudo += "<p><strong>E-mail:</strong> " + $('#email').val() + "</p>";
	conteudo += "</div>";
	conteudo += "<div class='clearfix'></div>";

	if(qtdchip > 0){
		conteudo += "<div class='col-md-6 line-cima'>";
		conteudo += "<h3>CHIP 2</h3>";
		conteudo += "<p><strong>Nome:</strong> " + $('#nome1').val() + "</p>";
		conteudo += "<p><strong>CPF:</strong> " + $('#cpf1').val() + "</p>";
		conteudo += "</div>";
	}
	if(qtdchip > 1)
	{
		conteudo += "<div class='col-md-6 line-cima'>";
		conteudo += "<h3>CHIP 3</h3>";
		conteudo += "<p><strong>Nome:</strong> " + $('#nome2').val() + "</p>";
		conteudo += "<p><strong>CPF:</strong> " + $('#cpf2').val() + "</p>";
		conteudo += "</div>";
	}
	if(qtdchip > 2)
	{
		conteudo += "<div class='col-md-6 line-cima'>";
		conteudo += "<h3>CHIP 4</h3>";
		conteudo += "<p><strong>Nome:</strong> " + $('#nome3').val() + "</p>";
		conteudo += "<p><strong>CPF:</strong> " + $('#cpf3').val() + "</p>";
		conteudo += "</div>";
	}
	if(qtdchip > 3)
	{
		conteudo += "<div class='col-md-6 line-cima'>";
		conteudo += "<h3>CHIP 5</h3>";
		conteudo += "<p><strong>Nome:</strong> " + $('#nome4').val() + "</p>";
		conteudo += "<p><strong>CPF:</strong> " + $('#cpf4').val() + "</p>";
		conteudo += "</div>";
	}

	if(pagina == 1){
		conteudo += "<div class='clearfix'></div>";
		conteudo += "<hr />";

		conteudo += "<div class='col-md-12'>";
		conteudo += "<p><strong>Endereço:</strong> " + $('#endereco').val() + " nº " + $('#numero').val() + " | " + $('#complemento').val() + " | " + $('#cidade').val() + " - " + $('#estado').val() +" | CEP: " + $('#cep').val() + "</p>";
		conteudo += "</div>";

	}

	conteudo += "<div class='clearfix'></div>";
	conteudo += "<hr />";

	conteudo += "<div class='col-md-12'>";
	conteudo += "<p><strong>6 primeiros dígitos do seu Cartão ELO:</strong> " + $('#cartaoelo').val() + "</p>";
	conteudo += "</div>";
	
	conteudo += "<div class='clearfix'></div>";
	conteudo += "<hr />";

	conteudo += "<div class='col-md-6'>";
	conteudo += "<p><strong>Destino:</strong> " + $('#destino').val() + "</p>";
	conteudo += "</div>";

	conteudo += "<div class='col-md-3'>";
	conteudo += "<p><strong>Data de Ida:</strong> " + $('#dataida').val() + "</p>";
	conteudo += "</div>";

	conteudo += "<div class='col-md-3'>";
	conteudo += "<p><strong>Data de Volta:</strong> " + $('#datavolta').val() + "</p>";
	conteudo += "</div>";

	conteudo += "<div class='clearfix'></div>";
	conteudo += "<hr />";

	$('#conteudoBoxConfirmacao').html(conteudo);

}

function enviaDados(){
	$('#qtdChips').val(qtdchip+1);
}

function interrogacaoiccid(){
	$('#interrogacaoiccid').show();
}

function interrogacaocartao1() {
    $('#interrogacaocartao1').show();
}

function interrogacaocartao2() {
    $('#interrogacaocartao2').show();
}

function fechaInfo(){
	$('#interrogacaoiccid').hide();
	$('#interrogacaocartao1').hide();
	$('#interrogacaocartao2').hide();
	$("#popup_android").hide();
	$("#popup_ios").hide();
	$("#popup_regras").hide();
}

function popup_android(){
	$("#popup_android").show();
}

function popup_ios(){
	$("#popup_ios").show();
}


