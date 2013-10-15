<%@page import="codigos.Usuario"%>
<%    
    String mensagem = "";
    Usuario usuario = new Usuario();
    try {
        if(request.getParameter("email").equals("")){};
        usuario = usuario.buscarUsuario(request.getParameter("email"), 
                request.getParameter("senha"));
        if (usuario != null) {
            //criação da sessão de um objeto usuario
            session.setAttribute("usuario_autenticado", usuario);
            //redirecionando para a página index.jsp
            response.sendRedirect("index.jsp");
        } else {
            mensagem = "Usuário ou senha incorreto";
        }
    } catch (Exception e) {
        //eliminando a sessão
        session.removeAttribute("usuario_autenticado");
    }
%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
        <title> Cadastro Carro </title>
        <!-- Chamando CSS -->
        <link type="text/css" rel="stylesheet" href="http://localhost:8080/LojaIFB/layout/uteis/estilo.css">
        <!-- Chamando JavaScript-->
        <script type="text/javascript" src="uteis/script.js"></script>
    </head>
    <body>
        <div class="tudo">
            <div class="topo"><a href="index.jsp">
                    LPOOW LOJA do IFB</a> ñ link</div>
            <div class="conteudo">
                <form action="login.jsp" method="post">
                    e-mail:<input type="text" name="email" /><br>
                    senha:<input type="password" name="senha" /><br>
                    <input type="submit" value="Login"/><br>
                    <%= mensagem%>
                </form>
                <br><br>
                <a href="../CadastroUsuario">Novo usuário</a>
                <jsp:include page="rodape.jsp"/>