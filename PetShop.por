programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Util
	
	funcao inicio()
	{	

		//Criar um algoritmo que seja capaz de mostrar o total e a comissão do atendente ao final da venda.

		//Declaração de listas da tablela no catálogo
		
		cadeia nome_produtos[] = 
		{
			"Bandeja Higiênica para Gato G",
			"CLEAN PERFUME - BLUE PUPPY 500ML",
			"Pente Duplo Antipulga para Cães e Gatos",
			"Condicionador Famous Pet Argan Dr. Rey 500ml",
			"Hidrante Educador de cães para xixi Sanitário",
			"Creme Dental Pet Clean para Cães e Gatos 60gr",
			"Escova Dental Care Dupla para Cães",
			"Ração Golden Gatos Filhotes Sabor Frango 3kg",
			"Biscoito Golden Cookie para Cães Filhores 400g",
			"Ração Golden Fórmula Mini Bits para Cães Adultos de Pequeno Porte Sabor Salmão e Arroz 1Kg",
			"DOG PELUCIA FOFINHOS ANIMAIS",
			"Caminha Iglu Cubo para Cães",
			"Brinquedo Mordedor para Cães - Bolinho Patinha 12cm",
			"Bolsa de transporte para Pet Cães e Gatos - Fêmea",
			"Roupinhas para Cães - Vestidos em Soft",
			"Manta SOFT para Cães e Gatos",
			"Fantasia Chapolin Colorado - Tam G",
			"Peitoral Confort para Cães M - The Pets Brasil",
			"Guia Coleira Refletível Ajustável para Cães",
			"Guia e Peitoral para Gatos Moderna Ajustável"
		}

		real valor_produtos[] =
		{
			21.50,
			120.00,
			9.90,
			14.90,
			29.90,
			14.00,
			4.90,
			55.90,
			16.10,
			21.90,
			34.80,
			99.00,
			14.90,
			54.90,
			29.90,
			19.90,
			26.90,
			34.90,
			69.90,
			49.90
		}
		
		real comissao_produtos[] = 
		{
			15.0,
			15.0,
			10.0,
			10.0,
			15.0,
			10.0,
			10.0,
			15.0,
			10.0,
			15.0,
			15.0,
			15.0,
			10.0,
			15.0,
			15.0,	
			15.0,
			15.0,
			15.0,
			15.0,
			15.0
		}

		
		// Declarar valores de resultado
		real comissao_total = 0.0, valor_total = 0.0, subtotal = 0.0, comissao_parcial = 0.0
		inteiro tecla = 0, id = 0, unidade_produto = 0
		
		cadeia codigo_atendente = "000"
		

		escreva("INOVA PETS CONTROLE DE VENDAS\n\n")



		linha()

		escreva("CATÁLOGO DE PRODUTOS\n\n")

		escreva("ID\tPRODUTOS\tVALOR\tCOMISSAO EM %\n\n")
		
		para(inteiro i = 1; i <= 20; i++) 
		{
			escreva(" ", i, "\t", nome_produtos[i-1], 
				"\n\tR$ ", valor_produtos[i-1], "\t\t", comissao_produtos[i-1], "%\n")
		}

		
		escreva("Digite código [003] do atendente:")
		leia(codigo_atendente)

		
	
		linha()

		escreva("PROGRAMA DE CÁLCULO DE VENDAS\n\n")

		
		
		faca
		{
			escreva("Insira o código do produto que deseja adicionar ou tecle zero (0) para ENCERRAR:\n\n")

			escreva("Digite ID [1-20] do produto:")

			leia(tecla)

			se (tecla == 0) 
			{
				linha()
				escreva("Sessão encerrada!\n")
				linha()
			} senao {
				escreva("\nDigite quantidade do produto:")
				
				leia(unidade_produto)

				// Usuario digitar de 1 a 20
				// Uma lista[] tem index de 0-19
				id = tecla - 1

				subtotal = unidade_produto*valor_produtos[id]
				comissao_parcial = subtotal * comissao_produtos[id]/100

				
				valor_total = valor_total + subtotal
				comissao_total = comissao_total + comissao_parcial

				comissao_parcial =  mat.arredondar(comissao_parcial,2)
				subtotal =  mat.arredondar(subtotal,2)
			
				
				escreva("\nProduto adionado!")
				linha()
				escreva(" ", tecla, "\t", nome_produtos[id], 
				"\n\t", unidade_produto, "UN X ", valor_produtos[id], "\t\tR$", subtotal, " (Comissao: ", comissao_parcial, ")")
				linha()
			}
		}
		enquanto(tecla != 0)	

		//ARREDONDAMENTO SENCUNDARIO DESNESSESSARIO (Ignore)
		//valor_total =  mat.arredondar(valor_total,2)
		//comissao_total =  mat.arredondar(comissao_total,2)

		

		
		linha()
		escreva(
		   "\nCódigo do Atendente:         \t\t\t", codigo_atendente,	
	        "\nComissão Total do Atendente: \t\t\tR$", comissao_total,
	        "\nTotal a Pagar:               \t\t\tR$", valor_total
	      )

	    	linha()
	    	linha()
	}

	


	funcao linha()
	{
		inteiro i

		escreva("\n\n")
		// Insere uma linha antes/depois do texto da mensagem		
		para(i = 0; i < 50; i++)
		{
		  escreva ("-")
		}
		
		escreva("\n\n")
	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3475; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */