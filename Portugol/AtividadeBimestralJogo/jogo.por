
	programa
{
	
	inclua biblioteca Util --> u
	inclua biblioteca Graficos --> g
	inclua biblioteca Mouse --> m
	inteiro lista_habilidades_por[6]
	cadeia lista_habilidades_nome[6] = {"FORÇA","COMUNICAÇÃO","EMPATIA","CORAGEM","INTELIGÊNCIA","RACIOCÍNIO"}
	inteiro fase_concluida = 0
	cadeia nome
	inteiro vida = 3

	
	funcao inicio()
	{	
		faca{
		//introducao_usuario()
		limpa()
		IntroducaoUsuario()
		SorteiaSkills()
		Habilidades()
		passarTexto()
		fase_concluida = 0
		//Capitulo Saci()
		se(vida > 0) {
		se(fase_concluida == 0 e vida > 0){	 
			SaciIntroducao()
			SaciMeio()
			
		}
		//Capitulo Iara()
		se(fase_concluida == 1  e vida > 0){	 
				   IaraIntroducao()
		             IaraMeio()
		}
		// Capitulo Cuca
		se(fase_concluida == 2 e vida > 0){	 
				   CucaIntroducao()
		             CucaMeio()
		}
		}
		}enquanto(fase_concluida != 3)
	}
	funcao IntroducaoUsuario()
	{

            
          NomeJogo()
		u.aguarde(2500)
		limpar()
		escreva("Olá, aventureiro!!!(Pressione ENTER para passar as falas)")
	        passarTexto()
		escreva("Bem vindo a Cajueiro do Sul, onde os personagens do folclore brasileiro existem.")
		passarTexto()
		escreva("Você é um novato na organização de caçadores de monstros, e acabou de ser\ndesignado para uma missão muito importante.")
		passarTexto()
		escreva("As lendas do folclore estão provocando o caos em diversas regiões do país.")
		passarTexto()
		escreva("Para combater essas ameaças, você se juntou a um veterano caçador chamado Miguel.")
		passarTexto()
		escreva("Porém, você não esperava que ele escondesse um segredo que poderia mudar tudo.")
		passarTexto()
		escreva("Durante o jogo, você precisará usar suas habilidades para superar desafios\ne tomar decisões importantes que podem afetar o enredo.")
		passarTexto()
		escreva("Digite seu nome : ")
		leia(nome)
		
		escreva("Bom, ", nome, " preparado(a) para a aventura?????")
		passarTexto()
		limpar()
		
		
	}
	
	funcao limpar(){
		
		limpa()

	}
	
	funcao SorteiaSkills(){
		
			para(inteiro i=0; i < u.numero_elementos(lista_habilidades_por); i++){
				inteiro sort
				sort = u.sorteia(20, 50)
				lista_habilidades_por[i] = sort
			}
	
	}
	
	funcao Habilidades(){
		
		escreva("Essas são suas habilidades:   \n")
		escreva("***************************************\n")
		escreva("*             HABILIDADES             *\n")
		escreva("***************************************\n")
		para(inteiro i=0; i < u.numero_elementos(lista_habilidades_por); i++){
				escreva("* ", lista_habilidades_por[i],"% - ",lista_habilidades_nome[i],"\n")
				
			}
		
	}
	
	
	funcao SaciIntroducao(){
		
		limpar()
		escreva("Bem vindo a primeira fase.")
		passarTexto()
		escreva("Os personagens do folclore brasileiro tramaram um fuga da prisão.")
		passarTexto()
		escreva("O Saci está causando travessuras e assustando moradores de Cajueiro.")
		passarTexto()
		escreva("O objetivo da sua 1º missão será capturar o Saci e impedir que\nele provoque mais caos na região.")
		passarTexto()
		escreva("Ao longo da missão, o você poderá usar suas habilidades de Comunicação e Empatia\npara tentar acalmar o Saci e entender seus motivos para causar essas travessuras.")
                passarTexto()
		escreva("No entanto, o confronto com o Saci não será fácil.\nSua agilidade e habilidade podem tornar a luta desafiadora.")
		passarTexto()
		escreva("Você terá que rastrear o Saci e antecipar seus movimentos.")
		passarTexto()
		escreva("Durante a batalha, poderá escolher entre acalmar o Saci usando Empatia ou enfrentá-lo\ndiretamente usando sua Força.")
		passarTexto()
		escreva("As escolhas determinarão o decorrer da fase.")
		passarTexto()
		limpar()
	
		
		
		}
		
	funcao SaciMeio(){
		
	     cadeia decisao = "4"
	     
		faca{
			
					limpar()
					escreva("Após conversarem com alguns moradores da região,\nvocês chegam ao lugar onde Saci foi visto pela última vez.")
					passarTexto()
					escreva("Miguel retira o Detectores de Monstros de sua bolsa e\ncomeça a procurar o Saci com o objeto.")
					passarTexto()
					escreva("Vocês encontram o Saci em um beco, que fica entre uma lavanderia e uma loja.")
					passarTexto()
					escreva("Agora você precisa fazer um escolha.")
					
					escreva("\n1) Use a sua Empatia para convencer o Saci.")
					
					escreva("\n2) Use sua Força para lutar com o Saci.\n")
					escreva("Digite sua escolha: ")
					leia(decisao)
					se(decisao == "1"){
						
						decisao = "4"
						
								faca{

														limpar()
														
														escreva("Agora você precisará fazer outra escolha.")
														passarTexto()
														escreva("1) Ir com o Miguel. (Util ter 35% de força ou mais).")
													
														escreva("\n2) Ir sem o Miguel. (Util ter 25% de empatia ou mais).\n")
														Habilidades()
														escreva("\nDigite sua escolha: ")
														leia(decisao)
														
														
											
														se(decisao == "1"){// Decisão dentro da primeira decisão
															
															
															limpar()
															escreva("Você e Miguel e vão em direção opostas para chegar ao beco.")
															passarTexto()
															escreva("Você chega antes do Miguel e encontra o Saci...")
															passarTexto()
															escreva("Apesar do Saci estar muito agitado, você consegue convence-lo a não lutar.")
															passarTexto()
															escreva("Porém quando Miguel chega o Saci se assusta e você é atingido...")
															passarTexto()
															se(lista_habilidades_por[0] < 35){//perde 1 vida
																
																escreva("Você perde uma vida, e Miguel captura o Saci e liga para a organização....")
																vida = vida -1 
																passarTexto()	
																escreva("FASE 1 CONCLUÍDA")
																fase_concluida ++
																passarTexto()
																imagem_saci()
																pare
																
															}//se
															se(lista_habilidades_por[0] >= 35){//não perde vida
																
																escreva("Porém consegue se defender, e Miguel captura e leva o Saci para a prisão...")
																passarTexto()
																escreva("FASE 1 CONCLUÍDA")
																fase_concluida ++
																passarTexto()
																imagem_saci()
																pare
																
															}//se
															
														}//se
														
														se(decisao == "2"){// Decisão dentro da primeira decisão
															
															limpar()
												
															se(lista_habilidades_por[2] < 25){// perde vida
																
																escreva("Você vai sozinho(a) em direção ao beco e encontra o Saci...")
																passarTexto()
																escreva("Mas não consegue acalmá-lo, e ele te acerta com chute no estomâgo.")
																passarTexto()
																escreva("Miguel vem ao seu socorro e ajuda aprender o Saci.")
																passarTexto()
																escreva("Você perde 1 vida.")
																vida = vida - 1
																passarTexto()
																escreva("A organização envia o Saci para a prisão.")
																passarTexto()
																escreva("FASE 1 CONCLUÍDA")
																fase_concluida ++
																passarTexto()
																imagem_saci()
																pare

																
															}
															se(lista_habilidades_por[2] >= 25){//não perde vida
																
															     
																escreva("Você vai sozinho(a) em direção ao beco e encontra o Saci...")
																passarTexto()
																escreva("Depois de uma longa conversa, ele aceita ir para a prisão.")
																passarTexto()
																escreva("A organização envia o Saci para a prisão.")
																passarTexto()
																escreva("FASE 1 CONCLUÍDA")
																fase_concluida ++
																passarTexto()
																imagem_saci()
																pare
																
															}
															
														}
														senao{
			
					                                             escreva("Você informou um número não esperado, digite novamente! \n")
					                
					                                             limpar()
				                                                  }
				                                                  
								}enquanto(decisao != "1" ou decisao != "2")
														
					    pare
					    
					}
				   se(decisao == "2"){
				   	
				   	decisao = "4"
				   	
					faca{
						
						     limpar()
							escreva("Agora você precisará fazer outra escolha.")
							passarTexto()
							escreva("1) Ir com o Miguel.")// Decisão que não perde vida
							escreva("\n2) Ir sem o Miguel(Util ter 35% de força ou mais).\n")// Decisão que pode perder uma vida.
							Habilidades()
							
							escreva("\nDigite sua escolha: ")
							leia(decisao)
							
							
							se(decisao == "1"){// Decisão dentro da segunda decisão.
								
								limpar()
								
								escreva("Você e Miguel vão em direção opostas para chegar ao beco.")
								passarTexto()
								escreva("O Miguel chega antes e encontra o Saci...")
								passarTexto()
								escreva("Apesar de o Saci ser muito rápido, Miguel consegue segurar a barra.")
								passarTexto()
								escreva("Você chega e se junta para lutar com Miguel.")
								passarTexto()
								escreva("Você continua intacto e a luta foi bem sucedida...")
								passarTexto()
								escreva("A organização envia o Saci para a prisão.")
								passarTexto()
								escreva("FASE 1 CONCLUÍDA")
								fase_concluida ++
								passarTexto()
								imagem_saci()
								pare
								
							}
							se(decisao == "2"){// Decisão dentro da segunda decisão.
								
								limpar()
								
				
								escreva("Você vai em direção ao Saci.")
								passarTexto()
								se(lista_habilidades_por[0] >= 35){
									
									escreva("Você consegue engana o Saci e ganha a luta.")
									passarTexto()
									escreva("A organização está enviando o Saci para a prisão.")
									passarTexto()
									escreva("FASE 1 CONCLUÍDA")
									fase_concluida ++
									passarTexto()
									imagem_saci()
									pare

									
								}
								se(lista_habilidades_por[0] < 35){
									
									escreva("O Saci é muito forte e habilidoso, você deveria ter ido com o Miguel...")
									passarTexto()
									escreva("Você perde 1 vida.")
									vida = vida -1 
									passarTexto()
									escreva("Miguel chega pela outra entrada do beco e captura o Saci.")
									passarTexto()
									escreva("A organização envia o Saci para a prisão.")
									passarTexto()
									escreva("FASE 1 CONCLUÍDA")
									fase_concluida ++
									passarTexto()
									imagem_saci()
									pare
									
								}
						      }
						       senao{
			
					                    escreva("Você informou um número não esperado, digite novamente!\n")
					                    u.aguarde(3000)
					                    limpa()
					                     
				                            }
				                            
					     enquanto(decisao != "1" ou decisao != "2")
						pare
						
					}enquanto(decisao != "1" ou decisao != "2")
					
		            }
		           se(fase_concluida == 1){
		           	
						pare
						
					}
				senao{
			
					escreva("Você informou um número não esperado, digite novamente! \n")
					u.aguarde(3000)
					limpa()
					
				}
				}enquanto(decisao != "1" ou decisao != "2")

		}
		
	funcao IaraIntroducao()
	{
		
		limpar()
		escreva("Parabéns!!!! Você passou para a segunda fase.")
	     passarTexto()
		escreva("Sua missão agora é capturar a Iara.")
		passarTexto()
		escreva("Ela está encantando pescadores e os levando para as profundezas do rio.\nVocê e Miguel precisam resgatá-los e enfrenta-lá.")
		passarTexto()
		escreva("Para enfrentar a Iara, você precisará usar suas habilidades de\nRaciocínio e Inteligência para montar uma estratégia eficaz.")
	     passarTexto()
		escreva("O Detector de Monstros também pode ser útil para\nlocalizar a Iara e acompanhar seus movimentos.")
		passarTexto()
		escreva("Lembrando que a única fraqueza de uma sereia é\ncantando com mais determinação do que ela.")
		passarTexto()
		limpar()
		
		}
	funcao IaraMeio()
	{
		
		 cadeia decisao = "4"
		 
		    faca{
		    	
					escreva("Depois de conversar com moradores da região,\nvocês encontram o lago onde Iara está.")
                               passarTexto()
		               escreva("Você e Miguel entram num impasse.")
		               passarTexto()
		               escreva("Agora você precisa fazer um escolha.")
		               
                               escreva("\n1) Use o Detector de Montros para encontrar a\nIara mais rápido e tentar captura-lá.")
                         
		               escreva("\n2) Use a Inteligência para atrair a Iara\npara uma armadilha e captura-lá.\n")
		               
		               escreva("\nDigite sua escolha: ")
		               leia(decisao)
		               
		               
					se(decisao == "1"){
						
						decisao = "4"
						
								faca{    
									                
									                    limpar()
													escreva("Vocês chegam a localização de Iara usando o Detector de Monstros e\nela está cantando uma melodia....")
													passarTexto()
                                                                 escreva("Agora você precisa fazer outra escolha.\n")
                                                                 
							                              escreva("1) Convencer o Miguel a cantar com você para derrota-lá.\n")
							                             
							                              escreva("2) Cantar sozinho.\n")
							                              
							                              escreva("Digite sua escolha: ")
							                              leia(decisao)	
							                            

														se(decisao == "1"){// Decisão dentro da primeira decisão
															
															limpar()
															escreva("Você e Miguel se preparam para cantar a música do pão de queijo.")
															passarTexto()
							                                        escreva("Com vocês cantando juntos, Iara perde a voz.")
							                                        passarTexto()
							                                        escreva("Então vocês retiram-a do lago e prendem-a.")
							                                        passarTexto()
							                                        escreva("Miguel liga para a organização e eles levam-a para a prisão.")
							                                        passarTexto()
							                                        escreva("FASE 2 CONCLUÍDA")
															fase_concluida ++
															passarTexto()
															imagem_iara()
															pare
															
														}
														se(decisao == "2"){// Decisão dentro da primeira decisão
															
															     limpar()
												                	escreva("Você começa a cantar a música do pão de queijo sem o Miguel.")
												                	passarTexto()
							                                             escreva("Porém, sua voz sozinha não é suficiente para enfraquecer a Iara...")
							                                             passarTexto()
							                                             escreva("Miguel consegue captura-lá com a distração de sua voz,\nmas não antes de você levar dano.")
							                                             passarTexto()
							                                             escreva("Você perde 1 vida.")
							                                             vida = vida - 1
							                                             passarTexto()
							                                             escreva("Miguel liga para a organização e eles levam-a para a prisão.")
							                                             passarTexto()
							                                             escreva("FASE 2 CONCLUÍDA")
															     fase_concluida ++
																passarTexto()
																imagem_iara()
																pare

															
														}
														senao{
			
					                                             escreva("Você informou um número não esperado, digite novamente! \n")
					                                             u.aguarde(3000)
					                                             limpa()

					                                             
				                                                  }
								}enquanto(decisao != "1" ou decisao != "2")
								
					    pare
					    
					}
				   se(decisao == "2"){

				   	
				   	decisao = "4"

				   	
					faca{
						
						     limpar()
						     escreva("Vocês conseguem encontar a Iara e ela está atraindo um homem para o lago....")
							passarTexto()
							escreva("Agora você precisa fazer outra escolha.")
							
							escreva("\n1) Convencer o Miguel a cantar com você para derrota-lá.")
						
							escreva("\n2) Cantar sozinho.")
							
							escreva("\nDigite sua escolha: ")
							leia(decisao)
							
							
							se(decisao == "1"){
								
								limpar()
								escreva("Você e Miguel se preparam para cantar a música do pão de queijo.")
								passarTexto()
								escreva("Com vocês cantando juntos, Iara começa a perder a voz.")
								passarTexto()
								escreva("Mas antes de ser capturada, ela consegue te acertar com uma pedra.")
								passarTexto()
								escreva("Você perde 1 vida.")//perde vida
								vida = vida - 1
								passarTexto()
								escreva("Então vocês retiram-a do lago e prendem-ae conseguem salvar o homem.")
								passarTexto()
								escreva("Miguel liga para a organização e eles levam-a para a prisão.")
								passarTexto()
								escreva("FASE 2 CONCLUÍDA")
								fase_concluida ++
								passarTexto()
								imagem_iara()
								pare
								
							}
							se(decisao == "2"){
								
								limpar()
						          escreva("Você começa a cantar a música do pão de queijo sem o Miguel.")
						          passarTexto()
						          escreva("E é o suficiente para enfraquecer a Iara e distrai-la...")
						          passarTexto()
						          escreva("Usando isso, Miguel consegue captura-lá sem sofrer qualquer dano.")
						          passarTexto()
						          escreva("Você liga para a organização e eles levam-a para a prisão.")//não perde vida
						          passarTexto()
						          escreva("FASE 2 CONCLUÍDA")
						          fase_concluida ++
								passarTexto()
								imagem_iara()
								pare
									
								
						      }
						       senao{
			
					                    escreva("Você informou um número não esperado, digite novamente! \n")
					                     u.aguarde(3000)
					                     limpa()
					                     
				                            }
				                            
					     enquanto(decisao != "1" ou decisao != "2")
					     
						pare
						
					}enquanto(decisao != "1" ou decisao != "2")
					
		            }
		           se(fase_concluida == 2){
		           	
						pare
						
					}
				senao{
			
					escreva("Você informou um número não esperado, digite novamente! \n")
					u.aguarde(3000)
					limpa()
					
				}
				}enquanto(decisao != "1" ou decisao != "2")
				
		    }

			
	funcao passarTexto(){

		
		cadeia tecla 
		faca{

			
			 leia(tecla)
			 
		}enquanto(tecla != "")
          
  
		
	}
	funcao CucaIntroducao(){

		
		limpar()
		escreva("Bem vindo a terceira e última fase.")
		passarTexto()
	  	escreva("Para o último desafio você terá que enfrentar a Cuca.")
	  	passarTexto()
	  	escreva("Ela está provocando o terror sequestrando e\naterrorizando-as crianças de uma vila pacata.")
	  	passarTexto()
	  	escreva("Rumores dizem que ela sequestra as crianças para transformá-las\nem seus ajudantes, cumprindo suas tarefas sujas e maléficas.")
	  	passarTexto()
	  	escreva("Para enfrenta-lá, será necessário usar a Força e o Raciocínio,\npara lutar com ela diretamente ou explorar uma fraqueza para usar em batalha. ")
	  	passarTexto()
	  	limpar()
	  	
		}
		
	funcao CucaMeio(){

		
	     cadeia decisao = "4"
	     
		faca{
                     	limpar()
                     	
					escreva("Após encontrarem a vila, vocês tentam conversar com alguns moradores da região para\nencontrar informaçãos sobre o último avistamento das crianças.")
					passarTexto()
	  				escreva("Com muito medo das consequências que viriam sobre eles se falassem, muitos moradores\nda pacata vila se esconderam.")
	  			     passarTexto()
	  				escreva("Porém um velho avô que teve o seu neto sequestrado há\npouco tempo não temeu.")
	  				passarTexto()
	  				escreva("José, o avô, conta que a muito tempo a Cuca vivia entre eles,\nsem espalhar medo ou maldade.")
	  				passarTexto()
	  				escreva("Diz ele que ela era gentil com os moradores da vila e\nsempre muito doce com as crianças.")
	  				passarTexto()
	  				escreva("Que há muito tempo ela ajudou-o a encontrar sua filha\nque se perdeu na floresta.")
	  				passarTexto()
	  				escreva("Porém que pouco antes da prisão das lendas,\nela começou a se tornar estranha.")
	  				passarTexto()
	  				escreva("Espalhando medo e maldade na vila, sequestrando crianças e as\naterrorizando-as crianças.")
	  				passarTexto()
	  				escreva("Ele avisou que a última aparição da Cuca foi no bosque\ndo lado mais escondido da vila.")
	  				passarTexto()
	  				limpar()
	  				escreva("Enquanto você e Miguel andavam pelo bosque, encontram uma cabana.")
	  				passarTexto()
	  				escreva("Logo que entram na cabana, vocês encontram encontram\nevidências da presença de Cuca.")
	  				passarTexto()
	  				escreva("Ao tentar sair do covil da Cuca,vocês a encontram em toda sua forma assustadora:")
	  				passarTexto()
	  				escreva("Uma bruxa de aparência grotesca,vestida com uma capa escura e\nportando garras afiadas.")
	  				passarTexto()
	  				limpar()
	  	               escreva("Uma batalha se iniciará e você deve fazer uma escolha.\n")
	  	              
					escreva("1) Use a sua Força. (Util ter 35% de coragem ou mais)\n")
					
					escreva("2) Use o seu Raciocínio. (Util ter 25% de raciocínio ou mais)\n")
					Habilidades()
					escreva("Digite sua escolha: ")
					leia(decisao)
					
					
					se(decisao == "1"){

										limpar()
										escreva("A Cuca surge diante de vocês e lança um feitiço em sua direção.")
										passarTexto()
										escreva("Você se esquiva e retira a arma regulável da bolsa e assim começa\numa batalha com a Cuca...")
										passarTexto()
										escreva("Mas durante a batalha a Cuca começa a ficar fraca e cansada de toda a situação.")
										passarTexto()
										escreva("E ela questiona Miguel, perguntado se ele não se arrependia\nde suas ações no passado.")
										passarTexto()
										escreva("Cuca logo mostra a Polaroid da Memória que foi responsável por\napagar as memórias da mesma.")
										passarTexto()
										escreva("Assim Miguel se vê obrigado a contar toda a verdade.\nA contar sobre o dia em que apagou as memórias da Cuca...")
										passarTexto()
										escreva("Que acabou tranformando a Cuca em uma bruxa que só queria fazer mal para as pessoas.")
										passarTexto()
										escreva("Por isso os personagens fugiram da prisão...\nMiguel é culpado por tudo que aconteceu.")
										passarTexto()
										escreva("Miguel se vê em prantos e a culpa toma-o por completo.")
										passarTexto()
										escreva("Você fica sem saber o que fazer diante de toda a situação.")
										passarTexto()
										escreva("A Cuca faz um pedido, que ela receba as suas memórias de volta e\nassim ela dirá onde estão as crianças.")
										passarTexto()
										escreva("Miguel retira do bolso a foto da Cuca,a foto que pode trazer as memórias de volta.")
										passarTexto()
										escreva("Depois de receber sua memórias, Cuca informa onde estão as crianças.")
										prisao()
										passarTexto()
										limpar()
										
										se(lista_habilidades_por[3] < 35){
											
											
											limpar()
											se(vida == 1 ){
												vida = vida - 1
												vidas()
												}
												senao se(vida > 1){
												escreva("Vocês encontram as crianças, todas felizmente estão bem e\nlogo são entregue as suas famílias.")
												passarTexto()
												limpar()
												imagem_cuca()
												u.aguarde(1000)
												fim()
 												fase_concluida ++
												pare
												}
											
										}
										se(lista_habilidades_por[3] > 35){

											limpar()
											
											escreva("Vocês encontram as crianças, todas felizmente estão bem e\nlogo são entregue as suas famílias.")
											passarTexto()
											limpar()
											imagem_cuca()
											u.aguarde(1000)
											fim()
											fase_concluida ++
											pare
											
												} 
												
                           }
                           
					se(decisao == "2"){

											limpar()
											
                                                       escreva("Você decide usar o raciocínio para enfrentar a Cuca.")
                                                       passarTexto()
                                                       escreva("Com calma, você começa a analisar a situação e o comportamento dela.")
                                                       passarTexto()
                                                       escreva("Você percebe que ela está enfraquecida e desgastada pelos feitiços que\ncertamente usou no súltimos dias.")
                                                       passarTexto()
                                                       escreva("Você nota que ela tem uma fraqueza: uma joia pendurada em seu pescoço.")
                                                       passarTexto()
                                                       escreva("Você se aproxima com cautela, fazendo-a pensar que está se rendendo.")
                                                       passarTexto()
                                                       escreva("Quando Cuca abaixa a guarda, você rapidamente arranca a joia do pescoço dela.")
                                                       passarTexto()
                                                       escreva("A bruxa perde suas forças, e suas garras desaparecem.")
                                                       passarTexto()
                                                       escreva("Com a joia em mãos, você a quebra e arremessa os pedaços para longe,\ndesfazendo-se do poder da Cuca.")
                                                       passarTexto()
                                                       escreva("A bruxa cai de joelhos, parecendo frágil e perdida.")
                                                       passarTexto()
                                                       escreva("Você decide se aproximar e oferecer ajuda em vez de lutar mais.")
                                                       passarTexto()
                                                       escreva("E então ela questiona Miguel, perguntado se ele não se\narrependia de ações do passado.")
									          passarTexto()
						                         escreva("Cuca logo fala sobre a Polaroid da Memória que foi\nresponsável por apagar as memórias da mesma.")
									          passarTexto()
								               escreva("Assim Miguel se vê obrigado a contar toda a verdade.\nA contar sobre o dia em que apagou as memórias da Cuca...")
									          passarTexto()
									          escreva("Que acabou tranformando a Cuca em uma bruxa que só queria fazer mal as pessoas.")
									          passarTexto()
									          escreva("Por isso os personagens fugiram da prisão...\nMiguel é culpado por tudo que aconteceu.")
									          passarTexto()
								               escreva("Miguel se vê em prantos e a culpa toma-o por completo.")
									          passarTexto()
									          escreva("Você fica sem saber o que fazer diante de toda a situação.")
									          passarTexto()
										     escreva("A Cuca faz um pedido, que ela receba as suas memórias de volta e assim\nela dirá onde estão as crianças.")
						                         passarTexto()
								               escreva("Miguel logo retira do bolso a foto da Cuca, a foto que pode trazer\nas memórias de volta.")
								               passarTexto()
                                                       escreva("Cuca revela que antes de se tornar má,era amiga dos moradores da vila.")
                                                       passarTexto()
                                                       escreva("E diz que se arrepende de suas ações e deseja desfazer o mal que causou.")
                                                       passarTexto()
                                                       escreva("Você a ajudou a recuperar parte de sua bondade e humanidade.")
                                                       passarTexto()
                                                       escreva("Com a maldição que a transformava desfeita, a Cuca agradece e informa\nonde iriam encontrar as crianças.")

                                                       limpar()
                                                       se(lista_habilidades_por[5] < 25){

                                                       	se(vida == 1){
                                                       		vida = vida - 1
                                                       		vidas()
                                                       		}
                                                       		senao se (vida > 1){
											passarTexto()
											escreva("Vocês acham as crianças, todas felizmente estão bem e\nlogo são entregue as suas famílias.")
											passarTexto()
											prisao()
											limpar()
											imagem_cuca()
											u.aguarde(1000)
											fim()
											fase_concluida ++
											pare
                                                       		}
											
										}
										se(lista_habilidades_por[5] > 25){
											
											escreva("Vocês acham as crianças, todas felizmente estão bem e\nlogo são entregue as suas famílias.\n")
											passarTexto()
											prisao()
											limpar()
											imagem_cuca()
											u.aguarde(1000)
											fim()
											fase_concluida ++
											pare
											
												} 

										
				                }
							
		           se(fase_concluida == 3){
		           	
						pare
						
						
					}
				senao{
			
					escreva("Você informou um número não esperado, digite novamente! \n")
					u.aguarde(3000)
					limpa()
					
				}
			
			  pare
			  
			}enquanto(decisao != "1" ou decisao != "2")
		
	
	}	
	funcao prisao(){
		
		
		cadeia prisaoo = "0"
		
		faca{

		limpar()
		escreva("Agora você precisa decidir o que vai acontecer com a Cuca:\n")
		escreva("1) Vai para a prisão.\n")
		escreva("2) Fica livre.\n")
		escreva("Digite sua escola: ")
		leia(prisaoo)
		passarTexto()
		
		se(prisaoo == "1"){
			
			escreva("Vocês ligam para a organização e eles levam a cuca...")
			passarTexto()
			limpa()
			pare
			
		}
		se(prisaoo == "2"){
			
			escreva("Assim a Cuca vai para muito longe e nunca mais é vista por ninguém...")
	          passarTexto()
	          limpa()
	          pare	

	          
		}
		senao{

			
			escreva("Você informou um número não esperado, digite novamente! ")
			u.aguarde(1000)
			limpar()
			escreva("Você precisa escolher se vai deixar a Cuca livre ou vai encamilha-la para a prisão:\n")
			
			escreva("1) Vai para a prisão.")
			
			escreva("\n2) Fica livre.")

			escreva("\nDigite sua escola: ")
			leia(prisaoo)
			limpar()
			
	       }
	       
	}enquanto(prisaoo != "1" ou prisaoo != "2" )
		
	}
	funcao vidas(){
	      	se(vida == 0){
	     	escreva("Que pena!!! Você perdeu todas as suas vidas. Agora terá que recomeçar do zero.")
	     	u.aguarde(2000)
			inicio()
			}
		}
	
    funcao NomeJogo(){

          escreva("\n        ▒█████      ███▄ ▄███▓ ██▓  ██████ ▄▄▄█████▓▓█████  ██▀███   ██▓ ▒█████ ")
          u.aguarde(200)
          escreva("\n       ▒██▒  ██▒   ▓██▒▀█▀ ██▒▓██▒▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒▓██▒▒██▒  ██▒")
          u.aguarde(200)
          escreva("\n       ▒██░  ██▒   ▓██    ▓██░▒██▒░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒▒██▒▒██░  ██▒  ")
          u.aguarde(200)
          escreva("\n       ▒██   ██░   ▒██    ▒██ ░██░  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  ░██░▒██   ██░ ")
          u.aguarde(200)
          escreva("\n       ░ ████▓▒░   ▒██▒   ░██▒░██░▒██████▒▒  ▒██▒ ░ ░▒████▒░██▓ ▒██▒░██░░ ████▓▒░")
          u.aguarde(200)
          escreva("\n       ░ ▒░▒░▒░    ░ ▒░   ░  ░░▓  ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░░▓  ░ ▒░▒░▒░   ")
          u.aguarde(200)
          escreva("\n        ░ ▒ ▒░    ░  ░      ░ ▒ ░░ ░▒  ░ ░    ░     ░ ░  ░  ░▒ ░ ▒░ ▒ ░  ░ ▒ ▒░ ")
          u.aguarde(200)
          escreva("\n           ░ ░ ░ ▒     ░      ░    ▒ ░░  ░  ░    ░         ░     ░░   ░  ▒ ░░ ░ ░ ▒  ")     
          u.aguarde(200)
          escreva("\n         ░ ░            ░    ░        ░              ░  ░   ░      ░      ░ ░  ")
          u.aguarde(200)
          escreva("\n                             ▓█████▄  ▄▄▄        ██████  ")
          u.aguarde(200)
          escreva("\n                            ▒██▀ ██▌▒████▄    ▒██    ▒    ")
          u.aguarde(200)
          escreva("\n                             ░██   █▌▒██  ▀█▄  ░ ▓██▄    ")
          u.aguarde(200)
          escreva("\n                            ░▓█▄   ▌░██▄▄▄▄██   ▒   ██▒  ")
          u.aguarde(200)
          escreva("\n                            ░▒████▓  ▓█   ▓██▒▒██████▒▒ ")
          u.aguarde(200)
          escreva("\n                              ▒▒▓  ▒  ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ")
          u.aguarde(200)
          escreva("\n                              ░ ▒  ▒   ▒   ▒▒ ░░ ░▒  ░ ░  ")
          u.aguarde(200)
          escreva("\n                  ░ ░  ░   ░   ▒   ░  ░  ░   ")
          u.aguarde(200)
          escreva("\n                   ██▓    ▓█████ ███▄    █ ▓█████▄  ▄▄▄        ██████   ")
          u.aguarde(200)
          escreva("\n                   ▓██▒    ▓█   ▀ ██ ▀█   █ ▒██▀ ██▌▒████▄    ▒██    ▒  ")
          u.aguarde(200)
          escreva("\n                   ▒██░    ▒███  ▓██  ▀█ ██▒░██   █▌▒██  ▀█▄  ░ ▓██▄      ")
          u.aguarde(200)
          escreva("\n                   ▒██░    ▒▓█  ▄▓██▒  ▐▌██▒░▓█▄   ▌░██▄▄▄▄██   ▒   ██▒ ")
          u.aguarde(500)
          escreva("\n                   ░██████▒░▒████▒██░   ▓██░░▒████▓  ▓█   ▓██▒▒██████▒▒  ")
          u.aguarde(200)
          escreva("\n                   ░ ▒░▓  ░░░ ▒░ ░ ▒░   ▒ ▒  ▒▒▓  ▒  ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░  ")
          u.aguarde(200)
          escreva("\n                   ░ ░ ▒  ░ ░ ░  ░ ░░   ░ ▒░ ░ ▒  ▒   ▒   ▒▒ ░░ ░▒  ░ ░  ")
          u.aguarde(200)
          escreva("\n                   ░ ░      ░     ░   ░ ░  ░ ░  ░   ░   ▒   ░  ░  ░   ")
          u.aguarde(200)
          escreva("\n  ▄▄▄▄    ██▀███  ▄▄▄        ██████  ██▓ ██▓    ▓█████  ██▓ ██▀███  ▄▄▄        ██████    ")
          u.aguarde(200)
          escreva("\n ▓█████▄ ▓██ ▒ ██▒████▄    ▒██    ▒ ▓██▒▓██▒    ▓█   ▀ ▓██▒▓██ ▒ ██▒████▄    ▒██    ▒  ")
          u.aguarde(200)
          escreva("\n ▒██▒ ▄██▓██ ░▄█ ▒██  ▀█▄  ░ ▓██▄   ▒██▒▒██░    ▒███   ▒██▒▓██ ░▄█ ▒██  ▀█▄  ░ ▓██▄      ")
          u.aguarde(200)
          escreva("\n ▒██░█▀  ▒██▀▀█▄ ░██▄▄▄▄██   ▒   ██▒░██░▒██░    ▒▓█  ▄ ░██░▒██▀▀█▄ ░██▄▄▄▄██   ▒   ██▒  ")
          u.aguarde(200)
          escreva("\n ░▓█  ▀█▓░██▓ ▒██▒▓█   ▓██▒▒██████▒▒░██░░██████▒░▒████▒░██░░██▓ ▒██▒▓█   ▓██▒▒██████▒▒ ")
          u.aguarde(200)
          escreva("\n ░▒▓███▀▒░ ▒▓ ░▒▓░▒▒   ▓▒█░▒ ▒▓▒ ▒ ░░▓  ░ ▒░▓  ░░░ ▒░ ░░▓  ░ ▒▓ ░▒▓░▒▒   ▓▒█░▒ ▒▓▒ ▒ ░   ")
          u.aguarde(200)
          escreva("\n ░▒   ░   ░▒ ░ ▒░ ▒   ▒▒ ░░ ░▒  ░ ░ ▒ ░░ ░ ▒  ░ ░ ░  ░ ▒ ░  ░▒ ░ ▒░ ▒   ▒▒ ░░ ░▒  ░ ░  ")
          u.aguarde(200)
          escreva("\n  ░    ░   ░░   ░  ░   ▒   ░  ░  ░   ▒ ░  ░ ░      ░    ▒ ░  ░░   ░  ░   ▒   ░  ░  ░     ")
          u.aguarde(100)
          limpa()
         }
    	
          funcao imagem_cuca(){
          	limpa()
		inteiro cuca = g.carregar_imagem("cuca imagem.png")
      						g.iniciar_modo_grafico(verdadeiro)
								g.definir_dimensoes_janela(1200, 1000)
								  cuca = g.redimensionar_imagem(cuca,700,800,verdadeiro)					
      							g.ocultar_borda_janela()	
      							g.definir_tamanho_texto(80.0)
      							g.definir_fonte_texto("Times New Roman")
      							g.definir_estilo_texto(verdadeiro,verdadeiro,falso)
      									
			enquanto(verdadeiro){
							
							g.definir_cor(g.COR_BRANCO)
							g.desenhar_texto(280,50,"Carta da Cuca")	
							g.desenhar_imagem(250, 150, cuca)
							g.renderizar()
							se(m.algum_botao_pressionado() == verdadeiro){
								g.minimizar_janela()
								pare
							}
			}
				g.encerrar_modo_grafico()
				escreva("Na lenda, a Cuca é retratada como uma velha bruxa com aspecto assustador, com garras afiadas e um nariz \nadunco.\nEla usa uma capa escura e voa pelos céus montados em uma vassoura.\nA Cuca vive em uma caverna escondida, onde prepara poções e feitiços para causar problemas e restringir \no medo entre as pessoas.\nUma das características mais conhecidas da Cuca é seu gosto por sequestrar crianças desobedientes, levando-as \npara sua caverna e aterrorizando-as.\nDiz-se que ela sequestra as crianças para transformá-las em seus ajudantes,\ncumprindo suas tarefas sujas e maléficas.")
			passarTexto()
      			limpa()				
							
	}
	funcao imagem_saci(){
		limpa()
		inteiro saci = g.carregar_imagem("saci imagem.jpg")
	
      						g.iniciar_modo_grafico(verdadeiro)
								g.definir_dimensoes_janela(1200, 1000)
								saci = g.redimensionar_imagem(saci,700,800,verdadeiro)					
      							g.ocultar_borda_janela()	
      							g.definir_tamanho_texto(80.0)
      							g.definir_fonte_texto("Times New Roman")
      							g.definir_estilo_texto(verdadeiro,verdadeiro,falso)
      									
			enquanto(verdadeiro){
								
							g.definir_cor(g.COR_BRANCO)
							g.desenhar_texto(280,50,"Carta do Saci")	
							g.desenhar_imagem(250, 150, saci)
							g.renderizar()
							se(m.algum_botao_pressionado() == verdadeiro){
								g.minimizar_janela()
								pare
							}
			}
				g.encerrar_modo_grafico()
				escreva("Segundo a lenda, o Saci é um ser pequeno, negro e de apenas uma perna, o que o torna muito ágil. \nEle usa um gorro vermelho que lhe confere poderes mágicos e a capacidade de desaparecer \ne aparecer em qualquer lugar.\nO Saci é conhecido por aventar travessuras, como esconder objetos, fazer com que animais se percam e causar \nconfusão entre as pessoas.\nUma das características mais curiosas do Saci é o redemoinho de vento que o acompanha.\nDiz a lenda que, se alguém conseguir capturar o Saci, ele deve ser colocado em um pote com uma peneira, \npois assim ele ficará preso e incapaz de escapar.\nOutra maneira de controlar o Saci é tirar seu gorro vermelho, fazendo com que ele se torne dócil e obedeça \naos comandos de quem o detém.")
      			passarTexto()
      			limpa()						
					
							
	}
	funcao imagem_iara(){
		limpa()
		inteiro iara = g.carregar_imagem("iara imagem.jpg")
      						g.iniciar_modo_grafico(verdadeiro)
      					
								g.definir_dimensoes_janela(1200, 1000)
								  iara = g.redimensionar_imagem(iara,700,800,verdadeiro)					
      							g.ocultar_borda_janela()
      							g.definir_tamanho_texto(80.0)
      							g.definir_fonte_texto("Times New Roman")
      							g.definir_estilo_texto(verdadeiro,verdadeiro,falso)	
      									
			enquanto(verdadeiro){
								
							g.definir_cor(g.COR_BRANCO)
							g.desenhar_texto(280,50,"Carta da Iara")			
							g.desenhar_imagem(250, 150, iara)
							g.renderizar()
							se(m.algum_botao_pressionado() == verdadeiro){
								g.minimizar_janela()
								pare
							}
							
			}
			g.encerrar_modo_grafico()
			escreva("A lenda diz que, ela é representada como uma mulher de beleza incomparável, com cabelos longos e negros, \npele clara e olhos hipnotizantes.\nEla é uma sereia encantadora e sedutora que vive nos rios e nas águas da Amazônia.\nSua beleza hipnotizante e sua voz melodiosa são capazes de atrair os homens para as terapias das águas, \nonde ela os envolve com seu canto e encanto.\nDiz-se que a Iara costuma surgir nas margens dos rios ou cachoeiras, chamando os homens com sua canção \nsedutora.\nAqueles que caem em seu feitiço ficam fascinados e irresistivelmente atraídos para dentro da água, \nonde nunca mais são vistos novamente.")
			passarTexto()
      			limpa()	
							
							
	}
	funcao fim(){
		escreva("\n ▄▄▄██▀▀▀▒█████    ▄████  ▒█████   ")
		u.aguarde(100)                                         
		escreva("\n   ▒██  ▒██▒  ██▒ ██▒ ▀█▒▒██▒  ██▒ ") 
		u.aguarde(100)                                        
		escreva("\n   ░██  ▒██░  ██▒▒██░▄▄▄░▒██░  ██▒ ")   
		u.aguarde(100)                                      
		escreva("\n▓██▄██▓ ▒██   ██░░▓█  ██▓▒██   ██░ ") 
		u.aguarde(100)                                        
		escreva("\n ▓███▒  ░ ████▓▒░░▒▓███▀▒░ ████▓▒░ ") 
		u.aguarde(100)                                        
		escreva("\n ▒▓▒▒░  ░ ▒░▒░▒░  ░▒   ▒ ░ ▒░▒░▒░  ") 
		u.aguarde(100)                                        
		escreva("\n ▒ ░▒░    ░ ▒ ▒░   ░   ░   ░ ▒ ▒░  ")
		u.aguarde(100)                                         
		escreva("\n ░ ░ ░  ░ ░ ░ ▒  ░ ░   ░ ░ ░ ░ ▒   ")
		u.aguarde(100)                                         
		escreva("\n ░   ░      ░ ░        ░     ░ ░   ")    
		u.aguarde(100)                                     
		escreva("")                                          
		u.aguarde(100)                                 
		escreva("\n ▄████▄   ▒█████   ███▄    █  ▄████▄   ██▓     █    ██  ██▓▓█████▄  ▒█████  ")
		u.aguarde(100)
		escreva("\n▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▒██▀ ▀█  ▓██▒     ██  ▓██▒▓██▒▒██▀ ██▌▒██▒  ██▒")
		u.aguarde(100)
		escreva("\n▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒▓█    ▄ ▒██░    ▓██  ▒██░▒██▒░██   █▌▒██░  ██▒")
	     u.aguarde(100)
		escreva("\n▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒▒▓▓▄ ▄██▒▒██░    ▓▓█  ░██░░██░░▓█▄   ▌▒██   ██░")
		u.aguarde(100)
		escreva("\n▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░▒ ▓███▀ ░░██████▒▒▒█████▓ ░██░░▒████▓ ░ ████▓▒░")
		u.aguarde(100)
		escreva("\n░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░ ░▒ ▒  ░░ ▒░▓  ░░▒▓▒ ▒ ▒ ░▓   ▒▒▓  ▒ ░ ▒░▒░▒░ ")
		u.aguarde(100)
		escreva("\n  ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░  ░  ▒   ░ ░ ▒  ░░░▒░ ░ ░  ▒ ░ ░ ▒  ▒   ░ ▒ ▒░ ")
		u.aguarde(100)
		escreva("\n░        ░ ░ ░ ▒     ░   ░ ░ ░          ░ ░    ░░░ ░ ░  ▒ ░ ░ ░  ░ ░ ░ ░ ▒  ")
		u.aguarde(100)
		escreva("\n░ ░          ░ ░           ░ ░ ░          ░  ░   ░      ░     ░        ░ ░  ")
		u.aguarde(100)
		escreva("\n░                            ░                              ░          ")
		u.aguarde(100)
		
		
		}
    
						
					
		
}
