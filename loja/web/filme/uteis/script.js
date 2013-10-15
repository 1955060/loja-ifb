function excluir(){
    if(confirm("voce quer excluir este registro?")){
        return true;
    } else {
        return false;
    }
}

function verificar(){
    var titulo = document.getElementById("titulo").value;
    if (titulo == '' || titulo == null){
        document.getElementById("verificaTitulo").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaTitulo").innerHTML = "";
      }
    var pais = document.getElementById("pais").value;
    if (pais == '' || pais == null){
        document.getElementById("verificaPais").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaPais").innerHTML = "";
      }
    var gravadora = document.getElementById("gravadora").value;

    if (gravadora == '' || gravadora == null){
        document.getElementById("verificaGravadora").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaGravadora").innerHTML = "";
      }
    var ano = document.getElementById("ano").value;
    if (ano == '' || ano == null){
        document.getElementById("verificaAno").innerHTML = "Este campo está em branco!";
    } else {

        document.getElementById("verificaAno").innerHTML = "";
    }
    if(isNaN(ano)){
        alert("Digite apenas números no campo ano");
        retorno = false;
    }
    var tipo = document.getElementById("tipo").value;
    if (tipo == '' || tipo == null){
        document.getElementById("verificaTipo").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaTipo").innerHTML = "";
    }
    var duracao = document.getElementById("duracao").value;
    if (duracao == '' || duracao == null){
        document.getElementById("verificaDuracao").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaDuracao").innerHTML = "";
      }
    var preco = document.getElementById("preco").value;
    if (preco == '' || preco == null){
        document.getElementById("verificaPreco").innerHTML = "Este campo está em branco!";
    } else {

        document.getElementById("verificaPreco").innerHTML = "";
    }
    
    if(isNaN(preco)){
        alert("Digite apenas números no campo preço ");
        retorno = false;
    }
      
    var cbRadio = "";
    for (i=0;i<=document.formFilme.midia.length-1;i++){
            if(document.formFilme.midia[i].checked){
                    cbRadio=document.formFilme.midia[i].value;
            }
    }
    if (cbRadio =='' || cbRadio== null){
            document.getElementById("verificaMidia").innerHTML = "Este campo está em branco!";
            retorno=false;
    } else {
        document.getElementById("verificaMidia").innerHTML = "";
    }

    var genero = document.getElementById("genero").value;
    if (genero == '' || genero == null){
        document.getElementById("verificaGenero").innerHTML = "Este campo está em branco!";
    } else {
        document.getElementById("verificaGenero").innerHTML = "";
            //document.bgcolor(genero);
      }
    return retorno;
}