<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>Cadastro de Bicicletas</title>
    </head>

    <a href="verBicicletas.jsp">Bicicletas armazenadas</a>
    <form name="formBicicleta" action="recebeForm.jsp">   <!-- direciona para classe recebeForm.jsp -->
	<input type="hidden" name="acao" value="inserir"/>
        <table width="500" border="1" cellspacing="5" cellpadding="1" bgcolor="#00BFFF">
            <br>
<caption align="top">
    Dados das Bicicletas:
</caption>

<tr>
  <td>Cor</td>
  <td>
  	<select name='cor' id='cor'>
		<option value=''>Selecione uma cor</option>
		<option value='red'>Vermelho</option>
		<option value='green'>Verde</option>
		<option value='gray'>Cinza</option>
		<option value='purple'>Roxo</option>
                <option value='black'>Preto</option>
                <option value='cyan'>Azul claro</option>
                <option value='orange'>Laranjado</option>
	</select>
    </td>
</tr>

<tr>
    <td>Categoria</td>
    <td><input id="categoria" name="categoria" type="text"/></td>
    <td><span id="verificaCategoria"></span>
</tr>

<tr>
    <td>Marca</td>
    <td><input id="marca" name="marca" type="text"/></td>
    <td><span id="verificaMarca"></span>
</tr>
  
<tr>
    <td>Tamanho do Aro</td>
    <td><input type="radio" name="aro" id="aro" value="10" />10
	<input type="radio" name="aro" id="aro" value="14" />14/16
	<input type="radio" name="aro" id="aro" value="20" />20
        <input type="radio" name="aro" id="aro" value="24" />24
        <input type="radio" name="aro" id="aro" value="26" />26
        <input type="radio" name="aro" id="aro" value="28" />28
    <td><span id="verificaAro"></span>
    </td>
</tr>

<tr>
    <td>Valor</td>
    <td><input id="valor" name="valor" type="text"/></td>
	<td><span id="verificaValor"></span>
</tr>            

<tr>
	<td><input id="enviar" name="acao" type="submit" onclick= "return verificar();" value="Cadastrar"/></td>
</tr>
  
	</table>
<html>
<br>
</html>
    <script>
        document.write('Microsoft Largado');
    </script> 
</form>