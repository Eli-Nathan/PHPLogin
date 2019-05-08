<?php
  require "../../includes/db.php";
  require "../../includes/functions.php";
  $pageTitle = "Reset password";

  if(isset($_POST['email'])) {
    $auth = new Authenticate();
    if($auth->userExists($_POST['email'])) {
      if($auth->sendRecovery($_POST['email'])) {
        $alert = showAlert('success', 'Check your emails for instructions to reset your password', false);
      }
      else {
        $alert = showAlert('danger', 'Something went wrong!', true);
      }
    }
    else {
      $alert = showAlert('danger', 'Email address not recognised', true);
    }
  }

  include  "../../includes/header.php";

?>

<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <h1 class="text-center mt-5">Reset your password</h1>
    </div>
    <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
      <div class="form ba-1 border border-info bg-white mt-5 p-3 rounded"1>
        <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
        <?php
          if(isset($_POST['email'])) {
            echo $alert;
          }
        ?>
          <label for="email">Email</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="email-icon"><i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" class="form-control" name="email" id="email" placeholder="Email" aria-describedby="email-icon" <?php if(isset($_POST['email'])) {?> value="<?php echo $_POST['email']; ?>" <?php } ?> required>
            <div class="invalid-feedback">
              Please enter your email.
            </div>
          </div>

          <button class="btn btn-success mt-3 btn-block" type="submit">Reset password</button>
        </form>
        <a href="/" class="d-block mt-3 text-right">Sign up</a>
      </div>
    </div>
  </div>
</div>

<?php
  include  "../../includes/footer.php";
?>