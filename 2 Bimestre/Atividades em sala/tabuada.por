programa
{
	
inteiro num
	funcao inicio()
	{
		escreva("Digite um número para ver sua tabuada: ")
		leia(num)
		tabuada()
	}
	funcao tabuada(){
		para(inteiro i = 0; i <= 10; i++){
			escreva("\n", num,"X",i," = ", num*i)
		}
	}
}
