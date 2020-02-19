 <?php

 	/**
 	*Format Class
 	*/

 	class Format {

 		public function formatDate($date){

 			return date('l jS \of F Y h:i:s A', strtotime ($date));
 		}

 		public function textnote($text, $limit = 400){

 			$text = $text. " ";
 			$text = substr($text, 0, $limit);
 			$text = $text."......";
 			return $text;

 		}
 	}
 ?>