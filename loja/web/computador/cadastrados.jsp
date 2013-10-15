<%-- 
    Document   : cadastrados
    Created on : Sep 2, 2013, 12:02:43 PM
    Author     : hugo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="codigos.Computador"%>
<%@page import="codigos.Crud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Computadores Cadastrados</title>
        <script type="text/javascript" src="script/script.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo.css"></link>
    </head>
    <body>
        <div id="principal2">
            <h1>Computadores cadastrados</h1>
            <%
                //Consultando o banco de dados.
                Crud cd = new Crud();
                ArrayList<Computador> computadores = cd.consultar();
            %>
            <table id="lista" border="2px">
                <tr>
                    <th>Placa Mãe</th>
                    <th>Memória</th>
                    <th>Cpu</th>
                    <th>Video</th>
                    <th>Disco Rigido</th>
                    <th>Preço</th>
                    <th>Editar</th>
                    <th>Excluir</th>
                </tr>
                <%
                    //Carregando informações na tabela.
                    for(int i = 0; i < computadores.size(); i++){
                %>
                <tr>
                    <td><%  out.print(computadores.get(i).getPlacaM());%></td>
                    <td><%  out.print(computadores.get(i).getMemoria());%></td>
                    <td><%  out.print(computadores.get(i).getCpu());%></td>
                    <td><%  out.print(computadores.get(i).getVideo());%></td>
                    <td><%  out.print(computadores.get(i).getHd());%></td>
                    <td><%  out.print(computadores.get(i).getPreco());%></td>
                    <form action="alterar.jsp">
                        <input type="hidden" name="id" value="<% out.print(computadores.get(i).getId());%>"></input>
                        <td><input type="submit" name="acao" value="editar" /></td>
                    </form>
                    <form action="retorno.jsp">
                        <input type="hidden" name="id" value="<% out.print(computadores.get(i).getId());%>"></input>
                        <td><input type="submit" onclick="return excluir();" name="acao" value="Excluir" /></td>
                    </form>
                </tr>
                <%
                    }
                %> 
            </table>
            <br />
            <a href="index.jsp">Página inicial</a>
        </div>
    </body>
</html>
