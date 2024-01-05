<?php 
    $numeros = [
       0 => [1,4,5],
       1 => [4,8,9],
       2 => [3,7,9]
    ];
    for($linha=0; $linha < 3 ; $linha++) { 
        for ($coluna=0; $coluna < 3; $coluna++) { 
            print($numeros[$linha][$coluna]." ");
        }
        print("\n");
    }
?>
