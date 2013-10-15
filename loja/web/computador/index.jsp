<%-- 
    Document   : index
    Created on : 02/09/2013, 08:32:18
    Author     : ifb
--%>
<!-- Página Principal-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <script type="text/javascript" src="script/script.js"></script>
        <link type="text/css" rel="stylesheet" href="css/estilo.css"></link>
    </head>
    <body>
        <div id="principal">
            <h1>Cadastro de computadores</h1>
            <form name="formularioCadastro" action="retorno.jsp">
                <table border="2px">
                    <tr>
                        <th>Placa Mãe</th>
                        <td>
                            <input type="text" name="placaM" id="placaM"></input>
                            <span class="validar" id="verificaPM"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>Memória</th>
                        <td>
                            <input type="text" name="memoria" id="memoria"></input>
                            <span class="validar" id="verificaMemoria"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>Cpu</th>
                        <td>
                            <input type="text" name="cpu" id="cpu"></input>
                            <span class="validar" id="verificaCpu"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>Video</th>
                        <td>
                            <input type="text" name="video" id="video"></input>
                            <span class="validar" id="verificaVideo"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>HD</th>
                        <td>
                            <input type="text" name="hd" id="hd"></input>
                            <span class="validar" id="verificaHD"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>Preço</th>
                        <td>
                            <input type="text" name="preco" id="preco"></input>
                            <span class="validar" id="verificaPreco"></span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input type="submit" onclick="return verificar();" name="acao" value="Inserir" /></td>
                    </tr>
                </table>
            </form>
            <br />
            <a href="cadastrados.jsp">Computadores</a>
        </div>
    </body>
</html>
