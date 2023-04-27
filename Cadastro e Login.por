programa
{
	
 inclua biblioteca Util --> u
 
  cadeia setor, filme, sair, comentario, fonte, livro, cl
  inteiro opcao, nota, codigo, cadastros[9]
  cadeia dado[10][3]
 
  inteiro tempo_i = 1, tempo_f = 2
  logico achou = falso
  

	
	funcao inicio()
	{
	dado[0][0] = "NOME"
 	dado[0][1] = "USUÁRIO"
  	dado[0][2] = "SENHA"
  	cadastros[0] = 0
		cadastroUsuario()
	}
	funcao cadastroUsuario() {

		cadeia dados, logar
		
		se (cadastros[0] == 0){
			escreva("Quantos cadastros deseja fazer? ")
		leia(cadastros[0])
		limpa()
		para (inteiro l = 1; l < cadastros[0]+1; l++) {
		
		escreva ("Nome completo: ")
		leia (dado[l][0])
		escreva ("Nome de usuário: ")
		leia (dado[l][1])
		escreva ("Senha: ")
		leia (dado[l][2])
		}
		limpa()
		para (inteiro l = 1; l < cadastros[0]+1; l++) {
		escreva ("\nVerifique seus dados: ")
		escreva ("\nNome completo: "+dado[l][0]) 
		escreva ("\nNome de usuário: "+dado[l][1])
		escreva ("\nSenha: "+dado[l][2])
		}
		escreva ("\nSeus dados estão corretos (S/N)? ")
		leia (dados)
		limpa()

		se (dados == "S" ou dados == "s") {
			escreva("Deseja fazer um novo cadastro ou ir ao login? (C/L)\n")
			leia(cl)
			se(cl == "C" ou cl == "c"){
				enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
				cadastroUsuario()
			}
			senao {
				escreva ("Direcionando ao login... ")
			
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}	
		}
		
		senao se (dados == "N" ou dados == "n") {
			escreva ("Voltando ao início do cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}
		
		}

		senao se (cadastros[0] != 0) {
			escreva("Quantos cadastros deseja fazer? ")
		     leia(cadastros[1])
		     limpa()
		     se (cadastros[0] + cadastros[1] > 9){
		     	escreva("A capacidade de cadastros foi atingida, não será possível prosseguir com a operação.\nDeseja ir ao login? ")
		     	leia(logar)
		     	se (logar == "S" ou logar == "s") {
			escreva ("Direcionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}	
		
		
		senao se (logar == "N" ou logar == "n") {
			escreva ("Voltando ao início do cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}
		     }
		senao {
		para (inteiro l = cadastros[0]+1; l <= cadastros[0] + cadastros[1]; l++) {
		
		escreva ("Nome completo: ")
		leia (dado[l][0])
		escreva ("Nome de usuário: ")
		leia (dado[l][1])
		escreva ("Senha: ")
		leia (dado[l][2])
		}
		limpa()
		para (inteiro l = cadastros[0]+1; l <= cadastros[0] + cadastros[1]; l++) {
		escreva ("\nVerifique seus dados: ")
		escreva ("\nNome completo: "+dado[l][0]) 
		escreva ("\nNome de usuário: "+dado[l][1])
		escreva ("\nSenha: "+dado[l][2])
		}
		escreva ("\nSeus dados estão corretos (S/N)? ")
		leia (dados)
		

		se (dados == "S" ou dados == "s") {
			escreva ("Direcionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}	
		
		
		senao se (dados == "N" ou dados == "n") {
			escreva ("Voltando ao início do cadastro... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
			limpa()
			cadastroUsuario()
		}
		
		}
		}

		senao {
			escreva ("Houve um erro, entre em contato com o desenvolvedor.")
		}
		
	}
	
	
	funcao login() {
		
		cadeia senhaUsuario, nomeUsuario, reiniciar
		
		escreva ("-----------------------\n")
		escreva("\t LOGIN\t\n")
		escreva ("-----------------------\n")
		escreva("NOME DE USUÁRIO: ")
		leia (nomeUsuario)
		escreva ("SENHA: ")
		leia (senhaUsuario)
		limpa()

		para (inteiro l = 1; l < 10; l++) {
			se (dado[l][1] == nomeUsuario){
				se(dado[l][2] == senhaUsuario){
					escreva ("Login efetuado!\n")	
			
			
				achou = verdadeiro  
				enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}}
				}
			}
			
			
		
		se (nao achou) 
		{
			escreva ("Usuário ou senha inválidos!\n")
			escreva ("Tentar novamente (S/N)? ")
			leia (reiniciar)
			limpa()
			se (reiniciar == "S" ou reiniciar == "s") {
			escreva ("Redirecionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}
		senao se (reiniciar == "N" ou reiniciar == "n") {
			
			escreva ("Até a próxima!\n")
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		inicio()
		}
		}
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2040; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {dado, 8, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */