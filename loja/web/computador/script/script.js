function excluir() {
    if(confirm("Tem certeza que quer excluir o computador ?")){
        return true;
    }else{
        return false;
    }
}

function alterar() {
    if(confirm("Tem certeza que quer alterar as informações do computador ?")){
        return true;
    }else{
        return false;
    }
}

function verificar() {
    var placaM = document.getElementById('placaM').value;
    var memoria = document.getElementById('memoria').value;
    var cpu = document.getElementById('cpu').value;
    var video = document.getElementById('video').value;
    var hd = document.getElementById('hd').value;
    var preco = document.getElementById('preco').value;
    var retorno = true;
    if (placaM == '' || placaM == null) {
        document.getElementById('verificaPM').innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById('verificaPM').innerHTML = '';
    }

    if (memoria == '' || memoria == null) {
        document.getElementById('verificaMemoria').innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById('verificaMemoria').innerHTML = '';
    }

    if (cpu == '' || cpu == null) {
        document.getElementById('verificaCpu').innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById('verificaCpu').innerHTML = '';
    }

    if (video == '' || video == null) {
        document.getElementById('verificaVideo').innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById('verificaVideo').innerHTML = '';
    }
    
    if (hd == '' || hd == null) {
        document.getElementById("verificaHD").innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById("verificaHD").innerHTML = '';
    }
    
    if (preco == '' || preco == null) {
        document.getElementById("verificaPreco").innerHTML = '*';
        retorno = false;
        alert("Verifique os campos que estão vazios");
        return retorno;
    } else {
        document.getElementById("verificaPreco").innerHTML = '';
    }

    if(isNaN(preco)){
        document.getElementById("verificaPreco").innerHTML = '*';
        alert("Digite apenas numeros e ponto(.) no campo preço.");
        retorno = false;
    }
    return retorno;
}

