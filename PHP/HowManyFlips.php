<?php
  $SequenceLength = !empty($argv[1]) ? $argv[1] : 3;
  $heads = 0;
  $flips = 0;
  while($heads < $SequenceLength) {
    $flip = rand(0,1);
    $flips ++;
    if ($flip == 1) {
      $heads ++;
      print "H";
    } else {
      $heads = 0;
      print "T";
    }
  }
  $flips = $flips - ($SequenceLength - 1);
  if ($SequenceLength > 1) {
    print " A sequence of $SequenceLength heads started at flip No.$flips ";
  } else {
    print " The first head occurred at flip No.$flips ";
  }
?>