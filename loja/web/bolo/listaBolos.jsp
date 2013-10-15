 <%@page import="java.util.ArrayList"%>
<%@page import="codigos.Bolo"%>
<%-- 
    Document   : listaBolos
    Created on : 26/08/2013, 10:04:05
    Author     : aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="cabecalho.jsp"/>
        
       
        <h1>Lista de Pedidos</h1>
        <%Bolo bolo = new Bolo();
        ArrayList<Bolo> bolos = bolo.consultar();%>
        
        <table border="3" bgcolor="#1E90FF">
            <th>Cliente</th>
            <th>Sabor</th>
            <th>Recheio</th>
            <th>Cobertura</th>
            <th>Complementos</th>
            <th>Tamanho</th>
            <th>Preco</th>
            <th>Editar</th>
            <th>Excluir</th>
            <%
            for(int i=0;i<bolos.size();i++){ %>
            <tr><td><%out.print(bolos.get(i).getCliente());%></td>
                <td><%out.print(bolos.get(i).getSabor());%></td>
                <td><%out.print(bolos.get(i).getRecheio());%></td>
                <td><%out.print(bolos.get(i).getCobertura());%></td>
                <td><%out.print(bolos.get(i).getComplemento());%></td>
                <td><%out.print(bolos.get(i).getTamanho());%></td>
                <td><%out.print(bolos.get(i).getPreco());%></td>
            
            <form action="editarPedido.jsp">
                <input type="hidden" name="id"
                       value="<% out.print(bolos.get(i).getId()); %>" />
                <td><input type="submit" name="acao" value="Editar"/></td>
            </form>
            
            <form action="recebeCadas.jsp">
                  <input type="hidden" name="id"
                       value="<% out.print(bolos.get(i).getId()); %>" />
                <td><input name="acao" type="submit" value="Excluir"  onclick="return excluir(); " /></td>
            </form>
                
            </tr>
            
            <%
            }
        %>
                
                
        </table>        
        
        
   <jsp:include page="rodape.jsp"/>