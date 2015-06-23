<?php

  function add($number1, $number2) {
    $number1 = is_null ($number1) ? 0 : $number1;
    $number2 = is_null ($number2) ? 0 : $number2;

    return ($number1 + $number2);
  }

  $x = "4";
  $y = "5";

  # 'test' for taking no arguments: returns 0
  print add()."\n";

?>