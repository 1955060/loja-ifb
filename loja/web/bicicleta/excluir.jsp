<%@page import="objeto.Bicicleta"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<br>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Excluir</title>
    </head>
    <body>
    
    <%
    int id= Integer.parseInt(request.getParameter("id"));
    Bicicleta bi= new Bicicleta();
    boolean exclui= bi.excluir(id);
    if(exclui){
        out.print("Dados excluído<br>");
        }else{
        out.print("Dados não excluído");
        }
    %>
    <br>
    <a href="verBicicletas.jsp">Lista de Bicicletas Cadastradas</a>
    <br>
    <a href="index.jsp">Voltar ao Cadastro de Bicicletas</a>
    
    </body>
</html>
