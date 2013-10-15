     
                document.write ("<center>Bem vindo a nossa Cervejaria! ");
				
              function excluir (){
                  if(confirm("Voce quer excluir esse registro ?")){
                      return true;
                  }else {
                      return false;
                  }
                      
              }      
              function alterar (){
                  if(confirm("Voce alterar esse registro ?")){
                      return true;
                  }else {
                      return false;
                  }
                      
              }  
                function verificar (){
                    var retorno = true;
				
                    var Cervejaria = document.getElementById("cervejaria").value;
				
                    if (Cervejaria == '' || Cervejaria == null){
                        document.getElementById("verificaCervejaria").innerHTML = "Este campo esta vazio!"
                        retorno = false;
                    }
                    else {
                        document.getElementById("verificaCervejaria").innerHTML = "";
                    }		
                    
                    var PaisOrigem = document.getElementById("paisOrigem").value;
                    if (PaisOrigem == '' || PaisOrigem == null){
                        document.getElementById("verificaPaisOrigem").innerHTML = "Este campo esta vazio!"
                        retorno = false;
                    }
                    else {
                        document.getElementById("verificaPaisOrigem").innerHTML = "";
                    }	
                    
                    var Cor = document.getElementById("cor").value;
                    if (Cor == '' || Cor == null){
                        document.getElementById("verificaCor").innerHTML = "Este campo esta vazio!"
                        retorno = false;
                    }
                    else {
                        document.getElementById("verificaCor").innerHTML = "";
                    }			 
                    		
                    var Graduacao = document.getElementById("graduacao").value;
                    if (Graduacao == '' || Graduacao == null){
                        document.getElementById("verificaGraduacao").innerHTML = "Este campo esta vazio!"
                        retorno = false;
                    }
                    else {
                        document.getElementById("verificaGraduacao").innerHTML = "";
                    }
                    
                    var Volume = document.getElementById("volume").value;
                    if (Volume == '' || Volume == null){
                        document.getElementById("verificaVolume").innerHTML = "Este campo esta vazio!"
                        retorno = false;
                    }
                    else {
                        document.getElementById("verificaVolume").innerHTML = "";
                    }
                    return retorno;
                }