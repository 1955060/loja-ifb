<%@page import="codigos.Cerveja"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>

        <h1> Informações da Cerveja</h1>
        <%
            try {
                Cerveja cerveja = new Cerveja();
                String acao = request.getParameter("acao");
                if (acao.equals("excluir")) {
                    cerveja.setId(Integer.parseInt(request.getParameter("id")));
                    cerveja.excluir(cerveja);
                   out.print("Cerveja excluido com sucesso");


                } else {
                    String Cervejaria = request.getParameter("cervejaria");
                    out.print("Cervejaria " + Cervejaria + "<br>");
                    
                    String paisOrigem = request.getParameter("paisOrigem");
                    out.print("paisOrigem " + paisOrigem + "<br>");


                    String Cor = request.getParameter("cor");
                    out.print("cor " + Cor + "<br>");

                    String Graduacao = request.getParameter("graduacao");
                    out.print("Graduacao " + Graduacao + "<br>");
                    
                    String Volume = request.getParameter("volume");
                    out.print("Volume: " + Volume + "<br>");



                    cerveja.setCervejaria(Cervejaria);
                    cerveja.setPaisOrigem(paisOrigem);
                    cerveja.setCor(Cor);
                    cerveja.setGraduacao(Graduacao);
                    cerveja.setVolume(Volume);

                    if (acao.equals("Alterar")) {
                        cerveja.setId(Integer.parseInt(request.getParameter("id")));
                        cerveja.alterar(cerveja);

                    }
                    if (acao.equals("Inserir")) {

                        cerveja.inserir(cerveja);
                    }

                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <br>
        <a href="index.jsp">Home</a>
    </body>
</html>
