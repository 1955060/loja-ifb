<%-- 
    Document   : recebeForm
    Created on : 04/09/2013, 11:56:31
    Author     : Edilberto
--%>
<%@page import="codigos.Filme" %>
<jsp:include page="cabecalho.jsp"/>

        <h1>Cadastro de Filmes - LPOOW</h1>

        <% //Comnt codigo javascript
            try {
                String acao = request.getParameter("acao");
                Filme filme = new Filme();
                if (acao.equals("Excluir")) { //if para excluir o resto fica no else
                    filme.setCod(Integer.parseInt(request.getParameter("cod")));
                    if (filme.excluir(filme)) {
                        out.println("<br> cadastro excluido com sucesso!!!");
                    } else {
                        out.println("<br> cadastro n�o excluido!!!");
                    }
                } else {
                    String titulo = request.getParameter("titulo");
                    String genero = request.getParameter("genero");
                    String gravadora = request.getParameter("gravadora");
                    int ano = Integer.parseInt(request.getParameter("ano"));
                    String tipo = request.getParameter("tipo");
                    String midia = request.getParameter("midia");
                    String pais = request.getParameter("pais");
                    String duracao = request.getParameter("duracao");
                    float preco = Float.parseFloat(request.getParameter("preco"));
                    out.println("<br> o titulo do filme � " + titulo);
                    out.println("<br>a gravadora do filme � " + gravadora);
                    out.println("<br>o ano do filme � " + ano);
                    out.println("<br>a tipo do filme � " + tipo);
                    out.println("<br>o midia do filme � " + midia);
                    out.println("<br>o pais do filme � " + pais);
                    out.println("<br>o genero do filme � " + genero);
                    out.println("<br>a dura��o do filme � " + duracao);
                    out.println("<br>o pre�o do filme � " + preco);
                    filme.setTitulo(titulo);
                    filme.setMidia(midia);
                    filme.setGenero(genero);
                    filme.setAno(ano);
                    filme.setDuracao(duracao);
                    filme.setPreco(preco);
                    filme.setPais(pais);
                    filme.setGravadora(gravadora);
                    filme.setTipo(tipo);
                    if (acao.equals("Alterar")) {
                        filme.setCod(Integer.parseInt(request.getParameter("cod")));
                        if (filme.alterar(filme)) {
                            out.println("<br> cadastro alterado com sucesso!!!");
                        } else {
                            out.println("<br> cadastro n�o alterado!!!");
                        }
                    } else if (acao.equals("Cadastrar")) {
                        if (filme.inserir(filme)) {
                            out.println("<br> cadastro efetuado com sucesso!!!");
                        } else {
                            out.println("<br> cadastro n�o efetuado!!!");
                        }
                    }
                }
            } catch (NumberFormatException formatException) {
                formatException.printStackTrace();
                out.print("<br> o valor numerico esta incorreto");
            } catch (Exception e) {
                e.printStackTrace();
                out.print("<br> erro");
            }
        %>
        <br><a href="index.jsp"	>Inicio</a>
        <br><a href="verFilmes.jsp" >Lista de filmes</a>   

<jsp:include page="rodape.jsp"/>