<?php include ('include/header.php'); ?>

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
           <?php echo form_open("user/loginform");?> 
		  
            <div class="form-group">
              <div class="form-label-group">
                <input type="username" name="username" id="inputEmail" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputEmail">Username</label>
				<span style=" color:red;"><?php echo form_error('username'); ?></span>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
				<span style=" color:red;"><?php echo form_error('password'); ?></span>
              </div>
            </div>
			<input type="submit" name="submit" value="Login" class="btn btn-primary btn-block">
			<span style=" color:red;"><?php echo $this->session->flashdata("error"); ?></span>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            
          <?php echo form_close();?>
          <div class="text-center">
            <a class="d-block small mt-3" href="<?php echo base_url(); ?>user/register">Register an Account</a>
            <a class="d-block small" href="<?php echo base_url(); ?>user/forgot_password">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<?php echo base_url();?><vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url();?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <?php include ('include/footer.php');?>

  </body>

</html>
