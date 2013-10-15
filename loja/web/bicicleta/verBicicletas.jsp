<%@page import="objeto.Bicicleta"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page verBicicletas</title>
        <script type="text/javascript" src="script/javaScript.js"></script>
    </head>
    <body>
    <% 
    Bicicleta bicicleta = new Bicicleta();
    ArrayList<Bicicleta> bicicletas= bicicleta.consultar();
%>
<table>
    <tr>
        <th>Categoria</th>        
        <th>Marca</th>        
        <th>Aro</th>        
        <th>Valor</th>
       <!--  cor já será posta ao selecionar a cor do bicicleta
        <th>Cor</th>
        <th>Proprietário</th>
        -->
    </tr>
    <%
    for (int i=0; i < bicicletas.size(); i++){
    %>
    <tr bgcolor="<% out.print(bicicletas.get(i).getCor());%>"> <!-- para cor da linha ficar conforme a cor do bicicleta-->
        <td><% out.print(bicicletas.get(i).getCategoria());%></td>
        <td><% out.print(bicicletas.get(i).getMarca());%></td>
        <td><% out.print(bicicletas.get(i).getAro());%></td>
        <td><% out.print(bicicletas.get(i).getValor());%></td>
        
    <form action="editar.jsp">
        <input type="hidden" name="id" value="<% out.print(bicicletas.get(i).getId());%>"/>
        <td><input type="submit" value="Editar" onclick="return alterar();"/></td>
    </form>
    <form action="excluir.jsp">  <!--  <form action="excluir.jsp">  direcionando a classe excluir.jsp  -->
        <input type="hidden" name="id" value="<% out.print(bicicletas.get(i).getId());%>"/>
        <td><input type="submit" value="Excluir" onclick="return excluir();"/></td>
    </form>        
    </tr>
    <%
       }
    %>
</table>
<br><br>
    <a href="index.jsp">Voltar ao Cadastro de bicicletas</a>
    </body>
</html>