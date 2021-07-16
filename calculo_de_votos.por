programa {
	funcao inicio() {
	
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
				
		limpa()

	escolha (Voto)
		
			{
			    
	caso 0:
	
		escreva ("A Votação foi Encerrada!\n")
	pare
				
		caso 1:
	 
			Candidato_A = Candidato_B + 1 
		pare
			 	
			caso 2:
	 
				Candidato_B = Candidato_B + 1 
			pare
			 	
				caso 3: 
	
					Votos_Brancos = Votos_Brancos + 1 
				pare
			 	
					caso contrario:
		
						Votos_Nulos = Votos_Nulos + 1 
			
			}			 
		}
		
	enquanto(Voto != 0)

		Total_De_Votos = Candidato_A + Candidato_B + Votos_Brancos + Votos_Nulos 

	
		
	se (Total_De_Votos > 0) 
		
		{
			
		Porcentagem_Candidato_A = (Candidato_A * 100.0) / Total_De_Votos  
		Porcentagem_Candidato_B = (Candidato_B * 100.0) / Total_De_Votos
		Porcentagem_Votos_Brancos = (Votos_Brancos * 100.0) / Total_De_Votos
		Porcentagem_Votos_Nulos = (Votos_Nulos * 100.0) / Total_De_Votos

	escreva("\n")
			
     	escreva("Total De Votos: ", Total_De_Votos, "\n\n") 	
          escreva("Percentual Votos Candidato A: % " , Porcentagem_Candidato_A, "\n\n") 
          escreva("Percentual Votos Candidato B: % ", Porcentagem_Candidato_B, "\n\n") //faltou espaço da aspas pra virgula
          escreva("Percentual Votos Brancos: % ", Porcentagem_Votos_Brancos, "\n\n") //faltou espaço da aspas pra virgula
          escreva("Percentual Votos Nulos: % ", Porcentagem_Votos_Nulos, "\n\n") //faltou espaço da aspas pra virgula
        		
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1630; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */