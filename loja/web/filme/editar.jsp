<%-- 
    Document   : editar
    Created on : 02/09/2013, 12:02:51
    Author     : Edilberto
--%>
<%@page import="codigos.Filme" %>
<jsp:include page="cabecalho.jsp"/>

<center> 
		<h1> <font color="#8B8378"> Editar cadastro </font></h1>
		<h5><b><font color="#8B8378"> favor editar os dados do filme </font></b></h5>
		<script>
                
			function verificar(){
			var titulo = document.getElementById("titulo").value;
			if (titulo == '' || titulo == null){
			    document.getElementById("verificaTitulo").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaTitulo").innerHTML = "";
			  }
			var pais = document.getElementById("pais").value;
			if (pais == '' || pais == null){
			    document.getElementById("verificaPais").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaPais").innerHTML = "";
			  }
			var gravadora = document.getElementById("gravadora").value;
                       
			if (gravadora == '' || gravadora == null){
			    document.getElementById("verificaGravadora").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaGravadora").innerHTML = "";
			  }
			var ano = document.getElementById("ano").value;
                        if (ano == '' || ano == null){
			    document.getElementById("verificaAno").innerHTML = "Este campo está em branco!";
			} else {
                            
			    document.getElementById("verificaAno").innerHTML = "";
			}
                        if(isNaN(ano)){
                            alert("Digite apenas números no campo ano");
                            retorno = false;
                        }
			var tipo = document.getElementById("tipo").value;
			if (tipo == '' || tipo == null){
			    document.getElementById("verificaTipo").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaTipo").innerHTML = "";
			  }
			var duracao = document.getElementById("duracao").value;
                       
			if (duracao == '' || duracao == null){
			    document.getElementById("verificaDuracao").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaDuracao").innerHTML = "";
			  }
			var preco = document.getElementById("preco").value;
                        if (preco == '' || preco == null){
			    document.getElementById("verificaPreco").innerHTML = "Este campo está em branco!";
			} else {
                            
			    document.getElementById("verificaPreco").innerHTML = "";
			}
                        if(isNaN(preco)){
                            alert("Digite apenas números no campo preço");
                            retorno = false;
                        }
                        
			var cbRadio = "";
			for (i=0;i<=document.formFilme.midia.length-1;i++){
				if(document.formFilme.midia[i].checked){
					cbRadio=document.formFilme.midia[i].value;
				}
			}
			if (cbRadio =='' || cbRadio== null){
				document.getElementById("verificaMidia").innerHTML = "Este campo está em branco!";
				retorno=false;
			} else {
			    document.getElementById("verificaMidia").innerHTML = "";
			}
			  
			  
			var genero = document.getElementById("genero").value;
			if (genero == '' || genero == null){
			    document.getElementById("verificaGenero").innerHTML = "Este campo está em branco!";
			} else {
			    document.getElementById("verificaGenero").innerHTML = "";
				document.bgcolor(genero);
			  }
			return retorno;
			}
				
		</script>
		<form name="formFilme" action="recebeForm.jsp" >
		<table  bgcolor="#F5F5DC" border="2">
			
                        <%    Filme filme = new Filme();
                              filme = filme.preEditar(Integer.parseInt(request.getParameter("cod")));
                          %>
                    <input type="hidden" name="cod" value="<%=filme.getCod()%>"/>
			<tr>
				<td>Título: </td>
				<td><input value="<% out.print(filme.getTitulo());%>"
                                           id="titulo" type="text"  name="titulo" >
			      <span id="verificaTitulo"></span>
				</td>
			
			</tr>
			<tr>
				<td>Gravadora: </td>
				<td><input value="<% out.print(filme.getGravadora());%>"
                                           id="gravadora" type="text"  name="gravadora" >
			      <span id="verificaGravadora"></span>
				</td>
			
			</tr>
			<tr>
				<td>pais: </td>
				<td><input value="<% out.print(filme.getPais());%>"
                                           type="text"  name="pais" id="pais"> 
			      <span id="verificaPais"></span>
			 </td>
			</tr>
			<tr>
				<td>Ano: </td>
				<td><input value="<% out.print(filme.getAno());%>"
                                           type="text"  name="ano" id="ano"> 
			      <span id="verificaAno"></span>

				</td>
		
			</tr>
			<tr>
				<td>Tipo: </td>
				<td><input value="<% out.print(filme.getTipo());%>"
                                           type="text"  name="tipo" id="tipo">
				 <span id="verificaTipo"></span>
				</td>
		
			</tr>
			<tr>
				<td>Duração: </td>
				<td><input value="<% out.print(filme.getDuracao());%>"
                                           type="text"  name="duracao" id="duracao"> 
			      <span id="verificaDuracao"></span>
			 </td>
			</tr>
			<tr>
				<td>Preço: </td>
				<td><input value="<% out.print(filme.getPreco());%>"
                                           type="text"  name="preco" id="preco"> 
			      <span id="verificaPreco"></span>

				</td>
		
			</tr>

                        <tr>
				<td>Midia: </td>
				<td><input <% out.print(filme.marcado(filme,"cd")); %>
                                        type="radio"  name="midia" id="midia" value="cd">CD 
				 <input <% out.print(filme.marcado(filme,"dvd")); %>
                                     type="radio"  name="midia" id="midia" value="dvd">DVD 
				 <input <% out.print(filme.marcado(filme,"bluray")); %>
                                     type="radio"  name="midia" id="midia" value="bluray">Bluray
				  <span id="verificaMidia"></span>
				 </td>
						
			</tr>
			<tr>
				<td>Genero: </td>
				<td>
				<select name='genero' id='genero'>
						<option value=''>Selecione uma genero.</option>
						<option <% out.print(filme.selecionado(filme,"acao")); %>
                                                    value='acao'>Ação</option>
						<option <% out.print(filme.selecionado(filme,"comedia")); %>
                                                    value='comedia'>Comédia</option>
						<option <% out.print(filme.selecionado(filme,"ficcao")); %>
                                                    value='ficcao'>Ficção</option>
						<option <% out.print(filme.selecionado(filme,"documentario")); %>
                                                    value='documentario'>Documentário</option>
						<option <% out.print(filme.selecionado(filme,"policial")); %>
                                                    value='policial'>Policial</option>
						<option <% out.print(filme.selecionado(filme,"romance")); %>
                                                    value='romance'>Romance</option>
				</select>
				<span id="verificaGenero"></span>		
			</tr>
			<tr>
				<td><input type="submit" onclick="return verificar()" 
                                           name="acao" value="Alterar" > </td>
                                <td><input type="submit" onclick="return excluir();" 
                                           name="acao" value="Excluir" > </td> 
			</tr>
		
		</table>
		</form>
			<script>
			document.write('Tecle Alterar após editar os dados');
		 
		</script>
          
		
                <br><a href="verFilmes.jsp"	>Lista de filmes</a>
         <!--conteudo do body-->
        </center>
<jsp:include page="rodape.jsp"/>
