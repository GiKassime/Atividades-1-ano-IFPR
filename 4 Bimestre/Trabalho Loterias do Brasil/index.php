<?php
$lista_premio = array();
$premios = '';
$lista_cada_aposta_escolha = array();
$cont_apostas = 0;
$user = [
    "numeros_escolhidos" => 0
];
$lista_todas_as_apostas = array();
$numeros_oficiais = [];


$sobre_jogo = [

    'MegaSena' => ["min_num_jogo" => 1, "max_num_jogo" => 60, "min_num_aposta" => 6, "max_num_aposta" => 20,0 => "Mega Sena", ],
    'Quina' => ["min_num_jogo" => 1, "max_num_jogo" => 80, "min_num_aposta" => 5, "max_num_aposta" => 15],
    'Lotomania' => ["min_num_jogo" => 1, "max_num_jogo" => 100, "min_num_aposta" => 50, "max_num_aposta" => 50],
    'Lotofacil' => ["min_num_jogo" => 1, "max_num_jogo" => 25, "min_num_aposta" => 15, "max_num_aposta" => 20],
    'Nomes' => [1 => "Mega Sena", 2 => "Quina", 3 => "Lotomania", 4 => "Lotofácil"],
    'Sorteio' => [1 => 6, 2 => 5, 3 => 20, 4 => 15],

];

 
Interacao_Usuario($sobre_jogo,$user,$lista_todas_as_apostas,$cont_apostas,$numeros_oficiais,$premios);


function Interacao_Usuario(&$sobre_jogo,&$user,&$lista_todas_as_apostas,&$cont_apostas,&$numeros_oficiais,&$premios){
    $resposta = 0;
    while ($resposta != 5) {
        Menu();

            $resposta = (int)readline("* Digite aqui a sua escolha:");
            switch ($resposta) {
                case 1:
                //mega sena
                    
                    Quantidade_dezenas_e_apostas($sobre_jogo['MegaSena']["min_num_aposta"],$sobre_jogo['MegaSena']["max_num_aposta"],$user,$sobre_jogo['MegaSena']["min_num_jogo"],$sobre_jogo['MegaSena']["max_num_jogo"],$cont_apostas,$lista_todas_as_apostas, $numeros_oficiais,$sobre_jogo,$resposta,$premios,$resposta);
                    
                    print("\n\nNÚMEROS OFICIAIS ".strtoupper($sobre_jogo['Nomes'][$resposta]). " --> ");
                    print(implode(" ",$numeros_oficiais));
                    $preco =  preco($resposta,$user);
                    print ($premios);
                    print "\nO preço que você pagara pela a aposta é R$ " . number_format($preco,2,',',".") . "\n";
                    print("\nObrigado por jogar\nFINALIZANDO O JOGO........");
                    die();
                    break;
                
                case 2:
                    //quina
                   
                    Quantidade_dezenas_e_apostas($sobre_jogo['Quina']["min_num_aposta"],$sobre_jogo['Quina']["max_num_aposta"],$user,$sobre_jogo['Quina']["min_num_jogo"],$sobre_jogo['Quina']["max_num_jogo"],$cont_apostas,$lista_todas_as_apostas,$numeros_oficiais,$sobre_jogo,$resposta,$premios,$resposta);
                    
                    print("\n\nNÚMEROS OFICIAIS ".strtoupper($sobre_jogo['Nomes'][$resposta]). " --> ");
                    print(implode(" ",$numeros_oficiais));
                    $preco =  preco($resposta,$user);
                    print ($premios);
                    print "\nO preço que você pagara pela a aposta é R$ " . number_format($preco,2,',',".") . "\n";
                    print("\nObrigado por jogar\nFINALIZANDO O JOGO........");
                    die();
                    break;
                
                case 3:
                    //lotomania
                    
                    Quantidade_dezenas_e_apostas($sobre_jogo['Lotomania']["min_num_aposta"],$sobre_jogo['Lotomania']["max_num_aposta"],$user,$sobre_jogo['Lotomania']["min_num_jogo"],$sobre_jogo['Lotomania']["max_num_jogo"],$cont_apostas,$lista_todas_as_apostas, $numeros_oficiais,$sobre_jogo,$resposta,$premios,$resposta);
                
                   
                    print("\n\nNÚMEROS OFICIAIS ".strtoupper($sobre_jogo['Nomes'][$resposta]). " --> ");
                    print(implode(" ",$numeros_oficiais));
                    $preco =  preco($resposta,$user);
                    print ($premios);
                    print "\nO preço que você pagara pela a aposta é R$ " . number_format($preco,2,',',".") . "\n";
                    print("\nObrigado por jogar\nFINALIZANDO O JOGO........");
                    die();
                    break;
        
                case 4:
                    //lotofácil
                    Quantidade_dezenas_e_apostas($sobre_jogo['Lotofacil']["min_num_aposta"],$sobre_jogo['Lotofacil']["max_num_aposta"],$user,$sobre_jogo['Lotofacil']["min_num_jogo"],$sobre_jogo['Lotofacil']["max_num_jogo"],$cont_apostas,$lista_todas_as_apostas, $numeros_oficiais,$sobre_jogo,$resposta,$premios,$resposta);
                             
                    
                    print("\n\nNÚMEROS OFICIAIS ".strtoupper($sobre_jogo['Nomes'][$resposta]). " --> ");
                    print(implode(" ",$numeros_oficiais));
                    $preco =  preco($resposta,$user);
                    print ($premios);
                    print "\nO preço que você pagara pela a aposta é R$ " . number_format($preco,2,',',".") . "\n";
                    print("\nObrigado por jogar\nFINALIZANDO O JOGO........");
                    die();

                    break;
                    case 5:
                        print "\nFINALIZANDO JOGO...";
                         break;
                             
                             
                     default:
                         print "\nOpção inválida, Tente novamente\n";
                         break;
            }   
        }  
} 
function Quantidade_dezenas_e_apostas(int $min_num_aposta, int $max_num_aposta, &$user,$min_num_jogo,$max_num_jogo,&$cont_apostas,&$lista_todas_as_apostas, &$numeros_oficiais,&$sobre_jogo,$jogo,&$premios,$resposta){
    
    print("\nO jogo ".strtoupper($sobre_jogo['Nomes'][$jogo])." tem de ".$min_num_jogo." a ".$max_num_jogo. " números, e o usuário pode apostar de ".$min_num_aposta." a ".$max_num_aposta." números\nO SORTEIO OFICIAL TEM ".$sobre_jogo['Sorteio'][$jogo]." NÚMEROS \n\n");
    $quantidade_de_dezenas = (int)readline("\n\nDigite quantos números quer apostar de ". $min_num_aposta. " a ". $max_num_aposta .":");
    print("\n");
    $quantidade_de_apostas = (int)readline("\nDigite quantas apostas de ". $quantidade_de_dezenas ." números irá comprar :");
    print("\n");

    if($quantidade_de_dezenas < $min_num_aposta || $quantidade_de_dezenas > $max_num_aposta || is_int($quantidade_de_dezenas) == false ||is_int($quantidade_de_apostas) == false ){

        print("Inválido, tente outra vez\n");
        return Quantidade_dezenas_e_apostas($min_num_aposta,$max_num_aposta,$user,$min_num_jogo,$max_num_jogo,$cont_apostas,$lista_todas_as_apostas,$numeros_oficiais,$sobre_jogo,$jogo,$premios,$resposta);

    }else{
        
        $user = array("dezenas_user" => $quantidade_de_dezenas, "apostas_user" => $quantidade_de_apostas, "numeros_escolhidos" => 0);
        sorteia_oficial($min_num_jogo,$max_num_jogo,$user,$numeros_oficiais);
        return Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$sobre_jogo,$premios,$numeros_oficiais,$resposta);
    }
 

}   
                   
function Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,&$user,&$cont_apostas,&$lista_todas_as_apostas,&$sobre_jogo,&$premios,&$numeros_oficiais,$resposta){

    
$respostas_aceitas = array(1,2,3);
$resposta_usuario_num = 0;

if($cont_apostas == $user["apostas_user"]  ){
    print("\nESSAS SÃO TODAS AS SUAS APOSTAS\n");
    print(implode("\n",$lista_todas_as_apostas));
}else{
print("\n");
echo("APOSTA NÚMERO ".($cont_apostas +1)."\n");
print("1 - Sortear todos os números\n2 - Escolher todos os números\n3 - Sortear alguns números e escolher os outros\n");
$resposta_usuario_num = (int)readline("Digite aqui : ");
While(in_array($resposta_usuario_num, $respostas_aceitas) == false || $cont_apostas == $user["apostas_user"] ){
    print("1 - Sortear todos os números\n2 - Escolher todos os números\n3 - Sortear alguns e sortear alguns números\n");
    $resposta_usuario_num = (int)readline("Digite aqui : ");
    }

       switch($resposta_usuario_num){

              case 1 :
               

                sorteio_todos($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$premios,$numeros_oficiais,$resposta);
                
              break;
              case 2:
                
                Escolher_numeros($min_num_jogo,$max_num_jogo,$user,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);
            
              break;

              case 3:
                sorteia_e_escolhe($min_num_jogo,$max_num_jogo,$user,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);
                
                
              break;
              default:
                echo("Valor inválido!!\n");
                return Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$sobre_jogo,$numeros_oficiais,$resposta);
              break;
       }
       
    }
       
}

function sorteia_e_escolhe($min_num_jogo,$max_num_jogo,&$user,&$lista_todas_as_apostas,&$cont_apostas,&$premios,&$numeros_oficiais,$resposta){
    $user["numeros_escolhidos"] = 0;
    $lista_cada_aposta_escolha= array();
    while($user["numeros_escolhidos"] < $min_num_jogo|| $user["numeros_escolhidos"] > $user["dezenas_user"] ){
        $user["numeros_escolhidos"] = (int)readline("Quantos números deseja escolher ( o resto será sorteado ) : ");
    }
        $inteiro = false;
        $verifica = false;
                do {
                    
                   
                   
                        $lista_cada_aposta_escolha = explode(' ', $lista_cada_aposta_escolha= readline("Digite os ". $user["numeros_escolhidos"]. " números a apostar com espaçamento entre eles:"));
                        if(sizeof($lista_cada_aposta_escolha) == $user["dezenas_user"] || sizeof($lista_cada_aposta_escolha) == $user["numeros_escolhidos"]){
                            $verificador_de_repeticao = array_count_values($lista_cada_aposta_escolha);
                            $repetidos = array();
                            $inteiro = true;
                            foreach($verificador_de_repeticao as $key => $value){
                                if($value > 1){
                                array_push($repetidos, (string)$key) ;
                                }
                                if(empty($repetidos) == false){
                                    echo 'valor repetido: '. implode(', ',$repetidos) ."\n";
                                    echo 'Digite novamente os números da aposta, sem repetir!!!: ';
                                    $inteiro = false;
                                    $verifica = false;
                                }
                                if($key < $min_num_jogo || $key > $max_num_jogo || is_int($key) == false){
                                    print("Digite somente números inteiros de ".$min_num_jogo." a ". $max_num_jogo. " e com espaçamento entre eles\n") ;
                                    $inteiro = false;
                                }
                        
                            }
                            if($inteiro == true ){
                       
                               
                                $verifica = true;
                                
                               
                                
                                
                            }
                        }else{
                        print("\nNão foi informado a quantidade certa de números!!");
                       
                        }
                    }while($verifica != true);
            if($user["dezenas_user"] != sizeof($lista_cada_aposta_escolha)){
            
            for ($i = sizeof($lista_cada_aposta_escolha); $i < $user["dezenas_user"] ; $i++) {
                
                $numeros = mt_rand($min_num_jogo,$max_num_jogo);
                if(in_array($numeros, $lista_cada_aposta_escolha)){
                    $i--;
                }else{
                    array_push($lista_cada_aposta_escolha,$numeros);
                }
            }
        }
       
        premio($numeros_oficiais,$resposta,$lista_cada_aposta_escolha,$premios,$user,$cont_apostas);
        
        $cont_apostas ++;
        $lista_todas_as_apostas[] = "\nAPOSTA NÚMERO ". $cont_apostas . " --> " . implode(" ",$lista_cada_aposta_escolha);
        return Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);

}  
 
    

function sorteia_oficial($min_num_jogo,$max_num_jogo,&$user,&$numeros_oficiais){

   
        for ($i = sizeof($numeros_oficiais); $i < $user["dezenas_user"] ; $i++){
            
            $numeros = mt_rand($min_num_jogo,$max_num_jogo);
            if(in_array($numeros, $numeros_oficiais)){
                $i--;
            }else{
                array_push($numeros_oficiais,$numeros);
            }
        }
            
    }
function sorteio_todos($min_num_jogo,$max_num_jogo,&$user,&$cont_apostas,&$lista_todas_as_apostas,&$premios,&$numeros_oficiais,$resposta){
    
    
    $lista_cada_aposta = array();
    for ($i = sizeof($lista_cada_aposta); $i < $user["dezenas_user"] ; $i++) {
        
        $numeros = mt_rand($min_num_jogo,$max_num_jogo);
        if(in_array($numeros, $lista_cada_aposta)){
            $i--;
        }else{
            array_push($lista_cada_aposta,$numeros);
        }
    }
        
        $cont_apostas ++;
        $lista_todas_as_apostas[] = "\nAPOSTA NÚMERO ". $cont_apostas . " --> " . implode(" ",$lista_cada_aposta);
        premio($numeros_oficiais,$resposta,$lista_cada_aposta,$premios,$user,$cont_apostas);
        return Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);
    
}
function Escolher_numeros($min_num_jogo,$max_num_jogo,&$user,&$lista_todas_as_apostas,&$cont_apostas,&$premios,&$numeros_oficiais,$resposta){
   
    
    $lista_cada_aposta = array();
    $inteiro = false;
    $verifica = false;
            do {
                
               
               
                    $lista_cada_aposta = explode(' ', $lista_cada_aposta = readline("Digite os ". $user["dezenas_user"]. " números a apostar com espaçamento entre eles:"));
                
                    if(sizeof($lista_cada_aposta) == $user["dezenas_user"] || sizeof($lista_cada_aposta) == $user["numeros_escolhidos"]){
                        $verificador_de_repeticao = array_count_values($lista_cada_aposta);
                        $repetidos = array();
                        $inteiro = true;
                        foreach($verificador_de_repeticao as $key => $value){
                            if($value > 1){
                            array_push($repetidos, (string)$key) ;
                            }
                            if(empty($repetidos) == false){
                                echo 'valor repetido: '. implode(', ',$repetidos) ."\n";
                                echo 'Digite novamente os números da aposta, sem repetir!!!: ';
                                $inteiro = false;
                                $verifica = false;
                            }
                            if($key < $min_num_jogo || $key > $max_num_jogo || is_int($key) == false){
                                print("Digite somente números inteiros de ".$min_num_jogo." a ". $max_num_jogo. " e com espaçamento entre eles\n") ;
                                $inteiro = false;
                            }
                    
                    } 
                    if($inteiro == true ){
                       
                            
                            
                            premio($numeros_oficiais,$resposta,$lista_cada_aposta,$premios,$user,$cont_apostas);
                            $cont_apostas ++;
                            $lista_todas_as_apostas[] = "\nAPOSTA NÚMERO ". $cont_apostas . " --> " . implode(" ",$lista_cada_aposta);
                            $verifica = true;
                            Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);
                        }
                        
                       
                        
                        
                    }else{
                    print("\nNão foi informado a quantidade certa de números!!");
                   
                    }
                }while($verifica != true);
                Interacao_user_escolha_numeros($min_num_jogo,$max_num_jogo,$user,$cont_apostas,$lista_todas_as_apostas,$cont_apostas,$premios,$numeros_oficiais,$resposta);
                
            }       
           
                             
                                    
                                    
              

function Menu(){

    print("***********************************************\n");
    print("***********************************************\n");
    print("* Loterias do Brasil                          *\n");
    print("* 1 - Mega-Sena                               *\n");
    print("* 2 - Quina                                   *\n");
    print("* 3 - Lotomania                               *\n");
    print("* 4 - Lotofácil                               *\n");
    print("* 5 - Sair                                    *\n");
    print("***********************************************\n");

    
}

            
function premio(&$numeros_oficiais,$resposta,$lista,&$premios,&$user,&$cont_apostas){
       
        $comparador = array_intersect($numeros_oficiais,$lista);
        $quantidade_semelhantes = count($comparador);
        $premios .= "\n\nAPOSTA NÚMERO ". $cont_apostas."-->";
        switch ($resposta) {
            case 1:
                if ($quantidade_semelhantes == 4) {
                    $premios .= "Você não está milionário (a), mas acertou a QUADRA!!\n";
                }
    
                elseif ($quantidade_semelhantes == 5) {
                    $premios .= "Você não está milionário (a), mas acertou a QUINA!!\n";
                }
    
                elseif ($quantidade_semelhantes == 6) {
                    $premios .= "PARABÉNSS!!! Você é o mais novo milionário (a) do pedaço, use seu dinheiro com sabedoria!!\n";
                } elseif ($quantidade_semelhantes <  4) {
                    $premios .= "Chora nene voce acertou " . $quantidade_semelhantes. "\n";
                }
                break;
            
            case 2:
                if ($quantidade_semelhantes == 5) {
                    $premios .= "PARABÉNS!!! Você ganhou a QUINA e ganhou uma boa grana, use seu dinheiro com sabedoria!!\n";
                }elseif ($quantidade_semelhantes < 5) {
                    $premios .= "Chora nene voce acertou ". $quantidade_semelhantes. "\n";
                }
            
                break;
    
            case 3:
                if ($quantidade_semelhantes == 0) {
                    $premios .= "Caro usuário, entre 50 números você não consegue acerto nenhum o problema certamente está em você!!\n";  //ass: ana ju, bjs
                }
    
                elseif ($quantidade_semelhantes == 15) {
                    $premios .= "Você conseguiu 15 acertos\n";
                }
                  elseif ($quantidade_semelhantes == 16){
                    $premios .= "Você conseguiu 16 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 17) {
                    $premios .= "Você conseguiu 17 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 18) {
                    $premios .= "Você conseguiu 18 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 19){
                    $premios .= "Você conseguiu 19 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 20) {
                    $premios .= "PARABÉNS!! você acertou 20 NÚMEROS!!, use seu dinheiro com sabedoria!!\n";
                }elseif ($quantidade_semelhantes < 15) {
                    $premios .= "Chora nene voce pelomenos acertou ". $quantidade_semelhantes . "\n";
                }
                break;
    
            case 4:
                if ($quantidade_semelhantes == 0) {
                    $premios .= "Caro usuário, procure um padre urgentemente pois não é normal ser tão azarado assim na vida!!\n"; //ass: ana ju, bjs;
                }elseif ($quantidade_semelhantes <  11) {
                    $premios .= "Chora nene voce acertou ". $quantidade_semelhantes. "\n";
                }
    
                elseif ($quantidade_semelhantes == 11) {
                    $premios .= "Você conseguiu 11 acertos\n";
                }
                elseif ($quantidade_semelhantes == 12) {
                    $premios .= "Você conseguiu 12 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 13) {
                    $premios .= "Você conseguiu 13 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 14) {
                    $premios .= "Você conseguiu 14 acertos\n";
                }
    
                elseif ($quantidade_semelhantes == 15) {
                    $premios .= "PARABÉNS!! você acertou 15 NÚMEROS!!, use seu dinheiro com sabedoria!!\n";
                }
                break;
            
            default:
                break;
        }
        return $premios;
        
    }
    



function preco($resposta, &$user){
    $preco = 
    [1 => [6 =>  6, 7 => 35, 8 => 140, 9 => 420, 10 => 1,050,  11 => 2,310, 12 => 4,620, 13 => 8,580, 14 => 15,015, 15 => 25,025, 16 => 40,040, 17 => 61,880, 18 => 92,820, 19 => 135,660, 20 => 193,800  ], 

    2 => [ 5 =>  2.50, 6 => 15, 7 => 52.50, 8 => 140, 9 => 315, 10 => 630, 11 => 1,155, 12 => 1,980,   13 => 3,217 , 14  => 5,005, 15 => 7,507 ], 

    3 => [50 =>  3], 
    
    4 => [ 15 =>  3, 16  => 48, 17  => 408, 18 => 2,448, 19 => 11,628, 20 => 46,512  ] ]; 
 
         return ($preco[$resposta][$user["dezenas_user"]])*$user["apostas_user"];
 }
