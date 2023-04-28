programa
{
	 inclua biblioteca Util --> u
	inclua biblioteca Calendario --> calen

//VARIÁVEIS E MATRIZES GLOBAIS
	
  	inteiro opcao, nota, codigo, cadastros[9]
  	cadeia dado[10][3], cl
 	inteiro tempo_i = 1, tempo_f = 2
  	logico achou = falso
  	inteiro hora_atual, entrada_h, entrada_m, entrada_s, dev_h, dev_m, dev_s, minuto_atual, segundo_atual
  	inteiro entrada_mes, somaa, entrada_data, soma, somaMes, dev_mes=0, dev_data=0


  	cadeia livros[][] = {{"Titulo","Setor","Autor"}, 
		          	{"Contabilidade básica fácil","657","Osni"},
	                    {"Gerenciamento de projetos","658","Paul"},
	                    {"Gestão de projetos","658","1"},
	                    {"Consultoria na gestão","658","2"},
	                    {"Gestão Estratégica","658-3","3"},
	                    {"Administração da produção","658-5","4"},
	                    {"Gestão de estoque","658-7","5"},
	                    {"Comportamento do cliente","658-8","6"},
	                    {"Instrumentação e controle","681-2","7"},
	                    {"Mecatrônica","681-5","8"},
                         {"Manual de encanador","669","9"},
	                    {"Desenho técnico moderno","744","10"},
	                    {"Sistemas embarcados","001.8","11"},
	                    {"Fundamentos da metodologia","004","12"},
	                    {"Segurança da informação","004","13"},
	                    {"Hardware na prática","004.2","14"},
	                    {"Lógica e design da programação","004","15"},
	                    {"Compiladores","004.43","16"},
	                    {"Sistemas operacionais","004","Deitel"},
	                    {"Top down","004", "Oppenheiner"},
	                    {"Ergonomia prática","331.47","Bernard"},
	                    {"Ética","159-9","Emilio"},
	                    {"Princípios de economia","338","Nogami"},
	                    {"A biblioteca digital","025.4","Ana"},
	                    {"Bioética","502","Kottow"},
	                    {"Algebra linear","51","Chris"},
	                    {"Fisica 1","53","Fernando"},
	                    {"Química geral","54","Russel"},
	                    {"Fundamentos da geologia","551","Wincader"},
	                    {"Fundamentos da ecologia","573","Eugene"},
	                    {"Mecânica geral","62.7","Matsumura"},
	                    {"Tecnologia mecânica","620.1","Chiaverini"},
	                    {"Energia renováveis","621","Rodnei"},
	                    {"Metalografia","621.1","Colpaert"},
	                    {"Materiais","621-3","Walfredo"},
                         {"Analise de circuitos em engenharia","621.3.049","Irwin"},
                         {"Manual do montador elétrico","629.39","José"},
                         {"Instalações elétrica","621.316.17","Cotrim"},
                         {"Eletrônica","621.38","Malvino"},
                         {"Motores de explosão e diesel","621.43","Sarmiento"},
                         {"Mecânica das bombas","621.11","Pio"},
                         {"Máquinas","621.7","Casillas"},
                         {"Manutenção preditiva","621.8","Adyles"},
                         {"Manutenção do ferramenteiro","621.9","Konick"},
                         {"Manutenção hidráulica","626","Azevedo"},
                         {"Organização do ambiente de trabalho","629.02","Senai Departamento Nacional"},
                         {"Sistemas de transmissão mecânica","629.3","Senai Departamento Regional"},
                         {"Sistemas de Bicas","629.331","Senai Departamento Nacional"},
                         {"Fundamentos tecnológica automotiva","629.331","Senai Departamento Nacional"},
                         {"Manutenção de sistemas eletrônicos de motocicletas","629.326","Serviço de Nacional de Aprendizagem"},
                         {"Organização dos ambientes","629.015","Senai Departamento Nacional"},
                         {"Sinalização e iluminação","629.331","Senai Departamento Nacional"},
                         {"Fundamentos dos sistemas eletrônicos automotivos","629.3.664","Sistema Nacional de Aprendizagem"}}




//MENU INICIAL

	funcao inicio()
	{
		inteiro menu, r_menu
	
		escreva("\tBIBLIOTECA\t\n")
		escreva("----------------------------\n")
		escreva("1- Cadastro\n")
		escreva("2- Login\n")
		escreva("3- Empréstimo\n")
		escreva("4- Devolução\n")
		escreva("5- Relatórios\n")
		escreva("6- Pesquisa\n")
		escreva("7- Catálogo\n")
		escreva("8- Cadastro de livro\n")
		escreva("9- Sair\n")
		escreva("----------------------------\n")
		escreva("Digite a opção desejada: ")
		leia(menu)
		limpa()

		escolha (menu){
			
			caso 1:
			cadastroUsuario()
			pare

			caso 2:
			login()
			pare

			caso 3:
			emprestimo()
			pare

			caso 4:
			devolucao()
			pare

			caso 5:
			relatorios()
			pare

			caso 6:
			pesquisa()
			pare

			caso 7:
			catalogo()
			pare

			caso 8:
			//cadastroLivro()
			pare

			caso 9:
			escreva("Até a próxima!\n")
			pare

			caso contrario:
			escreva("Opção inválida. Retornar ao menu inicial?\n1- Sim\n2-Não\nDigite a opção desejada: ")
			leia(r_menu)
			se (r_menu == 1){
				limpa()
				inicio()
			}
			senao{
				escreva("Até a próxima!\n")
			}
			pare
		}
		
	}

//CADASTRO (CASO 1)

	funcao cadastroUsuario() {

		cadeia dados
		
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
		
		senao se (dados == "N") {
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
		
		
		senao se (dados == "N") {
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
			escreva ("Houve um erro, entre em contato com o desenvolvedor.")
		}
		
	}

//LOGIN (CASO 2)
	
	funcao login() {
		
		cadeia senhaUsuario, nomeUsuario, reiniciar
		inteiro v_cadastro
		
		se (cadastros[0] == 0){
			escreva("Você ainda não possui cadastro, deseja fazer um?\n1-Sim\n2-Não\nDigite a opção desejada: ")
			leia(v_cadastro)
			se (v_cadastro == 1){
				limpa()
				cadastroUsuario()
			}
			senao se (v_cadastro == 2){
				limpa()
				inicio()
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
			se (reiniciar == "S") {
			escreva ("Redirecionando ao login... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		login()
		}
		senao se (reiniciar == "N") {
			
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

// EMPRÉSTIMO E PRAZO (CASO 3)

	funcao emprestimo(){
		
		cadeia aluno
		
		escreva ("Insira o nome do aluno: ")
		leia (aluno)
		limpa()
		entrada_h = calen.hora_atual(falso)
		entrada_m = calen.minuto_atual()
		entrada_s = calen.segundo_atual()
		entrada_data = calen.dia_mes_atual()
		entrada_mes = calen.mes_atual()
		escreva ("-----------------------\n")
		escreva (aluno, " ENTRADA ", entrada_h,":", entrada_m,":", entrada_s, " DATA: " , entrada_data , "/" , entrada_mes)
		escreva ("\n-----------------------\n")
		entregaLivro ()
	}

	funcao entregaLivro(){

			soma = entrada_data + 15
			se (soma > 30){
				somaa = soma-30
				somaMes = entrada_mes+1
				escreva("O prazo de entrega é até " , somaa, "/", somaMes)
	
			}
	}


//DEVOLUÇÃO (CASO 4)

	funcao devolucao(){
		cadeia aluno
		
		escreva ("\nInsira o nome do aluno: ")
		leia (aluno)
		limpa()
		dev_h = calen.hora_atual(falso)
		dev_m = calen.minuto_atual()
		dev_s = calen.segundo_atual()
		dev_data = calen.dia_mes_atual()
		dev_mes = calen.mes_atual()
		escreva ("-----------------------\n")
		escreva (aluno, " DEVOLUÇAO ", dev_h,":", dev_m,":", dev_s , " DATA: ", dev_data , "/" , dev_mes)
		escreva ("\n-----------------------\n")
	     atraso()
					
		}
	
	funcao atraso(){
		se (dev_data >= somaa e dev_mes >= somaMes){
			escreva("Entrega fora do prazo") 
				}
		senao {
			escreva("Entrega dentro do prazo")
				}
				}



//RELATÓRIOS (CASO 5)

	funcao relatorios(){

		inteiro menu_r
		
		escreva("\t\tRELATÓRIOS\n")
		escreva("----------------------------------------------\n")
		escreva("1- Relatório de livros disponíveis\n")
		escreva("2- Relatório de livros emprestados e em atraso\n")
		escreva("3- Relatório de alunos cadastrados\n")
		escreva("4- Retornar\n")
		escreva("5- Sair\n")
		escreva("----------------------------------------------\n")
		escreva("Digite a opção desejada: ")
		leia(menu_r)
		limpa()

		escolha (menu_r){

			caso 1:

			pare

			caso 2:

			pare

			caso 3:

			pare

			caso 4:

			pare

			caso 5 :

			pare

			caso contrario:

			pare
			
		}
		
	}

//PESQUISA (CASO 6)

 funcao codigoBarras() {
		escreva("\t\t    LISTA DE CÓDIGOS")
		escreva("\n---------------------------------------------------------\n") 
		escreva("Livros de Gestão                    0000001 até 2000000\n")
		escreva("Livros de Automação Industrial      2000001 até 3000000\n")
		escreva("Livros de Tecnologia da Informação  3000001 até 4000000\n")
		escreva("Livros de Matemática                4000001 até 5500000\n")
		escreva("Livros de Mecânica                  5500001 até 6250000\n")
		escreva("Livros de Elétrica                  6250001 até 7500000\n")
		escreva("---------------------------------------------------------\n")
	}
funcao pesquisa() {
		
		escreva("Insira o código de barras do livro (7 dígitos): ")
		leia(codigo)
		limpa()

		se (codigo >= 0000001 e codigo <= 2000000){
			LocalizarCodigoGestao()
		}
		senao se (codigo >= 2000001 e codigo <= 3000000){
			LocalizarCodigoAutomacao()
		}
		senao se (codigo >=3000001 e codigo <= 4000000){
			LocalizarCodigoTI()
		}
		senao se (codigo >=4000001 e codigo <= 5500000){
			LocalizarCodigoMatematica()
		}
		senao se (codigo >=5500001 e codigo <= 6250000){
			LocalizarCodigoMecanica()
		}
		senao se (codigo >=6250001 e codigo <= 7500000){
			LocalizarCodigoEletrica()
		}
		senao {
			escreva("Código inválido!\n")
		}
}


	funcao LocalizarCodigoGestao() {

          cadeia gestao[][] = {{"Matérias","setores"},{"Contabilidade","657"},{"Gerenciamento de P.","658"},{"Empreendorismo","658"},{"Rotinas Admi.","658"},{"Gestão de Pessoas","658-3"},{"Gestão de Produção","658-5"},{"Gestão de Estoque","658-7"},{"Marketing","658-8"}}
		
		
		se (codigo <= 0250000){
		escreva("Livro de ", gestao[1][0]," disponível na sessão ",gestao[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 0250001 e codigo <=0500000){
		escreva("Livro de ", gestao[2][0]," disponível na sessão ",gestao[2][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 0500001 e codigo <=0750000){
		escreva("Livro de ", gestao[3][0]," disponível na sessão ",gestao[3][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 0750001 e codigo <=1000000){
		escreva("Livro de ", gestao[4][0]," disponível na sessão ",gestao[4][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 1000001 e codigo <=1250000){
		escreva("Livro de ", gestao[5][0]," disponível na sessão ",gestao[5][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 1250001 e codigo <=1500000){
		escreva("Livro de ", gestao[6][0]," disponível na sessão ",gestao[6][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 1500001 e codigo <=1750000){
		escreva("Livro de ", gestao[7][0]," disponível na sessão ",gestao[7][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 1750001 e codigo <=2000000){
		escreva("Livro de ", gestao[8][0]," disponível na sessão ",gestao[8][1], ".\n")
		voltaPesquisa()
		}
	}


	funcao LocalizarCodigoAutomacao() {
		
	     cadeia Automacao[][] = {{"Matérias","Setores"},{"Instrumentação","681-2"},{"Automação e Controle","681-5"},{"Construção Civil","669"},{"Desenho Técnico","744"}}
	
		
		se (codigo >= 2000001 e codigo <=2250000){
          escreva("Livro de ", Automacao[1][0]," disponível na sessão ",Automacao[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 2250001 e codigo <=2500000){
          escreva("Livro de ",Automacao[2][0]," disponível na sessão ", Automacao[2][1],".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 2500001 e codigo <=2750000){
          escreva("Livro de ",Automacao[3][0]," disponível na sessão ",Automacao [3][1],".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 2750001 e codigo <=3000000){
	     escreva("Livro de ",Automacao[4][0]," disponível na sessão ",Automacao [4][1],".\n")
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoTI() {
		
	     cadeia TI[][] = {{"Matérias","Setores"},{"Arquitetura Computa.","004-2"},{"Hardware","004-3"},{"Linguagem Progamação","004-43"},{"Redes computadores","004-7"}}
	
		se (codigo >= 3000001 e codigo <=3250000){
		escreva("Livro de ", TI[1][0]," disponível na sessão ",TI[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 3250001 e codigo <=3500000){
		escreva("Livro de ", TI[2][0]," disponível na sessão ",TI[2][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 3500001 e codigo <=3750000){
		escreva("Livro de ", TI[3][0]," disponível na sessão ",TI[3][1], ".\n")	
		voltaPesquisa()
		}
		senao se (codigo >= 3750001 e codigo <=4000000){
	     escreva("Livro de ", TI[4][0]," disponível na sessão ",TI[4][1], ".\n")
		voltaPesquisa()	
		}
	}

	funcao LocalizarCodigoMatematica() {

	     cadeia Matematica[][] = {{"Matérias","Setores"},{"Matemática","51"},{"Física","53"},{"Química","54"},{"Geologia","551"},{"Biologia","573"}}
		
		se (codigo >= 4000001 e codigo <=4250000){
             escreva("Livro de ",Matematica[1][0]," disponível na sessão ",Matematica[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 4250001 e codigo <=4500000){
		escreva("Livro de ", Matematica[2][0]," disponível na sessão ",Matematica[2][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 4500001 e codigo <=4750000){
		escreva("Livro de ",Matematica[3][0]," disponível na sessão ",Matematica[3][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 4750001 e codigo <=5000000){
		escreva("Livro de ", Matematica[4][0]," disponível na sessão ",Matematica[4][1], ".\n")
		voltaPesquisa()	
		}
		senao se (codigo >= 5000001 e codigo <=5500000){
          escreva("Livro de ", Matematica[5][0]," disponível na sessão ",Matematica[5][1], ".\n")
		voltaPesquisa()
		}
		
	}

	funcao LocalizarCodigoMecanica() {
	   
	     cadeia Mecanica[][] = {{"Matérias","Setores"},{"Mecânica Materiais","620-1"},{"Engenharia Mecânica","621"},{"Máquinas Térmicas","551"}}
		
		
		se (codigo >= 5500001 e codigo <=5750000){
		escreva("Livro de ",  Mecanica[1][0]," disponível na sessão ", Mecanica[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 5750001 e codigo <=6000000){
		escreva("Livro de ",  Mecanica[2][0]," disponível na sessão ", Mecanica[2][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 6200001 e codigo <=6250000){
		escreva("Livro de ",  Mecanica[3][0]," disponível na sessão ", Mecanica[3][1], ".\n")
		voltaPesquisa()
		}
	}

	funcao LocalizarCodigoEletrica() {
		
		 cadeia Eletrica[][] = {{"Matérias","Setores"},{"Engenharia","621-3"},{"Circuitos Elétricos","621-3-049"},{"Medição Elétrica","621-31"},{"Instalação Elétrica","621-316-17"},{"Dispotivo Eletrônico","621-38"}}	
		
		
		se (codigo >= 6250001 e codigo <=6500000){
		escreva("Livro de ", Eletrica[1][0]," disponível na sessão ",Eletrica[1][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 6500001 e codigo <=6750000){
		escreva("Livro de ", Eletrica[2][0]," disponível na sessão ",Eletrica[2][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 6750001 e codigo <=7000000){
		escreva("Livro de ", Eletrica[3][0]," disponível na sessão ",Eletrica[3][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 7000001 e codigo <=7250000){
		escreva("Livro de ", Eletrica[4][0]," disponível na sessão ",Eletrica[4][1], ".\n")
		voltaPesquisa()
		}
		senao se (codigo >= 7250001 e codigo <=7500000){
          escreva("Livro de ", Eletrica[5][0]," disponível na sessão ",Eletrica[5][1], ".\n")
		voltaPesquisa()
		}
	}

	funcao voltaPesquisa(){

		cadeia novaP
		
		escreva("Deseja fazer uma nova pesquisa? (S/N):  ")
		leia(novaP)
		limpa()
		se (novaP == "S") {
			escreva ("Voltando... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		pesquisa()	
		}
			
		senao se (novaP == "N") {
			escreva ("Até a próxima!\n ")
		}

		senao {
			escreva ("Opção inválida! Voltando ao início... ")
			enquanto (tempo_i<=tempo_f) {
			escreva (tempo_i," ")
			u.aguarde(1000)
			tempo_i++
		}
		limpa()
		pesquisa()
		}
}


//CATÁLOGO (CASO 7)

	
	funcao catalogo() {
	Gestao()
	automacaoindustrial()
	ti()
	matematica()
	mecanica()
	eletrica()
}

	
	
	funcao Gestao()
	     {
	    cadeia matriz[][] = {{"Matérias\t\t\t","Setores"},{"Contabilidade\t\t\t","657"},{"Gerenciamento de P.\t\t","658"},{"Empreendorismo\t\t\t","658"},{"Rotinas Admi.\t\t\t","658"},{"Gestão de Pessoas\t\t","658-3"},{"Gestão de Produção\t\t","658-5"},{"Gestão de Estoque\t\t","658-7"},{"Marketing\t\t\t","658-8"}}
		
		escreva ("---------------------------------------\n")
		escreva ("                Gestão                 \n")
		escreva ("---------------------------------------\n")
	  
		para (inteiro l = 0; l <= 8; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
	     
	     funcao automacaoindustrial()
	     {
	    cadeia matriz[][] = {{"Matérias\t\t\t","Setores"},{"Instrumentação\t\t\t","681-2"},{"Automação e Controle\t\t","681-5"},{"Construção Civil\t\t","669"},{"Desenho Técnico\t\t\t","744"}}
		
		escreva ("---------------------------------------\n")
		escreva ("          Automação Industrial         \n")
		escreva ("---------------------------------------\n")
        
        	para (inteiro l = 0; l <= 4; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
		    
	     funcao ti()
	     {
	    cadeia matriz[][] = {{"Matérias\t\t\t","Setores"},{"Arquitetura Computa.\t\t","004-2"},{"Hardware\t\t\t","004-3"},{"Linguagem Progamação\t\t","004-43"},{"Redes computadores\t\t","004-7"}}
	
		
		escreva ("---------------------------------------\n")
		escreva ("        Tecnologia da Informação       \n")
		escreva ("---------------------------------------\n")
	        
	    	para (inteiro l = 0; l <= 4; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
		    
	     funcao matematica()
	     {
	    cadeia matriz[][] = {{"Matérias\t\t\t","Setores"},{"Matemática\t\t\t","51"},{"Física\t\t\t\t","53"},{"Química\t\t\t\t","54"},{"Geologia\t\t\t","551"},{"Biologia\t\t\t","573"}}
	
		
		escreva ("---------------------------------------\n")
		escreva ("               Matemática              \n")
		escreva ("---------------------------------------\n")
	
	    	para (inteiro l = 0; l <= 5; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
		    
	     funcao mecanica()
	     {
	    cadeia matriz[][] = {{"Matérias\t\t\t","Setores"},{"Mecânica Materiais\t\t","620-1"},{"Engenharia Mecânica\t\t","621"},{"Máquinas Térmicas\t\t","551"}}
	
		escreva ("---------------------------------------\n")
		escreva ("                Mecânica               \n")
		escreva ("---------------------------------------\n")
	        
	        para (inteiro l = 0; l <= 3; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
		    
	     funcao eletrica()
	     {
	    cadeia matriz[][] =  {{"Matérias\t\t\t","Setores"},{"Engenharia\t\t\t","621-3"},{"Circuitos Elétricos\t\t","621-3-049"},{"Medição Elétrica\t\t","621-31"},{"Instalação Elétrica\t\t","621-316-17"},{"Dispotivo Eletrônico\t\t","621-38"}}
		
		
		escreva ("---------------------------------------\n")
		escreva ("                Elétrica               \n")
		escreva ("---------------------------------------\n")
		
		    para (inteiro l = 0; l <= 5; l++)
		{
		    para (inteiro c = 0; c < 2; c++)
		{
			escreva (matriz[l][c])
		}
		escreva("\n")
	     }
	     }
// CADASTRO DE LIVROS (CASO 8)

	//funcao cadastroLivro(){
		

		//escreva("Insira quantidade de livros: ")
		//leia(q_livros)

		
		//limpa()
		
		//escreva("----CADASTRO DE LIVROS----\n\n")

		//ini = q[0] + 1
		//fim = q[0] + q_livros

		//para(i = ini; i <= fim; i++){
			
			
			//escreva("\nLivro: ")
			//leia(liv)
			
			//escreva("Categoria: ")
			//leia(cat)

			//livros[i] = liv
			//categorias[i] = cat
			//}

		//limpa()
		
		//escreva("\n\tLivros Cadastrados:\n")

		
		//para(i = 0; i <= 19; i++){

			//se (livros[i] != ""){
				//escreva("\n",i, " - Livro ", livros[i], " cadastrado na categoria ", categorias[i],"!\n")
				//q[0] = i
				//}
				

			//senao{
				//escreva("")}
			}
		}


//RETORNOS

	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11885; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */