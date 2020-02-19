<?php
function is_Power_of_three($n)
{
      $x = $n;
      while ($x % 3 == 0) {
      $x /= 3;
     }
       
	if($x == 1)
    {
		return "$n is power of 3";
    }
    else
    {
		return "$n is not power of 3";
    }
  
}
print_r(is_Power_of_three(9)."\n");
print_r(is_Power_of_three(81)."\n");
print_r(is_Power_of_three(21)."\n");
?>
