<jsp:include page="cabecalho.jsp"/>
        <form name="formCerveja" action="recebeForm.jsp">
         

            
            <center>

                <table border="10">
                    <tr>
                        <td> Cervejaria:</td>
                        <td><input type = "text" name="cervejaria" id = "cervejaria" size = "50"/> </td>
                        <td><span id ="verificaCervejaria"></span>
                    </tr>

                    <tr>
                        <td> Pais de Origem:</td>
                        <td><input type = "text" name="paisOrigem" id = "paisOrigem" size = "50"/> </td>
                        <td><span id ="verificaPaisOrigem"></span>
                    </tr>
                    <tr>
                        <td> Cor</td>
                        <td><input type = "text" name="cor" id = "cor" size = "50"/> </td>
                        <td><span id ="verificaCor"></span>
                    </tr>
                    <tr>
                        <td> Graduacao</td>
                        <td><input type = "text" name="graduacao" id = "graduacao" size = "50"/> </td>
                        <td><span id ="verificaGraduacao"></span>
                    </tr>
                    <tr>
                        <td> Volume</td>
                        <td><input type = "text" name="volume" id = "volume" size = "50"/> </td>
                        <td><span id ="verificaVolume"></span>
                    </tr>

                    <tr>
                        <td></td>
                        <td>
                            <input  name="acao" type ="submit" value="Inserir" onclick= "return verificar()"/>
                        </td>
                    </tr>

                </table>
                <script>
                    document.write ("<i><center>todos os campos obrigatórios</i>");
                 
                </script>
            </center>
        </form>
<a href="verCerveja.jsp">Consultar Cerveja</a>
<jsp:include page="rodape.jsp"/>