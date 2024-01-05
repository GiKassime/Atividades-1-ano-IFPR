programa
{
	
cadeia senha
	logico senha_aprovada = falso
	funcao inicio()
	{
		faca{
			escreva("Digite sua senha: ")
			leia(senha)
			limpa()
			enquanto(senha == "12345" ou senha == "admin" ou senha == "senha" ou senha == "password"){
				escreva("Senha insegura, informe outra senha: ")
				leia(senha)
			}
			senha_aprovada = verdadeiro
			
		}enquanto(senha_aprovada == falso )
		limpa()
		escreva("Senha segura")
	}
}
