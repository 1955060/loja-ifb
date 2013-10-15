<%-- 
    Document   : alterar
    Created on : Sep 2, 2013, 5:18:48 PM
    Author     : hugo
--%>

<%@page import="codigos.Crud"%>
<%@page import="codigos.Computador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar dados</title>
        <script type="text/javascript" src="script/script.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilo.css"></link>
    </head>
    <body>
        <div id="principal">
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Computador c = new Computador();
            Crud cd = new Crud();
            c = cd.consultar(id);
        %>
        <h1>Alterar dados</h1>
        <form name="formularioEditar" action="retorno.jsp">
            <input type="hidden" name="id" value="<%=c.getId()%>" ></input>
            <table border="2px">
                <tr>
                    <th>Placa Mãe</th>
                    <td>
                        <input type="text" name="placaM" id="placaM" value="<% out.print(c.getPlacaM()); %>"></input>
                        <span class="validar" id="verificaPM"></span>
                    </td>
                </tr>
                <tr>
                    <th>Memória</th>
                    <td>
                        <input type="text" name="memoria" id="memoria" value="<% out.print(c.getMemoria()); %>"></input>
                        <span class="validar" id="verificaMemoria"></span>
                    </td>
                </tr>
                <tr>
                    <th>Cpu</th>
                    <td>
                        <input type="text" name="cpu" id="cpu" value="<% out.print(c.getCpu()); %>"></input>
                        <span class="validar" id="verificaCpu"></span>
                    </td>
                </tr>
                <tr>
                    <th>Video</th>
                    <td>
                        <input type="text" name="video" id="video" value="<% out.print(c.getVideo()); %>"></input>
                        <span class="validar" id="verificaVideo"></span>
                    </td>
                </tr>
                <tr>
                    <th>HD</th>
                    <td>
                        <input type="text" name="hd" id="hd" value="<% out.print(c.getHd()); %>"></input>
                        <span class="validar" id="verificaHD"></span>
                    </td>
                </tr>
                <tr>
                    <th>Preço</th>
                    <td>
                        <input type="text" name="preco" id="preco" value="<% out.print(c.getPreco()); %>"></input>
                        <span class="validar" id="verificaPreco"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><input type="submit" onclick="return verificar(),alterar();" name="acao" value="Alterar" /></td>
                </tr>
            </table>
        </form>
        <br />
        <a href="cadastrados.jsp">Voltar</a>
        </div>
    </body>
</html>
