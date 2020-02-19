
<?php
  
  class Bill {

  		public $dinner =20;
  		public $dessert = 5;
  		public $colDrink = 3;

  		public $bill;

  		public function dinner($person){
  			$this->bill+= $this->dinner * $person;

  			return $this;
  		}
  		public function dessert($person){
  			$this->bill+=$this->dessert* $person;

  			return $this;
  		}
  		
  		public function colDrink ($person){
  			$this->bill+=$this->colDrink * $person;

  			return $this;
  		}

  }
  $var = new Bill();
  echo  $var->dinner(2)->dessert(2)->colDrink(2)->bill;