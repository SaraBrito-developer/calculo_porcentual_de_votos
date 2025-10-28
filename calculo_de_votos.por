programa
{
	
	funcao inicio()
	{
		inteiro Candidato_A = 0, Candidato_B = 0
		inteiro Votos_Brancos = 0, Votos_Nulos = 0, Total_De_Votos = 0
		
		real Porcentagem_Candidato_A, Porcentagem_Candidato_B
		real Porcentagem_Votos_Brancos, Porcentagem_Votos_Nulos
		
		inteiro Voto
		
	faca
	{	
		limpa()
		
		escreva("Escolha seu Candidato ou tecle Zero para Encerrar:\n\n")
		escreva("1 -> Candidato A\n")
		escreva("2 -> Candidato B\n")
		escreva("3 -> Voto em Branco\n")
		
		escreva("\nQualquer número digitado diferente de 0, 1, 2 e 3 Anulará automaticamente o seu Voto!\n")
		escreva("Digite seu Voto: ")
		
		leia(Voto)
			
		limpa() // Limpa a tela após o voto para não mostrar o "caso"

		escolha (Voto)
		{
			caso 0:
				escreva ("A Votação foi Encerrada!\n")
				pare
			
			// --- CORREÇÃO DO BUG CRÍTICO ---
			// Antes estava: Candidato_A = Candidato_B + 1
			caso 1:
				Candidato_A = Candidato_A + 1	
				escreva("Voto computado para Candidato A!\n")
			pare
		 	
			caso 2:
				Candidato_B = Candidato_B + 1	
				escreva("Voto computado para Candidato B!\n")
			pare
		 	
			caso 3:	
				Votos_Brancos = Votos_Brancos + 1	
				escreva("Voto computado como Branco!\n")
			pare
		 	
			caso contrario:
				Votos_Nulos = Votos_Nulos + 1
				escreva("Voto computado como Nulo!\n")
		
		}
				se(Voto != 0)
		{
		
		}
	}
	enquanto(Voto != 0)

	// --- CÁLCULO FINAL ---

	Total_De_Votos = Candidato_A + Candidato_B + Votos_Brancos + Votos_Nulos
  	
	limpa()
	
	escreva("------ RESULTADO DA VOTAÇÃO ------\n\n")
		
	se (Total_De_Votos > 0)	
	{
		Porcentagem_Candidato_A = (Candidato_A * 100.0) / Total_De_Votos	
		Porcentagem_Candidato_B = (Candidato_B * 100.0) / Total_De_Votos
		Porcentagem_Votos_Brancos = (Votos_Brancos * 100.0) / Total_De_Votos
		Porcentagem_Votos_Nulos = (Votos_Nulos * 100.0) / Total_De_Votos

		escreva("Total De Votos: ", Total_De_Votos, "\n\n") 
		
		escreva("--- VOTOS POR CANDIDATO ---\n")
		escreva("Candidato A: ", Candidato_A, " votos (", Porcentagem_Candidato_A, "%)\n")
		escreva("Candidato B: ", Candidato_B, " votos (", Porcentagem_Candidato_B, "%)\n")
		escreva("Votos Brancos: ", Votos_Brancos, " votos (", Porcentagem_Votos_Brancos, "%)\n")
		escreva("Votos Nulos: ", Votos_Nulos, " votos (", Porcentagem_Votos_Nulos, "%)\n")
	}
	senao
	{
		// Caso o usuário saia sem votar
		escreva("Nenhum voto foi computado. Urna zerada.\n")
	}
	
	escreva("\n------------------------------------\n")
	}
}
