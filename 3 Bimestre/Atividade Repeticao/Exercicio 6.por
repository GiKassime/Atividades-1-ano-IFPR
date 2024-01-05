programa
{
	
	funcao inicio()
	{
		inteiro A = 0
		inteiro B = 1
		inteiro C

		escreva(A , " " , B , " ")

		para(C = 0; C <= 500; C++){
			
			C = A + B
			A = B
			B = C
			
			escreva(C , " ") 

		}
			
	}
}
