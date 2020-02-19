<?php include('include/header.php'); ?>


    <div class="container" style="margin-top:113px;">
      <div class="card card-register mx-auto my-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
          <?php //echo validation_errors(); ?>
		  <?php echo form_open('user/regSave'); ?>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" name="fname" id="firstName" value="<?php echo set_value('fname'); ?>" class="form-control" placeholder="First name" required="required"  autofocus="autofocus">
					<label for="firstName">First name</label>
					<span style=" color:red;"><?php echo form_error('fname'); ?></span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="text" name="lname" id="lastName" value="<?php echo set_value('lname'); ?>" class="form-control" placeholder="Last name" required="required" >
                    <label for="lastName">Last name</label>
					<span style=" color:red;"><?php echo form_error('lname'); ?></span>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" name="username" id="userName" value="<?php echo set_value('username'); ?>"class="form-control" placeholder="Username" required="required" >
                <label for="userName">Username</label>
				<span style=" color:red;"><?php echo form_error('username'); ?></span>
              </div>
            </div>
			<div class="form-group">
              <div class="form-label-group">
                <input type="text" name="email" id="inputEmail" value="<?php echo set_value('email'); ?>"class="form-control" placeholder="Email address" required="required" >
                <label for="inputEmail">Email address</label>
				<span style=" color:red;"><?php echo form_error('email'); ?></span>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" name="pass" id="inputPassword" value="<?php echo set_value('pass'); ?>" class="form-control" placeholder="Password" required="required" >
                    <label for="inputPassword">Password</label>
					<span style=" color:red;"><?php echo form_error('pass'); ?></span>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" name="cpass" id="confirmPassword" value="<?php echo set_value('cpass'); ?>" class="form-control" placeholder="Confirm password" required="required" >
                    <label for="confirmPassword">Confirm password</label>
					<span style=" color:red;"><?php echo form_error('cpass'); ?></span>
                  </div>
                </div>
              </div>
            </div>
            <input type="submit" class="btn btn-primary btn-block" name="submit" value="Register">
          <?php echo form_close(); ?>
          <div class="text-center">
            <a class="d-block small mt-3" href="<?php echo base_url(); ?>user/login">Login Page</a>
            <a class="d-block small" href="<?php echo base_url();?>user/forgot_password">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>

    <?php include('include/footer.php'); ?>
