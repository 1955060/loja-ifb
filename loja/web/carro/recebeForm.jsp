<%@page import="codigos.Carro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/cabecalho.jsp" />
    <% String cor = request.getParameter("cor");
        if (cor == null) {
            cor = "white";
        }
    %>
    <body bgcolor="<% out.print(cor);%>">
        <h1>Oláá LPOOW !</h1>
        <a href="index.jsp">Home</a>
        <%//comentarios
            out.print("Informações do Carro");
            try {
                
                String acao = request.getParameter("acao");
                Carro carro = new Carro();// objeto carro
                if (acao.equals("Excluir")) { //verificando se o botão ação
                    carro.excluir(request.getParameter("id"));
                    out.print("<script>alert('Ok ao excluir.');</script>");
                    response.sendRedirect("verCarros.jsp");
                }
                else {
                    String fabricante = request.getParameter("fabricante");
                    String combustivel = request.getParameter("combustivel");
                    String modelo = request.getParameter("modelo");
                    String placa = request.getParameter("placa");
                    int ano = Integer.parseInt(request.getParameter("ano"));
                    out.println("<br> O Fabricante = " + fabricante);
                    out.println("<br> O Modelo = " + modelo);
                    out.println("<br> A placa = " + placa);
                    out.println("<br> O ano = " + ano);
                    out.println("<br> O Combustivel = " + combustivel);
                    
                    carro.setAno(ano);
                    carro.setCombustivel(combustivel);
                    carro.setCor(cor);
                    carro.setFabricante(fabricante);
                    carro.setModelo(modelo);
                    carro.setPlaca(placa);
                    if (acao.equals("Alterar")) {
                        carro.setId(Integer.parseInt(request.getParameter("id")));
                        carro.alterar(carro);
                        response.sendRedirect("verCarros.jsp");
                        
                    }
                    if (acao.equals("Inserir")) {
                        carro.inserir(carro);
                    }
                }
            } catch (NumberFormatException formatException) {
                formatException.printStackTrace();
                out.println("<br> O valor numerico do ano está icorreto.");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<br> Erro");
            }
        %>
        <br>
</body>
</html>
