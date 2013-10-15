<%@page import="codigos.Bolo"%>
<jsp:include page="cabecalho.jsp"/>
		
                    
                    
                   
                        <% 
        int id = Integer.parseInt(request.getParameter("id"));
        Bolo bolo = new Bolo(); 
        bolo = bolo.preEditar(id);

%>
                    <h1 align="center">Modificação de Pedidos</h1>    <br><br>
		
	  			<script type="text/javascript" src="uteis/script.js"> </script>
	  <form name="formBolo" action="recebeCadas.jsp">
	  <table align="center" border="1" bgcolor="#87CEFA" cellpadding="5" cellspacing="7">
               <tr>
                  <td colspan="3">
                      <h1 align="center">Encomenda</h1>
                  </td>
              </tr>
		
               <tr>
			<td><b>Cliente</b></td>
                        <td><input value= "<% out.print(bolo.getCliente()); %>" id="cliente" name="cliente" type="text"/></td>
			<td><span id="verificarCliente"></span></td>
		</tr>
		
		<tr>
			<td><b>Sabor</b></td>
			<td><input value="<% out.print(bolo.getSabor()); %>" id="sabor" name="sabor" type="text"/></td>
			<td><span id="verificarSabor"></span></td>
		</tr>
		
		<tr>
			<td><b>Recheio</b></td>
			<td><input value="<% out.print(bolo.getRecheio()); %>" id="recheio" name="recheio" type="text"/></td>
			<td><span id="verificarRecheio"></span></td>
		</tr>
		
		<tr>
			<td><b>Cobertura</b></td>
			<td><input value="<% out.print(bolo.getCobertura()); %>" id= "cobertura" name="cobertura" type="text"/></td>
			<td><span id="verificarCobertura"></span></td>
		</tr>
		
                <tr>
			<td><b>Complemento</b></td>
			<td><input value="<% out.print(bolo.getComplemento()); %>" id= "complemento" name="complemento" type="text"/></td>
			<td><span id="verificarComplemento"></span></td>
		</tr>
                
		<tr>
			<td><b>Tamanho</b></td>
			
			<td>
				<input <% out.print(bolo.marcado(bolo, "Pequeno")); %> type="radio" name="tamanho" id="tamanho" value="Pequeno"/>Pequeno
				<input <% out.print(bolo.marcado(bolo, "Médio")); %> type="radio" name="tamanho" id="tamanho" value="Médio"/>Médio
				<input <% out.print(bolo.marcado(bolo, "Grande")); %> type="radio" name="tamanho" id="tamanho" value="Grande"/>Grande
			</td>
			<td><span id="verificarTamanho"></span></td>
		</tr>
		
                <tr>
			<td><b>Preco</b></td>
			<td><input value="<% out.print(bolo.getPreco()); %>" id= "preco" name="preco" type="text"/></td>
			<td><span id="verificarPreco"></span></td>
		</tr>
		
		
			<tr>
                            <td colspan="3" align="center"><h1 align="center"></h1><input id="alterar" name="acao" type="submit" value="Alterar" onclick="return editar(); return verificar(); "></td>
		</tr>
		
	  </table>
                        <input type="hidden" name="id" value="<%out.print(bolo.getId());%>"/>
         
	</form>	
		
	<jsp:include page="rodape.jsp"/>