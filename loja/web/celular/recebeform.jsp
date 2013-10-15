<%@page import="codigos.Celular"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados do celular inserido</title>
    </head>

    <%String cor = request.getParameter("cor");
    if(cor == null){
        
        cor = "white";
        
    }
    %>
    <body bgcolor="<% out.print(cor);%>">
        <a href ="index.jsp"> Voltar para página inicial </a>
        <br>
        <br>
        
        <%//comentários
            out.println("Informações do celular!!!");

            try {
                
                String acao = request.getParameter("acao");
                Celular celular = new celular();
                if (acao.equals("excluir")){
                    celular.excluir(Integer.parseInt(request.getParameter("id")));
//                    delete from carro where id=?;
                    out.print("Excluido com sucesso");
                } else {
                String Marca = request.getParameter("Marca");
                String ResoluçaoDaCamera = request.getParameter("ResoluçaoDaCamera");
                String TamanhoDaTela = request.getParameter("TamanhoDaTela");
                String sistemaOperacional = request.getParameter("SistemaOperacional");
                String TouchScreen = request.getParameter("TouchScreen");

                out.println("<br>Marca do Celular:" + Marca);
                out.println("<br>Resolução Da Câmera:" + ResoluçãoDaCâmera);
                out.println("<br>Sistema Operacional: " + SistemaOperacional);
                out.println("<br>Tamanho Da Tela: " + TamanhoDaTela);
                out.println("<br>TouchScreen: " + TouchScreen+ ".");
                
                celular.setMarca(Marca);
                celular.setResoluçãoDaCamera(ResoluçãoDaCamera);
                celular.setSistemaOperacional(SistemaOperacional);
                celular.setTamanhoDaTela(TamanhoDaTela);
                celular.setTouchScreen(TouchScreen);

                if (acao.equals("editar")) {
                    celular.setId(Integer.parseInt(request.getParameter("id")));
                    celular.alterar(celular);
                }
                if (acao.equals("inserir")) {
                    celular.inserir(celular);
                }
               }
            } catch (NumberFormatException formatException) {
                formatException.printStackTrace();
                out.println("<br>O valor está incorreto");
            } catch (Exception e) {
                e.printStackTrace();
                out.print("<br>Erro");
            }
        %>
    </body>
</html>
