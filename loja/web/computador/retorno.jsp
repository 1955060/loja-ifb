<%-- 
    Document   : retorno
    Created on : 02/09/2013, 10:34:17
    Author     : ifb
--%>

<%@page import="codigos.Crud"%>
<%@page import="codigos.Computador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <%  //Qual ação desejo executar ?
            String acao = request.getParameter("acao");
            
            if(acao.equals("Inserir")){
                //Capiturando os dados.
                String placaM = request.getParameter("placaM");
                String memoria = request.getParameter("memoria");
                String cpu = request.getParameter("cpu");
                String video = request.getParameter("video");
                String hd = request.getParameter("hd");
                double preco = Double.parseDouble(request.getParameter("preco"));

                //Imprimindo informações.
                out.print("<br />Informações:<br /><br />");
                out.print("<br />"+placaM);
                out.print("<br />"+memoria);
                out.print("<br />"+cpu);
                out.print("<br />"+video);
                out.print("<br />"+hd);
                out.print("<br />"+preco);
                
                //Criando um novo computador com as informações recebidas.
                Computador c = new Computador();
                c.setPlacaM(placaM);
                c.setMemoria(memoria);
                c.setCpu(cpu);
                c.setVideo(video);
                c.setHd(hd);
                c.setPreco(preco);
                
                //inserindo informações no banco de dados.
                Crud cd = new Crud();
                boolean resultado = cd.inserir(c);
                
                //Conferindo o resultado.
                if(resultado){ 
        %>
            <h3>Dados Cadastrados com sucesso</h3>
        <%
                }else { 
        %>
            <h3>Não foi possível cadastrar</h3>
        <% 
                }
            }else if(acao.equals("Alterar")){
                //Capiturando os dados.
                String placaM = request.getParameter("placaM");
                String memoria = request.getParameter("memoria");
                String cpu = request.getParameter("cpu");
                String video = request.getParameter("video");
                String hd = request.getParameter("hd");
                double preco = Double.parseDouble(request.getParameter("preco"));
                int id = Integer.parseInt(request.getParameter("id"));
                
                //Imprimindo informações.
                out.print("Informações:<br /><br />");
                out.print("<br />"+placaM);
                out.print("<br />"+memoria);
                out.print("<br />"+cpu);
                out.print("<br />"+video);
                out.print("<br />"+hd);
                out.print("<br />"+preco);
                
                Computador c = new Computador();
                c.setPlacaM(placaM);
                c.setMemoria(memoria);
                c.setCpu(cpu);
                c.setVideo(video);
                c.setHd(hd);
                c.setPreco(preco);
                c.setId(id); 
                
                //inserindo informações no banco de dados.
                Crud cr = new Crud();
                boolean resultado = cr.alterar(c);
                
                //Conferindo o resultado.
                if(resultado){ 
            %>
            <h3>Informações alteradas com sucesso</h3> 
            <%
                }else {
            %>
            <h3>Não foi possivel alterar as informações</h3>
            <%
                }
            }else if(acao.equals("Excluir")){
                //Excluindo um íten.
                int id = Integer.parseInt(request.getParameter("id")); 
                Crud cd = new Crud();
                boolean resultado = cd.excluir(id);
                
                //Conferindo o resultado.
                if(resultado){
         %>
         <h3>Computador Excluido</h3>
         <%
                }else {
         %>
         <h3>Não foi possível excluir o computador</h3>
         <%
                }
            }
        %>
        <a href="index.jsp">Página inicial</a>
    </body>
</html>
