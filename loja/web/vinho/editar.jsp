
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="codigos.Vinho"%>
<jsp:include page="cabecalho.jsp"/>         
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Vinho vinho = new Vinho();
    vinho = vinho.preEditar(id);
%>
<form name="formVinho" action="recebeForm.jsp"> 
    <input type= "hidden" name= "id" value= "<%=vinho.getId()%>"/>
    <center>
        <table border="10" bgcolor="#770000;">

            <tr>
                <td> Produtor:</td>
                <td><input value="<%=(vinho.getProdutor())%>" type = "text" name="produtor" id = "produtor" size = "50"/> </td>
                <td><span id ="verificaProdutor"></span>
            </tr>

            <tr>
                <td> País:</td>
                <td><input value="<%=(vinho.getPais())%>"type = "text" name="pais" id = "pais" size = "50"/> </td>
                <td><span id ="verificaPais"></span>
            </tr>
            <tr>
                <td> Região:</td>
                <td><input value="<%=(vinho.getRegiao())%>" type = "text" name="regiao" id = "regiao" size = "50"/> </td>
                <td><span id ="verificaRegiao"></span>
            </tr>
            <tr>
                <td> Tipo Uva:</td>
                <td><input value="<%=(vinho.getTipoUva())%>"type = "text" name="tipoUva" id = "tipoUva" size = "50"/> </td>
                <td><span id ="verificaTipoUva"></span>
            </tr>
            <tr>
                <td> Safra:</td>
                <td><input value="<%=(vinho.getSafra())%>" type = "text" name="safra" id = "safra" size = "50"/> </td>
                <td><span id ="verificaSafra"></span>
            </tr>
            <tr>
                <td> Teor Alcoolico:</td>
                <td><input value="<%=(vinho.getTeorAcoolico())%>"type = "text" name="teorAlcoolico" id = "teorAlcoolico" size = "50"/> </td>
                <td><span id ="verificaTeorAlcoolico"></span>
            </tr>
            <tr>
                
               <td> <input  name="acao" type ="submit" value="Alterar" onclick= "return verificar(),alterar()"/></td>
               <td> <input  name="acao" type ="submit" value="excluir" onclick= "return excluir()"/></td>

                
            </tr>

        </table>
        <a href="index.jsp">Voltar</a>
    </center>
</form>              

                
<jsp:include page="rodape.jsp"/>