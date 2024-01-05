programa
{
	
	funcao inicio()
	{
		inteiro A = 80000
		inteiro B = 200000

		real taxaA = 0.03
		real taxaB = 0.015
          inteiro anos
		
		para(anos = 0; B >= A; anos++){
		A = A + (A * taxaA)
		B = B + (B * taxaB)

		}
		escreva("O país A irá superar o país B em " ,anos, " anos")
	
