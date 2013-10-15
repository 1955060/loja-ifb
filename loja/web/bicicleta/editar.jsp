<%@page import="objeto.Bicicleta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<br>
<html>
	<head>
	<title>Page Alterar</title>
	</head>
    
        <script type="text/javascript" src="script/javaScript.js">
        </script>

<body bgcolor="white"><!--conteudo do body-->
    <% 
    int id= Integer.parseInt(request.getParameter("id"));
    Bicicleta bicicleta= new Bicicleta();
    bicicleta= bicicleta.preEditar(id);
    %>
    <a href="verBicicletas.jsp">Lista de bicicletas</a>
    <form name="formBicicleta" action="recebeForm.jsp">   <!-- direciona para classe recebeForm.jsp -->
	<input type="hidden" name="id" value="<%=bicicleta.getId()%>"/>
        <input type="hidden" name="acao" value="editar"/>
        <input type="hidden" name="acao" value="excluir"/>
        <table width="500" border="1" cellspacing="5" cellpadding="1" bgcolor="yellow">
            <br>
<caption align="top">
    Dados das Bicicletas 
</caption>
<tr>
  <td>Cor</td>
  <td>
  	<select name='cor' id='cor'>
		<option value=''>Selecione uma cor</option>
                <option <% out.print(bicicleta.selecionado(bicicleta, "red")); %> 
                    value='red'>Vermelho</option>                
                <option <% out.print(bicicleta.selecionado(bicicleta, "green")); %> 
                    value='green'>Verde</option>
		<option <% out.print(bicicleta.selecionado(bicicleta, "gray")); %> 
                    value='gray'>Cinza</option>
		<option <% out.print(bicicleta.selecionado(bicicleta, "purple")); %> 
                    value='purple'>Roxo</option>
		<option <% out.print(bicicleta.selecionado(bicicleta, "black")); %> 
                    value='black'>Preto</option>
		<option <% out.print(bicicleta.selecionado(bicicleta, "cyan")); %> 
                    value='cyan'>Azul claro</option>
		<option <% out.print(bicicleta.selecionado(bicicleta, "orange")); %> 
                    value='orange'>Laranjado</option>                                
		</select>
    </td>
</tr>

<tr>
    <td>Categoria</td>
    <td><input  value="<% out.print(bicicleta.getCategoria()); %>" id="categoria" name="categoria" type="text"/></td>
    <td><span id="verificaC"></span>
</tr>

<tr>
    <td>Marca</td>
    <td><input value="<% out.print(bicicleta.getMarca()); %>"id="marca" name="marca" type="text"/></td>
	<td><span id="verificaMarca"></span>
</tr>

<tr>
    <td>Tamanho do Aro</td>
    <td><input <% out.print(bicicleta.marcado(bicicleta,"10")); %>
            type="radio" name="aro" id="aro" value="10" />10
	<input <% out.print(bicicleta.marcado(bicicleta,"14")); %>
            type="radio" name="aro" id="aro" value="14" />14/16
	<input <% out.print(bicicleta.marcado(bicicleta,"20")); %>
            type="radio" name="aro" id="aro" value="20" />20
	<input <% out.print(bicicleta.marcado(bicicleta,"24")); %>
            type="radio" name="aro" id="aro" value="24" />24
        <input <% out.print(bicicleta.marcado(bicicleta,"26")); %>
            type="radio" name="aro" id="aro" value="26" />26
	<input <% out.print(bicicleta.marcado(bicicleta,"28")); %>
            type="radio" name="aro" id="aro" value="28" />28                
	<td><span id="verificaAro"></span>
	</td>
</tr>

<tr>
    <td>Valor</td>
    <td><input  value="<% out.print(bicicleta.getValor()); %>" id="valor" name="valor" type="text"/></td>
    <td><span id="verificaValor"></span>
</tr>

<tr>
    <td><input id="enviar" name="acao" type="submit" onclick= "return verificar(), alterar();" value="Alterar"/></td>
<!--    <td><input id="enviar" name="enviar" type="submit" onclick= "return verificar();" value="gravar"/></td>   -->
</tr>
	</table>
<html>
    <br>
</html>

<script>
    document.write('Editando os dados');
</script> 

</form>
    
</body>