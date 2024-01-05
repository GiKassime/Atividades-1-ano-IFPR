<?php 
    $numeros = [
       0 => [1,4,5],
       1 => [4,8,9],
       2 => [3,7,9]
    ];
    $soma = 0;
    for($linha=0; $linha < 3 ; $linha++) { 
        for ($coluna=0; $coluna < 3; $coluna++) { 
            $soma += $numeros[$linha][$coluna];
        }
    }
    print("O resultado da soma da matriz foi : ". $soma);
?>
