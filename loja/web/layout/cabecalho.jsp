<%@page import="codigos.Usuario"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <%
            Usuario usuario = (Usuario) session.getAttribute("usuario_autenticado");
            if (usuario == null) {

                out.print("<meta http-equiv='refresh' content='0; url=../index.jsp'>");
            }
        %>
        <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
        <title> Cadastro Carro </title>
        <!-- Chamando CSS -->
        <link type="text/css" rel="stylesheet" href="../layout/uteis/estilo.css">
        <!-- Chamando JavaScript-->
        <script type="text/javascript" src="../layout/uteis/script.js"></script>
    </head>
    <body>
        <div class="tudo">
            <div class="topo"><a href="../layout/index.jsp">
                    LPOOW LOJA do IFB</a> ñ link</div>
                    <%
                        try {
                            out.print("Bem Vindo Sr."+usuario.getNome());
                        } catch (Exception e) {
                        }
                    %>
            <div class="conteudo">
                <ul id="menu">
                    <li><a href="#">Transporte</a>
                        <ul class="secundary-nav">
                            <li><a href="../carro/verCarros.jsp">Lista de Carros</a></li>
                            <li><a href="../carro/index.jsp">Novo Carro</a></li>
                            <li><a href="../bicicleta/verBicicletas.jsp">Lista de Biscicletas</a></li>
                            <li><a href="../bicicleta/index.jsp">Nova  Bicicleta</a></li>
                        </ul>
                    </li>
                    <li><a href="../layout/login.jsp">Sair</a>
                    </li>
                </ul>
