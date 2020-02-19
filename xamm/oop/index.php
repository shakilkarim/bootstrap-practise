<?php
include_once('classAutoloader.php');
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>Buy my products</title>

  <!-- Bootstrap -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
  <!-- Custom -->
  <link href="css/style.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
 <script   src="https://code.jquery.com/jquery-2.2.4.min.js"   integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="   crossorigin="anonymous"></script>

<script type="text/javascript" src = "js/ajaxMail.js" > </script>
</head>
<body onload="process();" >

  <?php include('parts/nav.php'); ?>

  <header class=" header  " >
    <div class="wrap" >

      <?php if(isset($_SESSION['messageMail']) and (!isset($_SESSION['customer']))  ): ?>

        <h3 class='text-center' > ! <?php echo $_SESSION['messageMail']?> !</h3>
      <?php endif;?>

      <h1>Welcome </h1> 
      <p >Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam condimentum lectus eget convallis pharetra. In hac habitasse platea dictumst. Nunc hendrerit eget lectus eget aliquet.</p>

    </div>
  </header>

  <div class="wrap" >

    <?php if(isset($_SESSION['customer'])  ): ?>

      <?php   echo " <h3> Welcome". $_SESSION['customer']->getName() ."</h3>" ;?>

      <h4>Carry on to store</h4>
      <a href="store.php">  <button type="button" class="btn btn-primary"  >  Store </button></a>
      <?php else : ?> 
      </div>
      <section class="login wrap "  >
        <h3 class=" text-center sectionTitle ">Sign In and buy my products</h3>
        <div class="row">
          <div class="col-md-6">
            <h4 class="text-center" >Login</h4>

            <form class="form-horizontal" action="login.php" method="post" >
              <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" name="mail_login" placeholder="Email">
                </div>
              </div>
              <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password_login" placeholder="Password">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Sign in</button>
                </div>
              </div>
            </form>

          </div>

          <div class="col-md-6">

            <h4 class="text-center" > Sign up  </h4>


              <div class="form-group">
                <label for="inputName" class="col-sm-2 control-label">Name</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control"  name="inputName" placeholder="Name" required >
                </div>
              </div>
              <div class="form-group">
                <label for="inputSurname" class="col-sm-2 control-label">Surname</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="inputSurname" placeholder="Surname" required >
                </div>
              </div>
              <div class="form-group">
                <label for="inputEmail1" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" name="inputEmail" id="mailInput" placeholder="Email" required >
                  <div id='underInput' class="alert alert-warning" role="alert" ></div>
                </div  >
                
              </div>
              <div class="form-group">
                <label for="inputPassword1" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="inputPassword" placeholder="Password" required >
                </div>
              </div>
              <div class="form-group">
                <label for="inputPassword1" class="col-sm-2 control-label">Confirm Password </label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="inputPassword1" placeholder=" Confirm Password" required >
                </div>
              </div>

              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" name="sign" class="btn btn-default" >Sign Up</button>
                </div>
              </div>
          
          </div>
        </div>
        <div class="text-center" >

        </div>
      </section>
    <?php endif;?>

    <?php include('parts/footer.php') ?>

   
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
  </html>