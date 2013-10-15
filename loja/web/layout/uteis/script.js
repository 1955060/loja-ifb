function excluir(){
    if(confirm("Você quer excluir esse registro?")){
        return true;
    }else{
        return false;
    }
}

function verificar(){
    var retorno = true;
    var fabricante = document.getElementById("fabricante").value;
    if (fabricante == '' || fabricante == null){
        document.getElementById("verificaFabricante").innerHTML = "Este campo está em Branco!";
        retorno = false;
    }else{
        document.getElementById("verificaFabricante").innerHTML = "";
    }
                
    var ano = document.getElementById("ano").value;
    if(ano==""){
        document.getElementById("verificaAno").innerHTML = "Campo em branco";
        retorno = false;
    }else{
        document.getElementById("verificaAno").innerHTML = "";
    }
    if(isNaN(ano)){
        alert("Digite apenas números no campo ano.");
        retorno = false;
    }

    var cbRadio = "";
    for(i=0;i<=document.formCarro.combustivel.length-1;i++){
        if(document.formCarro.combustivel[i].checked){
            cbRadio=document.formCarro.combustivel[i].value;
        }
    }
    if (cbRadio == '' || cbRadio == null){
        document.getElementById("verificaCombustivel").innerHTML = "Este campo está em Branco!";
        retorno = false;
    }else{
        document.getElementById("verificaCombustivel").innerHTML = "";
    }
				
    return retorno;
}