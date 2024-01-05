programa
{
	real peso_cachorro
     cadeia nome_cachorro
     logico resposta
	funcao inicio()
	{
		escreva("Caro usuário, voce tem um cachorro?/nDigite verdadeiro ou falso:  ")
		leia(resposta)
		se(resposta == verdadeiro){
		      escreva("Qual o nome do seu cachorro?: ")
		      leia(nome_cachorro)
		      escreva("Qual o peso do seu cachorro?: ")
		      leia(peso_cachorro)
		      se(peso_cachorro <= 2){
		      	escreva(nome_cachorro," late fino\nAu auu")
		      }
		      se(peso_cachorro > 2 e peso_cachorro<= 10){
		      	escreva(nome_cachorro," tem um belo latido.")
		      }
		      se(peso_cachorro > 10){
		      	escreva(nome_cachorro," late grosso\nWoof, woof.")
		      }
		}
		senao {
			escreva("Obrigado pelo uso\nVolte sempre")
		}
	}
}
