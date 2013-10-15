<%-- 
    Document   : gerenciarImg
    Created on : 01/10/2013, 22:41:31
    Author     : luiz.maia
--%>
<%@page import="codigos.Carro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/cabecalho.jsp"/>
        <%
            Carro carro = new Carro();
            carro = carro.preEditar(Integer.parseInt(request.getParameter("id")));
        %>
        <img src="img/<%= carro.getImg() %>" height="90" width="80" />
        <form action="recebeImagem" enctype="multipart/form-data" 
              method="post">
            <input type="file" name="uploadFile" /> 
            <input type="hidden" name="id" value="<% out.print(request.getParameter("id"));%>" />
            <input type="submit" value="Ok" name="acao"/>
            <input type="submit" value="Excluir" name="acao"/>
        </form>
<jsp:include page="../layout/rodape.jsp"/>