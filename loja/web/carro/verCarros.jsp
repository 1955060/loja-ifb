<%@page import="java.util.ArrayList"%>
<%@page import="codigos.Carro" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../layout/cabecalho.jsp"/>
        <%
            Carro carro = new Carro();
            String ordem;
            try{
                ordem = request.getParameter("ordem");
                ordem.isEmpty();
            }catch(Exception e){
                ordem = "id";
            }
            ArrayList<Carro> carros = carro.consultar(ordem);
        %>
        <table>
            <tr>
                <th><a href="verCarros.jsp?ordem=fabricante">Fabricante</a></th>
                <th><a href="verCarros.jsp?ordem=modelo">Modelo</a></th>
                <th><a href="verCarros.jsp?ordem=placa">Placa</a></th>
                <th><a href="verCarros.jsp?ordem=ano">Ano</a></th>
                <th><a href="verCarros.jsp?ordem=combustivel">Combustivel</a></th>
            </tr>
            <%
                for (int i = 0; i < carros.size(); i++) {
            %>
            <tr bgcolor="<% out.print(carros.get(i).getCor());%>">
                <td><img src="img/<%=carros.get(i).getImg() %>" height="30" width="30"/></td>
                <td><% out.print(carros.get(i).getFabricante());%></td>
                <td><% out.print(carros.get(i).getModelo());%></td>
                <td><% out.print(carros.get(i).getPlaca());%></td>
                <td><% out.print(carros.get(i).getAno());%></td>
                <td><%=carros.get(i).getCombustivel()%></td>
            <form action="editar.jsp">
                <input type="hidden" name="id" 
                       value="<% out.print(carros.get(i).getId());%>" />
                <td><input type="submit" value="Editar" /></td>
            </form>
            <form action="recebeForm.jsp">
                <input type="hidden" name="id" 
                       value="<% out.print(carros.get(i).getId());%>" />
                <td><input type="submit" value="Excluir" name="acao" 
                           onclick="return excluir();"/></td>
            </form>
        </tr>
        <%
            }
            
        %>
        
    </table>
        <jsp:include page="../layout/rodape.jsp"/>