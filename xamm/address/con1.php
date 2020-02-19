<html>
<body>
<?php
$name=$_POST['name'];
$roll=$_POST['roll'];
$dept=$_POST['dept'];

class store{
public function dbconnect(){
$con=mysql_connect("localhost","root");
if(!$con){

die('could not connect'.mysql_error());
}
mysql_select_db("studentregis",$con);
}
public function insertdb($name,$roll,$dept){

mysql_query("INSERT INTO student VALUES('$name','$roll','$dept')");
echo "insert successfully";
}
}

//$s=new show;
//$s->takevalue($name,$roll,$dept);
$obj1=new store;
$obj1->dbconnect();
$obj1->insertdb($name,$roll,$dept);
?>
</br>
<a href="show.php">Show</a>
<a href="display1.php">Display</a>
</body>
</html>