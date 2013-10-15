<%@page import="objeto.Bicicleta" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page recebeForm</title>
    </head>
    <% String cor= request.getParameter("cor");
    %>
    <body bgcolor="<% out.println(cor); %>">
    <body>
        <h1>Olá mundo sobre rodas!</h1>
        <%
        
        String acao= request.getParameter("acao");
        
        String categoria= request.getParameter("categoria");
        out.println("<br>A Categoria da bicicleta é "+categoria);
               
        String marca= request.getParameter("marca"); //se declara a variavel chamada
        out.println("<br>A Marca(fabricante) do bicicleta é "+marca);

        String aro= request.getParameter("aro");
        out.println("<br>O Aro do bicicleta é "+aro);
               
        int valor= Integer.parseInt(request.getParameter("valor"));
        out.println("<br>O Valor do bicicleta é "+valor);        
        
        try{
        Bicicleta bicicleta= new Bicicleta();
        bicicleta.setCor(cor);
        bicicleta.setCategoria(categoria);
        bicicleta.setMarca(marca);
        bicicleta.setAro(aro);
        bicicleta.setValor(valor);
        
        if(acao.equals("inserir")){
            bicicleta.inserir(bicicleta);
            out.print("<br><h2><b> bike cadastrada<br>");
        }if(acao.equals("editar")){
            bicicleta.setId(Integer.parseInt(request.getParameter("id")));
            bicicleta.alterar(bicicleta);
            out.print("<br><h2><b> bike alterada<br>");
        }if(acao.equals("excluir")){
            int id= Integer.parseInt(request.getParameter("id"));
            bicicleta.excluir(id);
            out.print("<br><h2><b> bike excluída<br>");
        }
            }catch(NumberFormatException e) {
            e.printStackTrace();
        }
        %>
        <br>
        <a href="verBicicletas.jsp">Lista de bicicletas cadastradas</a>
        <br>
        <a href="index.jsp">Voltar ao Cadastro de bicicletas</a>
    </body>
</html>
