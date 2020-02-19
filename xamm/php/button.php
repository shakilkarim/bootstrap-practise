<!DOCTYPE html>  
<html>
<head>
</head>
<body>
<?php

  if(isset($_POST['submit'])){
    $name   = $_POST['name'];
    $genders = $_POST['gender'];
    $dept    = $_POST['dep'];
    $coder   = $_POST['coder'];
    

?>

<table class="tblone">
     <tr>
       <td colspan="2" align="center">Output</td>
     </tr>
     <tr>
       <td>Name</td>
       <td><?php echo $name;?></td>
     </tr>
     <tr>
       <td>Gender</td>
       <td>
         <?php
            if($genders == "Male"){ ?>
             <td><?php echo "Male";?></td> 
          <?php }elseif($gender == "Female"){ ?>
             <td><?php echo "Female";?></td>      
        <?php
      }  
         ?>
       </td>
     </tr>
  
   <tr>
       <td>Department</td>
       <td>
         <?php
            if( $dept  == 'CSE'){ ?>
             <td><?php echo 'CSE';?></td> 
          <?php }elseif( $dept  == 'Physics'){ ?>
             <td><?php echo 'Physics';?></td>      
        <?php
      } elseif( $dept  == "Maths"){ ?>
             <td><?php echo "Maths";?></td>   
         ?>
         <?php }elseif( $dept  == "bio"){ ?>
             <td><?php echo "bio";?></td>   

         <?php }?>
       </td>
     </tr>
     <tr>
       <td>Coder</td>
       <td>
         <?php echo $coder;?>
       </td>
     </tr>
</table>
 <?php } ?>

<form action="" method="POST" name="myform">
    <table>
          <tr>
            <td>Name :</td>
            <td><input type="text" name="name" required="1"></td>
          </tr>
          <tr>
            <td>Gender :</td>
            <td>
              <input type="radio" name="gender" value="Male">Male
              <input type="radio" name="gender" value="Female">Female
            </td>
          </tr>
          <tr>
            <td>Department :</td>
            <td>
              <input type="checkbox" name="dep" value="CSE">CSE
              <input type="checkbox" name="dep" value="Physics">Physics
              <input type="checkbox" name="dep" value="Maths">Maths
              <input type="checkbox" name="dep" value="bioligy">Biology
            </td>
          </tr>
          <tr>
            <td>Coder :</td>
            <td>
              <select name="coder" required="1">
                <option value="">select One</option>
                <option value="php">php</option>
                <option value="java">java</option>
                <option value="c#">C#</option>
              </select>
            </td>
          </tr>
          <tr>
          
            <td>
              <input type="submit" name="submit" value="submit">
              <input type="reset" value="clear">
          </td>
          </tr>
    </table>
  </form>

</body>
</html>