programa

 
{
	 inclua biblioteca Texto --> t
	  inclua biblioteca Matematica --> m
      const caracter alfabeto_maiusculo[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
      const caracter alfabeto[26] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
	inteiro chave, caracter_texto 
		caracter p 
		inteiro i = 0
		cadeia texto, resposta
		cadeia texto_crip = ""
         
	funcao inicio()
	{
		
		faca{ 
			limpa()
			menu()
			escreva("\nDigite o número aqui: ")
			leia(resposta)
			se(resposta == "1"){
				Criptografar()
				resposta = "4"
			}
			se(resposta == "2"){
				Descriptografar()
				resposta = "4"
			}
				     
				
			
		}enquanto(resposta != "0" e resposta != "1" e resposta != "2" )
		limpa()
		escreva("Tchaau amigo, obrigado pelo uso!")
		 
	     
	}
	funcao menu(){
		escreva("***********************************\n")
		escreva("*       CIFRA DO TIO CESAR        *\n")
		escreva("***********************************\n")
		escreva("* 1 - CRIPTOGRAFAR                *\n")
		escreva("* 2 - DESCRIPTOGRAFAR             *\n")
		escreva("* 0 - SAI DESSA COE               *\n")
		escreva("***********************************\n")
		escreva("****tecle enter para passar********\n")
		passarTexto()

	}
	funcao Criptografar(){
		
		texto_crip = ""
		i = 0
           escreva("\nDigite o texto a se criptografar: ")
		leia(texto) 
		
		escreva("\nDigite a chave para se criptografar: ")
		leia(chave)
		caracter_texto = t.numero_caracteres(texto)
		faca{
		     p = t.obter_caracter(texto, i)
		      logico letra = falso   
		     	se(p == ' '){
                        
                        	     texto_crip += " "
            
                        	}se (p != ' '){
                        		
		                    para(inteiro a=0; a != 26 ; a++){
                                se(p == alfabeto[a]){
                          	     a = (a + chave) % 26 
                          	     p = alfabeto[a]  
                         	     texto_crip += p
                         	     letra = verdadeiro
                         	     pare	
                          	     
                          	     }
		                    }
                          	  para(inteiro a=0; a != 26 ; a++){
                                se(p == alfabeto_maiusculo[a]){
                          	     a = (a + chave) % 26 
                          	     p = alfabeto_maiusculo[a]  
                         	     texto_crip += p
                         	     letra = verdadeiro
                         	     pare	
                          	     
                          	     }   	
                          	     	
                          	    	
                          	 
             
                          	}
                        
		                   }se (letra == falso){
                          	     	texto_crip += p
                          	     	
                          	     	}   
                        	
			 i++
		}enquanto(i != caracter_texto)
		limpa()
		escreva("Aqui esta o texto ", texto," criptrografado usando a chave ", chave," --> ", texto_crip)
		passarTexto()
	}
			
	funcao passarTexto(){

		
		cadeia tecla 
		faca{

			
			 leia(tecla)
			 
		}enquanto(tecla != "")
          
  
		
	}
	funcao Descriptografar(){
		
		cadeia resposta2 = "0"
		texto_crip = ""
		i = 0
		faca{ 
			limpa()
			escreva("\nDigite o texto a se descriptografar: ")
		   leia(texto)
		   caracter_texto = t.numero_caracteres(texto) 
		   escreva("\nPossui a chave?(tecle 1 para sim e 2 para no): ")
		   leia(resposta2)
		se(resposta2 == "1"){
			escreva("\nDigite aqui a chave: ")
		     leia(chave)	
			faca{
			 inteiro b 
			 p = t.obter_caracter(texto, i)
		      logico letra = falso   
		     	se(p == ' '){
                        
                        	     texto_crip += " "
            
                        	}se (p != ' '){
                        		 
                        		 
                        		b = chave % 26
                        		se(b == 0 ){
                        			texto_crip += p
                        			pare
                   			}senao{
			                    para(inteiro a=0; a != 26 ; a++){
	                                se(p == alfabeto[a]){
	                          	     a = a - b
	                          	     se(a < 0){
	                          	     	a = 26 + b
	                      
	                          	     	} 
	                          	     p = alfabeto[a]  
	                         	     texto_crip += p
	                         	     letra = verdadeiro
	                         	     pare	
	                          	     
	                          	     }
				                
                          	    	
			                    }para(inteiro a=0; a != 26 ; a++){
			                                se(p == alfabeto_maiusculo[a]){
			                          	      a = a - b
		                          	     se(a < 0){
		                          	     	a = 26 + b
		                      
		                          	     	} 
		                          	     p = alfabeto_maiusculo[a]  
		                         	     texto_crip += p
		                         	     letra = verdadeiro
		                         	     pare	
                          	     
                          	              }   	
                	     	
			                    }
             
                          	}
                        
		                   }se (letra == falso){
                          	     	texto_crip += p
                          	     	
                          	     	}   
                        	
			
			i++
			}enquanto(i != caracter_texto)
			escreva("\nAqui esta o texto ", texto," descriptrografado usando a chave ", chave," --> ", texto_crip)
			passarTexto()
		}
			se(resposta2 == "2"){
				chave = 26
				inteiro cont = 0
		faca{
			texto_crip = ""	
			i = 0
		      faca{
		           p = t.obter_caracter(texto, i)
		      logico letra = falso   
		     	se(p == ' '){
                        
                        	     texto_crip += " "
            
                        	}se (p != ' '){
                        		
		                    para(inteiro a=0; a != 26 ; a++){
                                se(p == alfabeto[a]){
                          	     a = (a + chave) % 26 
                          	     p = alfabeto[a]  
                         	     texto_crip += p
                         	     letra = verdadeiro
                         	     pare	
                          	     
                          	     }
                          	     	
                          	     	
                          	    	
                          	 
             
                          	}
                          	para(inteiro a=0; a != 26 ; a++){
                                se(p == alfabeto_maiusculo[a]){
                          	     a = (a + chave) % 26 
                          	     p = alfabeto_maiusculo[a]  
                         	     texto_crip += p
                         	     letra = verdadeiro
                         	     pare	
                          	     
                          	     }   	
                          	     	
                          	    	
                          	 
             
                          	}
                        
		                   }se (letra == falso){
                          	     	texto_crip += p
                          	     	
                          	     	}   
                        	
			 i++
		}enquanto(i != caracter_texto)
		   
		   escreva("\nAqui esta o texto ", texto," descriptrografado usando a chave ",cont," --> ", texto_crip)
		 cont ++
		 chave --
		 
		    }enquanto(chave != 0)
		    escreva("\nEssas são as possibilidades")
			}
			
			
			passarTexto()
		
		}enquanto(resposta2 != "1" e resposta2 != "2")
	}
}
