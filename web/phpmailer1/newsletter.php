<?php 

$email = $_REQUEST['email']; 
$honeypot = $_REQUEST['fTxtNomeH'];	

if(!isset($honeypot))
	$honeypot = '';

if($honeypot == '' && isset($email) && $email != '')
{
	if($assunto == "")
		$assunto="Cadastro Newsletter";
	
		

	$mensagem1=	utf8_decode($mensagem1);
	$nome=	utf8_decode($nome);
	$assunto=	utf8_decode($assunto);
	
	if(PATH_SEPARATOR == ";") $quebra_linha = "<br />"; //Se for Windows
	else $quebra_linha = "\n"; //Se "não for Windows"	
 
	// Inclui o arquivo class.phpmailer.php localizado na pasta phpmailer
	require("class.phpmailer.php");
	 
	// Inicia a classe PHPMailer
	$mail = new PHPMailer();
	 
	// Define os dados do servidor e tipo de conexão
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	$mail->IsSMTP(); // Define que a mensagem será SMTP
	$mail->Host = "smtp.institutoharmonie.com.br"; // Endereço do servidor SMTP (caso queira utilizar a autenticação, utilize o host smtp.seudomínio.com.br)
	$mail->SMTPAuth = true; // Usar autenticação SMTP (obrigatório para smtp.seudomínio.com.br)
	$mail->Username = 'contato@institutoharmonie.com.br'; // Usuário do servidor SMTP (endereço de email)
	$mail->Password = '123mudar'; // Senha do servidor SMTP (senha do email usado)
	 
	// Define o remetente
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	$mail->AddReplyTo($email, $nome);
	$mail->From = 'contato@institutoharmonie.com.br'; // Seu e-mail
	//$mail->Sender = "seu@e-mail.com.br"; // Seu e-mail
	$mail->FromName = "Newsletter"; // Seu nome
	 
	// Define os destinatário(s)
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	//$mail->AddAddress('eduardo@fmaconsulting.com.br', 'Contato fmaconsulting');
	$mail->AddAddress('faleconosco@institutoharmonie.com.br', 'Instituto Harmonie - Newsletter');
	//$mail->AddAddress('thiago@fmaconsulting.com.br');
	//$mail->AddCC('ciclano@site.net', 'Ciclano'); // Copia
	$mail->AddBCC('contato@crivos.com.br', 'Instituto Harmonie - Newsletter'); // Cópia Oculta
	//$mail->AddBCC('asantos@crivos.com.br', 'Instituto Harmonie - Newsletter'); // Cópia Oculta
	 
	// Define os dados técnicos da Mensagem
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	$mail->IsHTML(true); // Define que o e-mail será enviado como HTML
	$mail->CharSet = 'iso-8859-1'; // Charset da mensagem (opcional)
	 
	// Define a mensagem (Texto e Assunto)
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	$mail->Subject  = $assunto; // Assunto da mensagem
	$mail->Body = nl2br('E-mail: ' . $email);
	$mail->AltBody = 'Este é o corpo da mensagem de teste, em Texto Plano! \r\n 
	<IMG src="http://seudomínio.com.br/imagem.jpg" alt=":)"  class="wp-smiley"> ';
	 
	// Define os anexos (opcional)
	// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	//$mail->AddAttachment("/home/login/documento.pdf", "novo_nome.pdf");  // Insere um anexo
	 
	// Envia o e-mail
	$enviado = $mail->Send();
	 
	// Limpa os destinatários e os anexos
	$mail->ClearAllRecipients();
	$mail->ClearAttachments();

}
 
// Exibe uma mensagem de resultado
if ($enviado) {
		header("Location: ../confirmacao-envio.html");
		die($output);
} 
else {
//echo "Não foi possível enviar o e-mail.";
//echo "Informações do erro: 
//" . $mail->ErrorInfo;
header("Location: ../erro-envio.html");
die($output);
}
 
?>