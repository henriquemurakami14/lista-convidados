programa
{
	inclua biblioteca Texto --> txt
	
		inteiro opcao = 0
		cadeia convidados[100]
		inteiro c = 0
		
	funcao inicio(){
	
		enquanto(opcao != 5){
		entrada()
		
	se(opcao < 6 e opcao > 0){
		
		se(opcao == 1){
			cadastro()
		}
		senao se(opcao == 2){
			listar()
		}
		senao se(opcao == 3){
			remover()
		}
		senao se(opcao == 4){
			alterar()
		}
		
	}
	senao{
		escreva("Valor Inválido! Digite novamente: \n")
		}
	}
}


	funcao entrada(){
		
		escreva("\n======================================================================\n")
		escreva("[ 1 ] Cadastrar\n")
		escreva("[ 2 ] Listar convidados\n")
		escreva("[ 3 ] Remover convidado\n")
		escreva("[ 4 ] Alterar convidado\n")
		escreva("[ 5 ] Sair\n")
		escreva("======================================================================\n")

		escreva("Digite sua opção: ")
		leia(opcao)

		se(opcao == 5){
			escreva("\nVocê saiu da lista!")
		}
	}
	funcao cadastro(){
		cadeia nome
		
		
		escreva("\nDigite o nome: ")
		leia(nome)
		nome = txt.caixa_alta(nome)
		
		convidados[c] = nome

		c++
	}
	funcao listar(){
		inteiro n_convidados = 0 
		
		escreva("\n")
		para(inteiro i = 0; i < 100; i++){
			se(convidados[i] != ""){
				escreva(i + 1,"° ", convidados[i], "\n")
				n_convidados++
			}
		}
		se(n_convidados == 0){
			escreva("Não há ninguem na lista!\n")
		}
	}
	funcao remover(){
		inteiro posicao
		
		escreva("\nDigite a posicao para remover: ")
		leia(posicao)

		enquanto(convidados[posicao - 1] == ""){
			escreva("\nA posição inserida é inválida! Digite a posicao para remover: ")
			leia(posicao)
		}
		
		convidados[posicao - 1] = ""
	}
	funcao alterar(){
		inteiro posicao
		cadeia nome
		
		escreva("\nDigite a posicao para remover: ")
		leia(posicao)

		enquanto(convidados[posicao - 1] == ""){
			escreva("\nA posição inserida é inválida! Digite a posicao para remover: ")
			leia(posicao)
		}

		convidados[posicao - 1] = ""
		
	
		escreva("\nDigite o nome para alterar: ")
		leia(nome)
		nome = txt.caixa_alta(nome)
		
		convidados[posicao - 1] = nome

		

		
	}
		


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {opcao, 5, 11, 5}-{convidados, 6, 9, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */