
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="codigos.Cerveja"%>
<jsp:include page="cabecalho.jsp"></jsp:include>
        <table border="10">
            <tr>
                <th>Cervejaria</th>
                <th>Modelo</th>
                <th>Marca</th>
                <th>Combustivel</th>
                <th>Volume</th>
                <th>Id</th>
            </tr>

            <% Cerveja cerveja = new Cerveja();
                ArrayList<Cerveja> Cerveja = cerveja.consultar();
                for (int i = 0; i < Cerveja.size(); i++) {
            %>
            <tr>  
                <td><% out.print(Cerveja.get(i).getCervejaria());%></td>
                <td><% out.print(Cerveja.get(i).getPaisOrigem());%></td>
                <td><% out.print(Cerveja.get(i).getCor());%></td>
                <td><% out.print(Cerveja.get(i).getGraduacao());%></td>
                <td><% out.print(Cerveja.get(i).getVolume());%></td>
                <td><% out.print(Cerveja.get(i).getId());%></td>

                    <form action="editar.jsp">
                        <input type="hidden" name="id" value="<% out.print(Cerveja.get(i).getId());%>"/>
                        <td><input type="submit" value ="editar"/><td>     
                    </form>
                    <form action="recebeForm.jsp">
                        <input  type="hidden" name="id" value="<% out.print(Cerveja.get(i).getId());%>"/>
                        <td><input  type="submit" value ="excluir" name="acao" onclick=" return excluir()"/><td>  
                        </form>
             </tr>
        <%
            }
        %>                           
    </table>
    <a href="index.jsp"><h5>Voltar</h5></a>
    <jsp:include page="rodape.jsp"></jsp:include>