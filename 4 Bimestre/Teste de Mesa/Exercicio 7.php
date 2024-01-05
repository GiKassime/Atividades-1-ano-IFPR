<?php 
    $numeros = array();
    $soma = 0;
    for($linha=0; $linha <= 1 ; $linha++) { 
        print("\nLinha". $linha+1);
        for ($coluna=0; $coluna <= 4; $coluna++) { 
            $numeros[$linha][$coluna] = readline("\nDigite o ". $coluna +1 ." número");
        }
    }
    for($linha=0; $linha <= 1 ; $linha++) { 
        for ($coluna=0; $coluna <= 4; $coluna++) { 
            print($numeros[$linha][$coluna]." ");
        }
        print("\n");
    }
    
?>
