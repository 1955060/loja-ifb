<%@page import="codigos.Vinho"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>

        <h1> Informações Vinho:</h1>
        <%
            try {
                Vinho vinho = new Vinho();
                String acao = request.getParameter("acao");
                if (acao.equals("excluir")) {
                    vinho.setId(Integer.parseInt(request.getParameter("id")));
                    vinho.excluir(vinho);
                    out.print("vinho excluido com sucesso");


                } else {


                    String produtor = request.getParameter("produtor");
                    out.print("Produtor: " + produtor + "<br>");

                    String pais = request.getParameter("pais");
                    out.print("País: " + pais + "<br>");

                    String regiao = request.getParameter("regiao");
                    out.print("Região: " + regiao + "<br>");

                    String tipoUva = request.getParameter("tipoUva");
                    out.print("Tipo Uva: " + tipoUva + "");
                    int safra = 0;

                    try {
                        safra = Integer.parseInt(request.getParameter("safra"));
                        out.print("<br>Safra:" + safra + "<br>");
                    } catch (NumberFormatException e) {

                        out.print("formato incorreto");
                    }
                    String teorAlcoolico = request.getParameter("teorAlcoolico");
                    out.print("teor Alcoolico: " + teorAlcoolico + "<br>");




                    vinho.setProdutor(produtor);
                    vinho.setPais(pais);
                    vinho.setRegiao(regiao);
                    vinho.setTipoUva(tipoUva);
                    vinho.setSafra(safra);
                    vinho.setTeorAcoolico(teorAlcoolico);


                    if (acao.equals("Alterar")) {
                        vinho.setId(Integer.parseInt(request.getParameter("id")));
                        vinho.alterar(vinho);

                    }
                    if (acao.equals("Inserir")) {

                        vinho.inserir(vinho);
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
