programa
{
	inclua biblioteca Arquivos
 --> a
	
 
		inteiro arquivo
		cadeia linha
		cadeia afazer = " " 
	funcao inicio()
	{
		escreva_arq()
		ler_arq()
	
		
	}
	funcao escreva_arq(){
		arquivo = a.abrir_arquivo("./Lista_afazeres.txt", a.MODO_ESCRITA)
		a.escrever_linha("                 LISTA AFAZERES\n", arquivo)
		enquanto(afazer != ""){
			escreva("Escreva aqui sua tarefa: ")
			leia(afazer)
			limpa()
			a.escrever_linha(afazer, arquivo)
                       a.escrever_linha("\n", arquivo)
		
		}
		a.fechar_arquivo(arquivo)
	}
	funcao ler_arq(){
			arquivo = a.abrir_arquivo("./Lista_afazeres.txt", a.MODO_LEITURA)
		enquanto(nao a.fim_arquivo(arquivo)){
			linha = a.ler_linha(arquivo)
		     escreva(linha, "\n")		
		}
		a.fechar_arquivo(arquivo)
	}
}
