programa
{
	inteiro num1,num2
	funcao inicio()
	{
		escreva("Digite um número inteiro: ")
		leia(num1)
		
		escreva("Digite um número inteiro: ")
		leia(num2)
		
		imprima_intervalo()
	}
	funcao imprima_intervalo(){
		
		se(num1 >= num2){
			enquanto( num1 > num2 ){
				num2 ++
				se(num1 == num2){
					pare
				}
				escreva(num2," ")
			}
		}senao se(num2 >= num1){
			enquanto( num2 > num1 ){
				num1 ++
				se(num1 == num2){
					pare
				}
				escreva(num1," ")
			}
		}
	}
	
}
