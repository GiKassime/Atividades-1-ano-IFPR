<?php

$palavra = readline("\nInforme a um texto ");
$caractere = readline("\nInforme o caractere que deseja excluir desse texto:");


ExcluiCaractere($palavra,$caractere);
function ExcluiCaractere(&$string, $caractere){
        $resultado = str_replace($caractere, '', $string);
        $resultado = str_replace(strtoupper($caractere), '', $resultado);

        print "\nAssim ficou sua frase sem a letra'".$caractere ."': ". $resultado;
        $quantidade = substr_count($string, $caractere);
        $quantidade += substr_count($string, strtoupper($caractere));

        print "\nA quantidade de vezes que o caracteres ". "'" . $caractere . "'" . " aparece na palavra " . "'" . $string. "'" . " é " . $quantidade;
}
