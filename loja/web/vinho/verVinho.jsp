
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="codigos.Vinho"%>
<jsp:include page="cabecalho.jsp"/>

        <table border="10" bgcolor="#770000;">
            <tr>
                <th>Produtor</th>
                <th>País</th>
                <th>Região</th>
                <th>Tipo Uva</th>
                <th>Safra</th>
                <th>Teor Alcoolico</th>
              
                
            </tr>

            <% Vinho vinho = new Vinho();
                ArrayList<Vinho> vinhos = vinho.consultar();
                for (int i = 0; i < vinhos.size(); i++) {
            %>
            <tr>
                <td><%= (vinhos.get(i).getProdutor())%></td>
                <td><%=(vinhos.get(i).getPais())%></td>
                <td><%=(vinhos.get(i).getRegiao())%></td>
                <td><%=(vinhos.get(i).getTipoUva())%></td>
                <td><%=(vinhos.get(i).getSafra())%></td>
                <td><%=(vinhos.get(i).getTeorAcoolico())%></td>
                   <form action="editar.jsp">
                <input type="hidden" name="id" value="<% out.print(vinhos.get(i).getId());%>"/>
                <td><input type="submit" value ="editar"/><td>     
            </form>
            <form action="recebeForm.jsp">
                <input  type="hidden" name="id" value="<% out.print(vinhos.get(i).getId());%>"/>
                <td><input  type="submit" value ="excluir" name="acao" onclick=" return excluir()"/><td>  
                </form>
        </tr>
        <%
            }
        %>                           
    </table>
    <a href="index.jsp"><h5>Voltar</h5></a>

<jsp:include page="rodape.jsp"/>
