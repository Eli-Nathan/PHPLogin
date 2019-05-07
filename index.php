<?php
  require "includes/db.php";
  require "includes/functions.php";
  $pageTitle = "Home";

  if(isset($_POST['email']) && isset($_POST['password'])) {
    $auth = new Authenticate();
    if(!$auth->userExists($_POST['email'])) {
      $auth->registerUser($_POST['email'], $_POST['password']);
      $alert = showAlert('success', 'You have successfully registered! You can now login', false);
    }
    else {
      if($auth->userLogin($_POST['email'], $_POST['password'])) {
        header('Location: /secure');
      }
      else {
        $alert = showAlert('danger', 'Incorrect password!', true);
      }
    }
  }

  include  "includes/header.php";

?>

<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <h1 class="text-center mt-5">Login or signup</h1>
    </div>
    <div class="col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-6 offset-lg-3">
      <div class="form ba-1 border border-info bg-white mt-5 p-3 rounded">
        <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
        <?php
          if(isset($_POST['email']) && isset($_POST['password'])) {
            echo $alert;
          }
        ?>
          <label for="email">Email</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="email-icon"><i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" class="form-control" name="email" id="email" placeholder="Email" aria-describedby="email-icon" required>
            <div class="invalid-feedback">
              Please enter your email.
            </div>
          </div>

          <label for="password" class="mt-3">Password</label>
          <div class="input-group">
            <div class="input-group-prepend input-group-prepend--password">
              <span class="input-group-text" id="password-icon"><i class="fa fa-eye-slash"></i></span>
            </div>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password" aria-describedby="password-icon" required>
            <div class="invalid-feedback">
              Please enter your password.
            </div>
          </div>

          <button class="btn btn-success mt-3 btn-block" type="submit">Submit</button>
        </form>
        <a href="#" class="d-block mt-3 text-right">Forgot your password?</a>
      </div>
    </div>
  </div>
</div>

<?php
  include  "includes/footer.php";
?>