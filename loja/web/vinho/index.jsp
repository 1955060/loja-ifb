<jsp:include page="cabecalho.jsp"/>
<form name="formVinho" action="recebeForm.jsp">



    <center>

        <table border="10" bgcolor="#770000;">
            <tr>
                <td> Produtor:</td>
                <td><input type = "text" name="produtor" id = "produtor" size = "50"/> </td>
                <td><span id ="verificaProdutor"></span>
            </tr>

            <tr>
                <td> País:</td>
                <td><input type = "text" name="pais" id = "pais" size = "50"/> </td>
                <td><span id ="verificaPais"></span>
            </tr>
            <tr>
                <td> Região</td>
                <td><input type = "text" name="regiao" id = "regiao" size = "50"/> </td>
                <td><span id ="verificaRegiao"></span>
            </tr>
            <tr>
                <td> Tipo Uva</td>
                <td><input type = "text" name="tipoUva" id = "tipoUva" size = "50"/> </td>
                <td><span id ="verificaTipoUva"></span>
            </tr>
            <tr>
                <td> Safra</td>
                <td><input type = "text" name="safra" id = "safra" size = "50"/> </td>
                <td><span id ="verificaSafra"></span>
            </tr>
            <tr>
                <td> Teor Alcoolico:</td>
                <td><input type = "text" name="teorAlcoolico" id = "teorAlcoolico" size = "50"/> </td>
                <td><span id ="verificaTeorAlcoolico"></span>
            </tr>


            <tr>
                <td></td>
                <td>
                    <input  name="acao" type ="submit" value="Inserir" onclick= "return verificar()"/>
                </td>
            </tr>

        </table>
        <script>
        document.write("<i><center>todos os campos obrigatórios</i>");

        </script>
    </center>
</form>
<jsp:include page="rodape.jsp"/>