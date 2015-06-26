<?php

  error_reporting(0);

  function add($number1, $number2) {

    $arguments = func_get_args();
    return array_sum($arguments);
  }

  # 'test' for taking no arguments: returns 0
  print add()."\n";

  # 'test' for taking empty string: returns 0
  print add("")."\n";

  # 'test' for 1 argument returning itself: returns 5
  # 'test' for being able to add 2 arguments: returns 3
  # 'test' for being able to add 3 arguments: returns 6
  # 'test' for being able to add 5 arguments: returns 150
  print add("5")."\n";
  // print add("1,2")."\n";
  // print add("1, 2, 3")."\n";
  // print add("10, 20, 30, 40, 50")."\n";

  # can accept new lines between numbers: returns 6

  // print add("1\n2,3")
?>