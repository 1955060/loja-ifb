
<%@page import="codigos.Cerveja"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <script type= "text/javascript" src="uteis/script.js" ></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="imgCerveja.jpg">            
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            Cerveja cerveja = new Cerveja();
            cerveja = cerveja.preEditar(id);
        %>
        <form name="formCerveja" action="recebeForm.jsp"> 
            <input type= "hidden" name= "id" value= "<%= cerveja.getId()%>"/>
            <center>
                <table border="10">
                     
                    <tr>
                        <td> Cervejaria</td>
                        <td><input value= "<% out.print(cerveja.getCervejaria());%>" type = "text" name="cervejaria" id = "cervejaria" size = "50"/> </td>
                        <td><span id ="verificaCervejaria"></span>
                    </tr>

                    <tr>
                        <td> paisOrigem</td>
                        <td><input value="<% out.print(cerveja.getPaisOrigem());%> " type = "text" name="paisOrigem" id = "paisOrigem" size = "50"/> </td>
                        <td><span id ="verificaPaisOrigem"></span>
                    </tr>
                    <tr>
                        <td> Cor</td>
                        <td><input value="<% out.print(cerveja.getCor());%>" type = "text" name="cor" id = "Marca" size = "50"/> </td>
                        <td><span id ="verificaCor"></span>
                    </tr>
                    <tr>
                        <td> Graduacao:</td>
                        <td><input value="<%=cerveja.getGraduacao()%>" type = "text" name="graduacao" id = "graduacao" size = "50"/> </td>
                        <td><span id ="verificaGraduacao"></span>
                    </tr>
                    <tr>
                        <td> Volume:</td>
                        <td><input value="<% out.print(cerveja.getVolume());%>" type = "text" name="volume" id = "volume:" size = "50"/> </td>
                        <td><span id ="verificaVolume:"></span>
                    </tr>
                   
                  
                    <tr>
                        <td></td>
                        <td>
                            <input  name="acao" type ="submit" value="Alterar" onclick= "return verificar(), alterar()"/>
                            <input  name="acao" type ="submit" value="excluir" onclick= "return excluir()"/>
                           
                        </td>
                    </tr>

                </table>
                
                    
                
                <a href="index.jsp">Voltar</a>
            </center>
        </form>              
    </body>
</html>
