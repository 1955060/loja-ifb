


function excluir() {
    if (confirm("Você quer excluir esse registro ?")) {
        return true;
    } else {
        return false;
    }

}
function alterar() {
    if (confirm("Você alterar esse registro ?")) {
        return true;
    } else {
        return false;
    }

}
function verificar() {
    var retorno = true;

    var produtor = document.getElementById("produtor").value;

    if (produtor == '' || produtor == null) {
        document.getElementById("verificaProdutor").innerHTML = "Este campo esta vazio!"
        retorno = false;
    }
    else {
        document.getElementById("verificaProdutor").innerHTML = "";
    }
    var pais = document.getElementById("pais").value;
    if (pais == '' || pais == null) {
        document.getElementById("verificaPais").innerHTML = "Este campo esta vazio!"
        retorno = false;
    }
    else {
        document.getElementById("verificaPais").innerHTML = "";
    }
    var regiao = document.getElementById("regiao").value;
    if (regiao == '' || regiao == null) {
        document.getElementById("verificaRegiao").innerHTML = "Este campo esta vazio!"
        retorno = false;
    }
    else {
        document.getElementById("verificaRegiao").innerHTML = "";
    }
    var safra = document.getElementById("safra").value;
    if (isNaN(safra)) {
        alert("Campo Ano: apenas valores inteiros!");
        retorno = false;
    }
    else {
        document.getElementById("verificaSafra").innerHTML = "";
    }
    var tipoUva = document.getElementById("tipoUva").value;
    if (tipoUva == '' || tipoUva == null) {
        document.getElementById("verificaTipoUva").innerHTML = "Este campo esta vazio!"
        retorno = false;
    }
    else {
        document.getElementById("verificaTipoUva").innerHTML = "";
    }
    var teorAlcoolico = document.getElementById("teorAlcoolico").value;
    if (teorAlcoolico == '' || teorAlcoolico == null) {
        document.getElementById("verificaTeorAlcoolico").innerHTML = "Este campo esta vazio!"
        retorno = false;
    }
    else {
        document.getElementById("verificaTeorAlcoolico").innerHTML = "";
}

}      