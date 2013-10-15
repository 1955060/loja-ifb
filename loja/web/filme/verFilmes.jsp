<%-- 
    Document   : verFilmes
    Created on : 04/09/2013, 09:47:36
    Author     : Edilberto
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="codigos.Filme" %>

<jsp:include page="cabecalho.jsp"/>

    <center>
        <h1>Filmes cadastrados</h1>
        		<table  bgcolor="white" border="2">
			<tr>
                                <th>Titulo </th>
                                <th>Pais </th>
				<th>Gravadora </th>
				<th>Tipo </th>
				<th>Midia </th>
				<th>Genero</th>
				<th>Ano</th>
				<th>Duracao</th>
				<th>Preco</th>
			</tr>
                       <% Filme filme = new Filme();
                       ArrayList<Filme> filmes = filme.consultar();
                       for(int i=0;i<filmes.size();i++){
                           %>
                           <tr bgcolor="white">
                               <td><% out.print(filmes.get(i).getTitulo()); %></td> 
                               <td><% out.print(filmes.get(i).getPais()); %></td> 
                               <td><% out.print(filmes.get(i).getGravadora()); %></td> 
                               <td><% out.print(filmes.get(i).getTipo()); %></td> 
                               <td><% out.print(filmes.get(i).getMidia()); %></td> 
                               <td><% out.print(filmes.get(i).getGenero()); %></td> 
                               <td><% out.print(filmes.get(i).getAno()); %></td> 
                               <td><% out.print(filmes.get(i).getDuracao()); %></td> 
                               <td><% out.print(filmes.get(i).getPreco()); %></td> 
                           <form action="editar.jsp">
                               <input type="hidden" name="cod"
                                      value="<% out.print(filmes.get(i).getCod());%>" />
                               <td><input type="submit" name="acao" value="Editar"
                                          onclick="verificar()"/></td>
                           </form>
                           <form action="recebeForm.jsp">
                               <input type="hidden" name="cod"
                                      value="<% out.print(filmes.get(i).getCod());%>" />
                               <td><input type="submit" value="Excluir" name="acao"
                                          onclick="return excluir()"/></td>
                           </form>
                           </tr>
                       <%    
                       } //fim do for
		       %>
                       <tr><td>
                               
                           </td>
                       </tr>
		</table>
        
        <br><a href="index.jsp"	>Inicio</a>
    </center>
<jsp:include page="rodape.jsp"/>