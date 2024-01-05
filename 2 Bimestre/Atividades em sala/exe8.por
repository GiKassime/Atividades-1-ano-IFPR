programa
{
	inclua biblioteca Util
	
cadeia resposta
	inteiro num
	funcao inicio()
	{
		imprima()
	}
	funcao imprima(){
		inteiro cont = 0
		faca{
		escreva("\nQuer sortear um número?\nDigite sim ou CHEGA: ")
		leia(resposta)
		num = Util.sorteia(-100, 100)
		se(resposta == "CHEGA"){
			escreva("\nVoce sorteou ", cont," números")
		}senao se(resposta == "sim"){
			escreva("\n",num)
		}
		cont ++
		}enquanto(resposta != "CHEGA")
	}
}
