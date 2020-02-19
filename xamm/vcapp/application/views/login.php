<?php include ('include/header.php');?>

    <div class="container" style="margin-top:110px; margin-bottom:90px">
      <div class="card card-login mx-auto my-5">
        <div class="card-header">Login</div>
        <div class="card-body">
          <?php echo form_open("user/loginform");?>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" name="username" id="inputUsername" class="form-control" placeholder="Username"  autofocus="autofocus">
                <label for="inputUsername">Username</label>
				<span style=" color:red;"><?php echo form_error('username'); ?></span>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password"  name="password" id="inputPassword" class="form-control" placeholder="Password" >
                <label for="inputPassword">Password</label>
				<span style=" color:red;"><?php echo form_error('password'); ?></span>
              </div>
            </div>
            <div class="form-group form-check">
                <label class="form-check-label">
                  <input type="checkbox" class="form-check-input" value="remember-me">
                  Remember Password
                </label>
            </div>
            <input type="submit" class="btn btn-primary btn-block" name="submit" value="Login" >
			<span style=" color:red;"><?php echo $this->session->flashdata("error"); ?></span>
          <?php echo form_close();?>
          <div class="text-center">
            <a class="d-block small mt-3" href="<?php echo base_url(); ?>user/register">Register an Account</a>
            <a class="d-block small" href="<?php echo base_url();?>user/forgot_password">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

<!-- Footer -->
    <footer class="py-5 bg-black fixed-bottom">
      <div class="container">
        <p class="m-0 text-center text-white small">Copyright &copy; www.liveevent.com 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="<?php echo base_url(); ?>vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>