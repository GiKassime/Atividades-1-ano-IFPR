programa
{
	
	inteiro a,b
	funcao inicio()
	{
		escreva("Informe um número: ")
		leia(a)
		escreva("Informe outro um número: ")
		leia(b)
		comparacao()

		
	}
	funcao comparacao(){
		se(a >= b){
			enquanto( a >= b){
				escreva(a)
				a --
			}
		}senao se(b >= a){
			enquanto( b >= a){
				escreva(b)
				b --
			}
		}
	}

}
