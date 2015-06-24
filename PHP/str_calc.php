<?php

  error_reporting(0);

  function add($number1, $number2) {

    $arguments = func_get_args();
    echo $arguments[2];



    $number1 = is_null ($number1) ? 0 : $number1;
    $number2 = is_null ($number2) ? 0 : $number2;

    return ($number1 + $number2);
  }

  $x = "4";
  $y = "5";

  # 'test' for taking no arguments: returns 0
  print add()."\n";

  # 'test' for taking empty string: returns 0
  print add("")."\n";

  # in order to add an unknown number of arguments
  # 'test' for being able to access a 3rd argument - in: returns 6
  print add(4,5,6)."\n";
?>