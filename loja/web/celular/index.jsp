<html>
	<head>
		<!-- Cabe�alho -->
			<title> Celulares </title>
			<script>
				<!--document.write('Aqui � o javascript');-->
				function verificar(){
					var retorno = true;
					var marca = document.getElementById("marca").value;
					var resolu�aodacamera = document.getElementById("resolu�aodacamera").value;
					var tamanhodatela = document.getElementById("tamanhodatela").value;
					var touchscreen = document.getElementById("touchscreen").value;
						
					if(marca == ''|| marca == null){
						document.getElementById("verificaMarca").innerHTML
						= "Este campo est� em branco!"
						retorno = false;
					} else {
						document.getElementById("verificaMarca").innerHTML = "";
						}
						
						if (resolu�aodacamera == ''|| resolu�aodacamera == null){
						document.getElementById("verificaResolu�aodaCamera").innerHTML
						= "Este campo est� em branco!"
						retorno = false;
						} else {
							document.getElementById("verificaResolu�aodaCamera").innerHTML = "";
							}
							
							if(tamanhodatela == '' || tamanhodatela == null){
								document.getElementById("verificaTamanhoDaTela").innerHTML
								= "Este campo est� em branco!"
								retorno = false;
								} else {
									document.getElementById("verificaTamanhoDaTela").innerHTML = "";
									}
									
									if (touchscreen == '' || touchscreen == null){
									document.getElementById("verificaSistemaOperacional").innerHTML
									= "Este campo est� em branco!"
									retorno = false;
									} else {
											document.getElementById("verificaSistemaOperacional").innerHTML = "";
										}
				
				
						var cbRadio = "";
						
						for (i = 0; i <= document.formCarro.combustivel.length-1; i++){
							if (document.formCarro.combustivel[i].checked){
								cbRadio = document.formCarro.combustivel[i].value;
							}
						}
						if (cbRadio == '' || cbRadio == null){
							document.getElementById("verificaTouchScreen").innerHTML = "Este campo est� vazio"
							retorno = false;
						} else {
							document.getElementById("verificaTouchScreen").innerHTML = "";
							}
							
						return retorno;
				}
			</script>
	</head>
	<body>
		<!-- Corpo do site -->
		<center><h3> <font color="black"> Formulario de Celulares </h3>
			
			<form name="formcelular" action="recebeform.jsp">
				<center><table border="8" bgcolor="silver">
			<tr>	
				<td> Marca (Samsung, Iphone e etc): </td>
				<td> <input id= "marca" name="marca" type="text" /> </td>
				<td><span id="verificaMarca"></span>
			</tr>
			
			<tr>	
				<td> Resolu��o da c�mera: </td>
				<td> <input id= "resolu�aodacamera" name="resolu�aodacamera" type="text" /> </td>
				<td><span id="verificaResolu�aodaCamera"></span>
			</tr>
			
			<tr>	
				<td> Tamanho da tela: </td>
				<td> <input id= "tamanhodatela" name="tamanhodatela" type="text" /> </td>
				<td><span id="verificaTamanhoDaTela"></span>
			</tr>
			
			<tr>	
				<td> Sistema Operacional: </td>
				<td> <input id= "sistemaoperacional" name="sistemaoperacional" type="Sistema" /> </td>
				<td><span id="verificaSistemaOperacional"></span>
			</tr>
			
			<tr>
				<td> Touch screen: </td>
				<td> <input type= "radio" name="touchscreen" id="touchscreen" value="Sim"> Sim
					 <input type= "radio" name="touchscreen" id="touchscreen" value="Nao"> N�o	
				<td><span id= "verificaTouchScreen"></span> </td>
			
			</tr>
			
			<tr>
				<td>
					<input id="enviar" name="enviar" type="submit" onclick="return verificar();" value="Enviar">
				</td>
			</tr>
			</table>
			</form>

		<b></b>
		
	</body>
	
</html>