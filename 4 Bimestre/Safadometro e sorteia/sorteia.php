<?php
    $num = (int) rand(0,10);
    $chute = (int) readline("Digite um número \n");
while($chute != $num){     
            if($chute < $num){
                echo "\nVoce Perdeu, número baixo";
            }else{
                echo "\nVoce Perdeu, numero alto";
            }
           
        $chute = (int) readline("\nDigite outro número \n");
}     
echo "Fim de jogo, Voce venceu, o número era ". $num. "\n";

    
