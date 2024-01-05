programa
{
	
	funcao inicio()
	{
		inteiro a
		inteiro b
			
		escreva("Informe um número para a base e outro número para o expoente \n")
		leia(a, b)

		potencia(a, b)
	}
		funcao potencia(inteiro base, inteiro expoente ){
		
		inteiro resultado = base

		se(expoente == 0){
			escreva("1")
			}	
		
				senao{
				para(inteiro i = 1; i < expoente; i++){
				resultado = resultado * base
				}			
				escreva("O resultado da potencia é " , resultado)
				}
	}	
}
