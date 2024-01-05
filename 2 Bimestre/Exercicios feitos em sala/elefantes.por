programa
{
	
inteiro x = 1
	inteiro elefantes
	funcao inicio()
	{
			escreva("Quantos elefantes voce quer para incomodar?: ")
			leia(elefantes)
			elefante()
	}
	funcao elefante(){
		faca{

			se(x == 1){
				escreva("\n",x," elefante incomoda muita gente")
				x += 1
			}
			se(x > 1){
				se(x == elefantes){
					pare
				}
				escreva("\n",x," elefantes incomodam muito mais")
				x += 1
				escreva("\n",x," elefantes incomodam muita gente")
			}
		}enquanto(x <= elefantes)
	}
	
}
