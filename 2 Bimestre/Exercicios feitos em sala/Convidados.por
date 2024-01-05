programa
{
	inclua biblioteca Util
	
cadeia convidados[100]
	inteiro opcao
	cadeia nome
	funcao inicio()
	{
		menu()
		escreva("\nDigite a opção:")
		leia(opcao)
	 	enquanto(opcao != 0){
			escolha(opcao){
	
				caso 0: escreva(0)
				pare
				caso 1: escreva("Digite o nome do convidado(a): ")
					cadastrar()
				pare
				caso 2: escreva("\nLISTA\n")
					listar()
				pare
				caso 3 : escreva("\nDigite o nome do convidado(a) que deseja remover: ")
				    remover()
				pare
			}
			limpa()
			menu()
			escreva("\nDigite a opção:")
			leia(opcao)
		}
		
	}
	funcao menu(){
		escreva("***********************************\n")
		escreva("*           FESTA GEEK            *\n")
		escreva("***********************************\n")
		escreva("* 1 - CADASTRAR                   *\n")
		escreva("* 2 - LISTAR                      *\n")
		escreva("* 3 - REMOVER                     *\n")
		escreva("* 0 - SAIR                        *\n")
		escreva("***********************************\n")

	}
	funcao cadastrar(){
		leia(nome)
		para(inteiro i=0; i < 100; i++){
			
			se(convidados[i] == ""){
				convidados[i] = nome	
				pare
			}
		}
	}
	funcao listar(){
		para(inteiro i=0; i < 100; i++){
			se(convidados[i] != ""){
				escreva("\n", i+1," ",convidados[i])
			}
		}
		Util.aguarde(5000)
	}
	funcao remover(){
		leia(nome)
		para(inteiro i=0; i < 100; i++){
			se(convidados[i] == nome){
				convidados[i] = ""
			}
		}
		
	}
}
