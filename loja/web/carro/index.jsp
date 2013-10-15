<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/cabecalho.jsp"/>
        <a href="verCarros.jsp">Lista de carros.</a>
        <form name="formCarro" action="recebeForm.jsp">
            <table>
                <tr>
                    <td>Fabricante</td>
                    <td><input id="fabricante" name="fabricante" type="text">
                    <td><p id="verificaFabricante"></p>
                </tr>
                <tr>
                    <td>Modelo</td>
                    <td><input id="modelo" name="modelo" type="text" >
                </tr>
                <tr>
                    <td>Placa</td>
                    <td><input id="placa" name="placa" type="text">
                </tr>
                <tr>
                    <td>Ano</td>
                    <td><input id="ano" name="ano" type="text"></td>
                    <td><span id="verificaAno"></span></td>
                </tr>
                <tr>
                    <td>Cor</td>
                    <td>
                        <select id='cor' name='cor'>
                            <option value=''>Selecione uma cor.</option>
                            <option value='red'>red</option>
                            <option value='green'>green</option>
                            <option value='gray'>gray</option>
                        </select>
                </tr>
                <tr>
                    <td>
                        Conbustível
                    </td>
                    <td>
                        <input type="radio" name="combustivel" value="gasolina"/>Gasolina
                        <input type="radio" name="combustivel" value="alcool"/>Alcool
                        <input type="radio" name="combustivel" value="flex"/>Flex
                    </td>
                    <td><p id="verificaCombustivel"></p>
                </tr>
                <tr>
                    <td><input id="enviar" name="acao" type="submit" value="Inserir"
                               onclick="return verificar();"></td>
                </tr>
            </table>
            
        </form>
        <jsp:include page="../layout/rodape.jsp"/>