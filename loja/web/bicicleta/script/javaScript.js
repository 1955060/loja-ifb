function alterar(){
    if(confirm("Deseja alterar os dados mesmo?")){
        return true;
    }else{
        return false;
    }
}

function excluir(){
    if(confirm("Deseja excluir mesmo?")){
        return true;
    }else{
        return false;
    }
}

function verificar(){
    var retorno = true;

    var marca= document.getElementById("marca").value;
	if (marca == '' || marca == null){
		document.getElementById("verificaMarca").innerHTML = "Campo marca está¡ em Branco";
		retorno = false;
	}else{
		document.getElementById("verificaMarca").innerHTML = "";
	}

    var categoria= document.getElementById("categoria").value;
	if (categoria == '' || categoria == null){
		document.getElementById("verificaCategoria").innerHTML = "Campo categoria está¡ em Branco";
		retorno = false;
	}else{
		document.getElementById("verificaCategoria").innerHTML = "";
	}
        
    var valor= document.getElementById("valor").value;
	if (valor == '' || valor == null){
		document.getElementById("verificaValor").innerHTML = "Campo valor está¡ em Branco";
		retorno = false;
	}else{
		document.getElementById("verificaValor").innerHTML = "";
	}
        if(isNaN(valor)){
            alert("Campo valor não pode haver letras. Digite apenas números");
            retorno = false;
        }
        
    var aro= "";
	for(i=0; i<=document.formBicicleta.aro.length-1; i++){
		if(document.formBicicleta.aro[i].checked){
			aro= document.formBicicleta.aro[i].value;
		}
	}
	if(aro == '' || aro == null){
		document.getElementById("verificaAro").innerHTML = "Campo aro está¡ em branco";
		retorno = false;
	}else{
		document.getElementById("verificaAro").innerHTML = "";
		}
	return retorno;
}