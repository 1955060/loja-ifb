
function excluir(){
    if(confirm("Você Deseja Excluir Esse Pedido?")){
        return true;
    }else{
        return false;
        
    }
}
function editar(){
    if(confirm("Você Deseja Refazer Esse Pedido?")){
          
			  function verificar(){
			  var retorno = true;
                          
                          var cliente = document.getElementById("cliente").value;
			  if (cliente == '' || cliente == null){
				
					document.getElementById("verificarCliente").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarCliente").innerHTML = "";
					}
                                        
			  var sabor = document.getElementById("sabor").value;
			  if (sabor == '' || sabor == null){
				
					document.getElementById("verificarSabor").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarSabor").innerHTML = "";
			}
			  
			  
			
			  var recheio = document.getElementById("recheio").value;
			  if (recheio == '' || recheio == null){
				
					document.getElementById("verificarRecheio").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarRecheio").innerHTML = "";
					}
				
		   
			   
			 
			  var cobertura = document.getElementById("cobertura").value;
			  if (cobertura == '' || cobertura == null){
				
				document.getElementById("verificarCobertura").innerHTML = " Este campo está em branco! "
				returno = false;						
									}else{
	  
				document.getElementById("verificarCobertura").innerHTML = "";
			}
				
			  
			   
			   
			  
			  var complemento = document.getElementById("complemento").value;
			  if (complemento == '' || complemento == null){
				retorno=false;
				document.getElementById("verificarComplemento").innerHTML = " Este campo está em branco! "
												}else{
	  
				document.getElementById("verificarComplemento").innerHTML = "";
			}
                        var preco = document.getElementById("preco").value;
			  if (preco == '' || preco == null){
				retorno=false;
				document.getElementById("verificarPreco").innerHTML = " Este campo está em branco! "
												}else{
	  
				document.getElementById("verificarPreco").innerHTML = "";
			}
			
			 
			  var tamanho = "";
			  for(i=0;i<=document.formBolo.tamanho.length-1;i++){
					if(document.formBolo.tamanho[i].checked){
							tamanho=document.formBolo.tamanho[i].value;
							}
			  }
			  
			  if ( tamanho== '' || tamanho == null){
				
				document.getElementById("verificarTamanho").innerHTML = " Este campo está em branco! "
					retorno=false;					
									}else{
	  
				document.getElementById("verificarTamanho").innerHTML = "";
			}
				return retorno;
			  }
        
    }
    }
    
    function ver(){
			  var retorno = true;
                          
                          var cliente = document.getElementById("cliente").value;
			  if (cliente == '' || cliente == null){
				
					document.getElementById("verificarCliente").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarCliente").innerHTML = "";
					}
                                        
			  var sabor = document.getElementById("sabor").value;
			  if (sabor == '' || sabor == null){
				
					document.getElementById("verificarSabor").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarSabor").innerHTML = "";
			}
			  
			  
			
			  var recheio = document.getElementById("recheio").value;
			  if (recheio == '' || recheio == null){
				
					document.getElementById("verificarRecheio").innerHTML = " Este campo está em branco! "
					retorno = false;	
				}else{
	  
				document.getElementById("verificarRecheio").innerHTML = "";
					}
				
		   
			   
			 
			  var cobertura = document.getElementById("cobertura").value;
			  if (cobertura == '' || cobertura == null){
				
				document.getElementById("verificarCobertura").innerHTML = " Este campo está em branco! "
				returno = false;						
									}else{
	  
				document.getElementById("verificarCobertura").innerHTML = "";
			}
				
			  
			   
			   
			  
			  var complemento = document.getElementById("complemento").value;
			  if (complemento == '' || complemento == null){
				retorno=false;
				document.getElementById("verificarComplemento").innerHTML = " Este campo está em branco! "
												}else{
	  
				document.getElementById("verificarComplemento").innerHTML = "";
			}
                        var preco = document.getElementById("preco").value;
			  if (preco == '' || preco == null){
				retorno=false;
				document.getElementById("verificarPreco").innerHTML = " Este campo está em branco! "
												}else{
	  
				document.getElementById("verificarPreco").innerHTML = "";
			}
			
			 
			  var tamanho = "";
			  for(i=0;i<=document.formBolo.tamanho.length-1;i++){
					if(document.formBolo.tamanho[i].checked){
							tamanho=document.formBolo.tamanho[i].value;
							}
			  }
			  
			  if ( tamanho== '' || tamanho == null){
				
				document.getElementById("verificarTamanho").innerHTML = " Este campo está em branco! "
					retorno=false;					
									}else{
	  
				document.getElementById("verificarTamanho").innerHTML = "";
			}
				return retorno;
			  }