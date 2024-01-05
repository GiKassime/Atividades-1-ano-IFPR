<?php
  
   $dia = $_REQUEST['campo_dia'];
   $mes = $_REQUEST['campo_mes'];
   $ano = $_REQUEST['campo_ano'];
   

   safadometro($dia, $mes , $ano);

  function safadometro(int $dia, int $mes, int $ano){
    
    $safadeza = 0;

    $anjeza = 0;

    $anjeza = 100 - $safadeza;

    $safadeza = somatorio($mes) + ($ano/1000) * (50 - $dia);

    print "$anjeza% anjo perfeito, mas aquele $safadeza% não anjo ";

}
     function somatorio(int $mes){
       
       
      $soma = 0;

      $soma = $mes * (($mes + 1)/ 2);

       return $soma;

     }
   
