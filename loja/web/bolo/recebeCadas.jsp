<%-- 
    Document   : recebeCadas
    Created on : 19/08/2013, 11:04:39
    Author     : aluno
--%>
<%@page import="codigos.Bolo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:include page="cabecalho.jsp"/>       

          
            <% //abrindo a tag JSP
            String acao = request.getParameter("acao");
            Bolo bolo= new Bolo();
            if(acao.equals("Excluir")){
             out.print("<html><h1 align='center'>Excluído com Sucesso</h1></html>");
            bolo.setId(Integer.parseInt(request.getParameter("id")));    
            bolo.excluir(bolo);
          
            }else{
            String cliente = request.getParameter("cliente");
            String sabor = request.getParameter("sabor");
            String recheio = request.getParameter("recheio");
            String cobertura = request.getParameter("cobertura");
            String complemento = request.getParameter("complemento");
            String tamanho = request.getParameter("tamanho");
             String preco = request.getParameter("preco");
            
            out.println("Cliente: "+cliente);
            out.println("<br> Sabor: "+sabor);
            out.println("<br> Recheio: "+recheio);
            out.println("<br> Cobertura: "+cobertura);
            out.println("<br> Complemento: "+complemento);
            out.println("<br> Tamanho: "+tamanho);
            out.println("<br> Preco: "+preco);

           
            bolo.setCliente(cliente);
            bolo.setSabor(sabor);
            bolo.setRecheio(recheio);
            bolo.setCobertura(cobertura);
            bolo.setComplemento(complemento);
            bolo.setTamanho(tamanho);
            bolo.setPreco(preco);
            
            if(acao.equals("Alterar")){
            bolo.setId(Integer.parseInt(request.getParameter("id")));
            bolo.alterar(bolo);
            }
              
          
                   
          
           if(acao.equals("Inserir")){
            boolean cadastro = bolo.inserir(bolo);
            if(cadastro){
            out.print("<br><h1>Cadastrado com Sucesso</h1>");
            }else{
            out.print("<br><h1>O Cadastro não foi efetuado");
            }
           }
                       }
            
            %> 
  <jsp:include page="rodape.jsp"/>