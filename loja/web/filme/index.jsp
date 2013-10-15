<%-- 
    Document   : index
    Created on : 04/09/2013, 11:45:47
    Author     : EDILBERTO
--%>

<jsp:include page="cabecalho.jsp"/>
		<center> 
		<h1> <font color="#8B8378"> Cadastro - LPOOW </font></h1>
		<h5><b><font color="#8B8378"> Favor incluir os dados do filme </font></b></h5>
		<form name="formFilme" action="recebeForm.jsp" >
		<table  bgcolor="#F5F5DC" border="2">
			<tr>
				<td>Titulo: </td>
				<td><input type="text" name="titulo" id="titulo">
			      <span id="verificaTitulo"></span>
				</td>
			</tr>
			<tr>
				<td>Gravadora: </td>
				<td><input type="text"  name="gravadora" id="gravadora">
			      <span id="verificaGravadora"></span>
				</td>
			
			</tr>
			<tr>
				<td>Pais: </td>
				<td><input type="text"  name="pais" id="pais"> 
			      <span id="verificaPais"></span>
			 </td>
			</tr>
			<tr>
				<td>Ano: </td>
				<td><input type="text"  name="ano" id="ano"> 
			        <span id="verificaAno"></span>
				</td>
			</tr>
			<tr>
				<td>Tipo: </td>
				<td><input type="text"  name="tipo" id="tipo">
				 <span id="verificaTipo"></span>
				</td>
		
			</tr>
                        			<tr>
				<td>Duração: </td>
				<td><input type="text"  name="duracao" id="duracao"> 
			      <span id="verificaDuracao"></span>
			 </td>
			</tr>
			<tr>
				<td>Preço: </td>
				<td><input type="text"  name="preco" id="preco"> 
			      <span id="verificaPreco"></span>

				</td>
		
			</tr>
			<tr>
				<td>Midia: </td>
				<td><input type="radio"  name="midia" id="midia" value="cd">CD 
				 <input type="radio"  name="midia" id="midia" value="dvd">DVD 
				 <input type="radio"  name="midia" id="midia" value="bluray">Blu-ray
				  <span id="verificaMidia"></span>
				 </td>
						
			</tr>
			<tr>
				<td>Genero: </td>
				<td>
				<select name='genero' id='genero'>
						<option value=''>Selecione um genero.</option>
						<option value='acao'>Ação</option>
						<option value='comedia'>Comédia</option>
						<option value='ficcao'>Ficção</option>
						<option value='documentario'>Documentario</option>
						<option value='policial'>Policial</option>
						<option value='romance'>Romance</option>
				</select>
				<span id="verificaGenero"></span>		
			</tr>
			<tr>
			    <td><input type="submit" onclick="return verificar()" name="acao" value="Cadastrar"> </td>
			</tr>
		
		</table>
		</form>
			<script>
			document.write('Tecle cadastrar para inserir os dados');
                            
		</script>
          
		
                <br><a href="verFilmes.jsp"	>Lista de filmes</a>
         <!--conteudo do body-->
        </center>
<jsp:include page="rodape.jsp"/>