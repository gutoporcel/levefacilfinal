var qtdchip = 0;
var qtdComprovante = 1;

$("#maisChip1").hide();
$("#maisChip2").hide();
$("#maisChip3").hide();
$("#maisChip4").hide();

$("#maisC1").hide();
$("#maisC2").hide();
$("#maisC3").hide();
$("#maisC4").hide();
$("#maisC5").hide();

$("#btnAddChip").click(function(){

    if(qtdchip < 4){
        qtdchip++;
    }

    mostraXChips();

})

//#region DELETE CHIP 1

	$("#delChip1").click(function(){

		if(confirm("Tem certeza que deseja descartar este chip?")){

			if(qtdchip == 1){
				limpaChip(1);
			}
			else if(qtdchip == 2)
			{
				$("#nome1").val($("#nome2").val());
				
				$("#cpf1").val($("#cpf2").val());
				
				$("#telefone1").val($("#telefone2").val());

				$("#iccid1").val($("#iccid2").val());
				
				limpaChip(2);
			}
			else if(qtdchip == 3)
			{
				$("#nome1").val($("#nome2").val());
				$("#nome2").val($("#nome3").val());

				$("#cpf1").val($("#cpf2").val());
				$("#cpf2").val($("#cpf3").val());

				$("#telefone1").val($("#telefone2").val());
				$("#telefone2").val($("#telefone3").val());

				$("#iccid1").val($("#iccid2").val());
				$("#iccid2").val($("#iccid3").val());
				
				limpaChip(3);
			}
			else if(qtdchip == 4)
			{
				$("#nome1").val($("#nome2").val());
				$("#nome2").val($("#nome3").val());
				$("#nome3").val($("#nome4").val());
				
				$("#cpf1").val($("#cpf2").val());
				$("#cpf2").val($("#cpf3").val());
				$("#cpf3").val($("#cpf4").val());
				
				$("#telefone1").val($("#telefone2").val());
				$("#telefone2").val($("#telefone3").val());
				$("#telefone3").val($("#telefone4").val());

				$("#iccid1").val($("#iccid2").val());
				$("#iccid2").val($("#iccid3").val());
				$("#iccid3").val($("#iccid4").val());
				
				limpaChip(4);
			}

			$("#btnAddChip").show();

			qtdchip--;
            
            requiredInput();

		}

	});

//#endregion

//#region DELETE CHIP 2

	$("#delChip2").click(function(){

		if(confirm("Tem certeza que deseja descartar este chip?")){
		
			if(qtdchip == 2)
			{
				limpaChip(2);
			}
			else if(qtdchip == 3)
			{
				$("#nome2").val($("#nome3").val());

				$("#cpf2").val($("#cpf3").val());

				$("#telefone2").val($("#telefone3").val());

				$("#iccid2").val($("#iccid3").val());
				
				limpaChip(3);
			}
			else if(qtdchip == 4)
			{
				$("#nome2").val($("#nome3").val());
				$("#nome3").val($("#nome4").val());
				
				$("#cpf2").val($("#cpf3").val());
				$("#cpf3").val($("#cpf4").val());
				
				$("#telefone2").val($("#telefone3").val());
				$("#telefone3").val($("#telefone4").val());
				
				$("#iccid2").val($("#iccid3").val());
				$("#iccid3").val($("#iccid4").val());
				
				limpaChip(4);
			}

			$("#btnAddChip").show();

			qtdchip--;
            
            requiredInput();
		
		}

	});

//#endregion

//#region DELETE CHIP 3

	$("#delChip3").click(function(){

		if(confirm("Tem certeza que deseja descartar este chip?")){
		
			if(qtdchip == 3)
			{
				limpaChip(3);
			}
			else if(qtdchip == 4)
			{
				$("#nome3").val($("#nome4").val());
				
				$("#cpf3").val($("#cpf4").val());
				
				$("#telefone3").val($("#telefone4").val());
				
				$("#iccid3").val($("#iccid4").val());
				
				limpaChip(4);
			}

			$("#btnAddChip").show();

			qtdchip--;
            
            requiredInput();
        }

	});

//#endregion

//#region DELETE CHIP 4

	$("#delChip4").click(function(){

		if(confirm("Tem certeza que deseja descartar este chip?")){

			limpaChip(4);

			$("#btnAddChip").show();

            qtdchip--;
            
            requiredInput();
			
        }

	});

//#endregion

function mostraXChips(){

	if(qtdchip == 1){
		$("#maisChip1").show();
		
		limpaChip(2);
		limpaChip(3);
		limpaChip(4);
	}
    else if(qtdchip == 2)
    {
		$("#maisChip1").show();
		$("#maisChip2").show();

		limpaChip(3);
		limpaChip(4);
	}
    else if(qtdchip == 3)
    {
		$("#maisChip1").show();
		$("#maisChip2").show();
		$("#maisChip3").show();
		
		limpaChip(4);
	}
    else if(qtdchip == 4)
    {
		$("#maisChip1").show();
		$("#maisChip2").show();
		$("#maisChip3").show();
		$("#maisChip4").show();

		$("#btnAddChip").hide();
    }
    
    requiredInput();

}


function requiredInput(){
    if(qtdchip == 1){
        $("nome1").prop('required', true); $("cpf1").prop('required', true); $("telefone1").prop('required', true); $("iccid1").prop('required', true);
        $("nome2").prop('required', false); $("cpf2").prop('required', false); $("telefone2").prop('required', false); $("iccid2").prop('required', false);
        $("nome3").prop('required', false); $("cpf3").prop('required', false); $("telefone3").prop('required', false); $("iccid3").prop('required', false);
        $("nome4").prop('required', false); $("cpf4").prop('required', false); $("telefone4").prop('required', false); $("iccid4").prop('required', false);
    }
    else if(qtdchip == 2){
        $("nome1").prop('required', true); $("cpf1").prop('required', true); $("telefone1").prop('required', true); $("iccid1").prop('required', true);
        $("nome2").prop('required', true); $("cpf2").prop('required', true); $("telefone2").prop('required', true); $("iccid2").prop('required', true);
        $("nome3").prop('required', false); $("cpf3").prop('required', false); $("telefone3").prop('required', false); $("iccid3").prop('required', false);
        $("nome4").prop('required', false); $("cpf4").prop('required', false); $("telefone4").prop('required', false); $("iccid4").prop('required', false);
    }
    else if(qtdchip == 3){
        $("nome1").prop('required', true); $("cpf1").prop('required', true); $("telefone1").prop('required', true); $("iccid1").prop('required', true);
        $("nome2").prop('required', true); $("cpf2").prop('required', true); $("telefone2").prop('required', true); $("iccid2").prop('required', true);
        $("nome3").prop('required', true); $("cpf3").prop('required', true); $("telefone3").prop('required', true); $("iccid3").prop('required', true);
        $("nome4").prop('required', false); $("cpf4").prop('required', false); $("telefone4").prop('required', false); $("iccid4").prop('required', false);
    }
    else if(qtdchip == 4){
        $("nome1").prop('required', true); $("cpf1").prop('required', true); $("telefone1").prop('required', true); $("iccid1").prop('required', true);
        $("nome2").prop('required', true); $("cpf2").prop('required', true); $("telefone2").prop('required', true); $("iccid2").prop('required', true);
        $("nome3").prop('required', true); $("cpf3").prop('required', true); $("telefone3").prop('required', true); $("iccid3").prop('required', true);
        $("nome4").prop('required', true); $("cpf4").prop('required', true); $("telefone5").prop('required', true); $("iccid4").prop('required', true);
    }
}

function limpaChip(chip){
	if(chip == 1)
	{
		$("#maisChip1").hide();

		$("#nome1").val("");
		$("#cpf1").val("");
		$("#telefone1").val("");
		$("#iccid1").val("");
	}
	else if(chip == 2)
	{
		$("#maisChip2").hide();

		$("#nome2").val("");
		$("#cpf2").val("");
		$("#telefone2").val("");
		$("#iccid2").val("");
	}
	else if(chip == 3)
	{
		$("#maisChip3").hide();

		$("#nome3").val("");
		$("#cpf3").val("");
		$("#telefone3").val("");
		$("#iccid3").val("");
	}
	else if(chip == 4)
	{
		$("#maisChip4").hide();

		$("#nome4").val("");
		$("#cpf4").val("");
		$("#telefone4").val("");
		$("#iccid4").val("");
	}
}


function addComprovante(){

    if(qtdComprovante < 6){
        qtdComprovante++;
	}

    mostraXComprovantes();
}

function mostraXComprovantes(){

    if(qtdComprovante == 2)
    {
		$("#maisC1").show();
	}
    else if(qtdComprovante == 3)
    {
		$("#maisC1").show();
		$("#maisC2").show();
	}
    else if(qtdComprovante == 4)
    {
		$("#maisC1").show();
		$("#maisC2").show();
		$("#maisC3").show();
    }
    else if(qtdComprovante == 5)
    {
		$("#maisC1").show();
		$("#maisC2").show();
		$("#maisC3").show();
		$("#maisC4").show();

		$("#btnAddComprovante").hide();
    }

}