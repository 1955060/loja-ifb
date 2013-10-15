<jsp:include page="cabecalho.jsp"/>
		
                  
                    
		
		
	  			<script type="text/javascript" src="uteis/script.js">  </script>
	  <form name="formBolo" action="recebeCadas.jsp">
              <br>
              <br>
	  <table align="center" border="1" bgcolor="#87CEFA" cellpadding="5" cellspacing="7">
              <tr>
                  <td colspan="3">
                      <h1 align="center">Encomenda</h1>
                  </td>
              </tr>
                <tr>
			<td><b>Cliente</b></td>
			<td><input id="cliente" name="cliente" type="text"/></td>
			<td><span id="verificarCliente"></span></td>
		</tr>
              
              
                <tr>
			<td><b>Sabor</b></td>
			<td><input id="sabor" name="sabor" type="text"/></td>
			<td><span id="verificarSabor"></span></td>
		</tr>
		
		<tr>
			<td><b>Recheio</b></td>
			<td><input id="recheio" name="recheio" type="text"/></td>
			<td><span id="verificarRecheio"></span></td>
		</tr>
		
		<tr>
			<td><b>Cobertura</b></td>
			<td><input id="cobertura" name="cobertura" type="text"/></td>
			<td><span id="verificarCobertura"></span></td>
		</tr>
		
		<tr>
			<td><b>Complementos</b></td>
			<td><input id= "complemento" name="complemento" type="text"/></td>
			<td><span id="verificarComplemento"></span></td>
		</tr>
		
		<tr>
			<td><b>Tamanho</b></td>
			
			<td>
				<input type="radio" name="tamanho" id="tamanho" value="Pequeno"/>Pequeno
				<input type="radio" name="tamanho" id="tamanho" value="Médio"/>Médio
				<input type="radio" name="tamanho" id="tamanho" value="Grande"/>Grande
			</td>
			<td><span id="verificarTamanho"></span></td>
		</tr>
		<tr>
			<td><b>Preço</b></td>
			<td><input id= "preco" name="preco" type="text"/></td>
			<td><span id="verificarPreco"></span></td>
		</tr>
		
		
			<tr>
                            <td colspan="3" align="center"><input id="enviar" name="acao" type="submit" onclick="return ver(); " value="Inserir"></td>
		</tr>
		
	  </table>
             
	</form>	
		
		
<jsp:include page="rodape.jsp"/>