<%@page import="codigos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/cabecalho.jsp"/>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Carro carro = new Carro();
    carro = carro.preEditar(id);

%>
<a href="verCarros.jsp">Lista de carros.</a>
<form name="formCarro" action="recebeForm.jsp">
    <input type="hidden" name="id" value="<%=carro.getId()%>" />
    <table>
        <tr>
            <td>Fabricante</td>
            <td><input value="<% out.print(carro.getFabricante());%>" 
                       id="fabricante" name="fabricante" type="text">
            <td><p id="verificaFabricante"></p>
        </tr>
        <tr>
            <td>Modelo</td>
            <td><input value="<% out.print(carro.getModelo());%>" 
                       id="modelo" name="modelo" type="text" >
        </tr>
        <tr>
            <td>Placa</td>
            <td><input value="<% out.print(carro.getPlaca());%>"
                       id="placa" name="placa" type="text">
        </tr>
        <tr>
            <td>Ano</td>
            <td><input id="ano" name="ano" type="text" 
                       value="<% out.print(carro.getAno());%>"></td>
            <td><span id="verificaAno"></span></td>
        </tr>
        <tr>
            <td>Cor</td>
            <td>
                <select id='cor' name='cor'>
                    <option value=''>Selecione uma cor.</option>
                    <option <% out.print(carro.selecionado(carro, "red"));%> 
                        value='red'>red</option>
                    <option <% out.print(carro.selecionado(carro, "green"));%> 
                        value='green'>green</option>
                    <option <% out.print(carro.selecionado(carro, "gray"));%>
                        value='gray'>gray</option>
                </select>
        </tr>
        <tr>
            <td>
                Conbustível
            </td>
            <td>
                <input <% out.print(carro.marcado(carro, "gasolina"));%> 
                    type="radio" name="combustivel" value="gasolina"/>Gasolina
                <input <% out.print(carro.marcado(carro, "alcool"));%> 
                    type="radio" name="combustivel" value="alcool"/>Alcool
                <input <% out.print(carro.marcado(carro, "flex"));%> 
                    type="radio" name="combustivel" value="flex"/>Flex
            </td>
            <td><p id="verificaCombustivel"></p>
        </tr>
        <tr>
            <td><input id="enviar" name="acao" type="submit" 
                       value="Alterar" onclick="return verificar()"></td>
            <td><input type="submit" name="acao" value="Excluir" 
                       onclick="return excluir();" /></td>
        </tr>
    </table>
</form>
                <a href="gerenciarImg.jsp?id=<%= carro.getId()%>">Gerenciar Imagem</a>    
<jsp:include page="../layout/rodape.jsp"/>