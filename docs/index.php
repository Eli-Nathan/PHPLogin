<?php
  require "includes/db.php";
  require "includes/functions.php";
  $pageTitle = "Home";
  include  "includes/header.php";

  if($_POST['email'] && $_POST['password']) {
    if(!userExists($_POST['email'])) {
      registerUser($_POST['email'], $_POST['password']);
      $alert = showAlert('success', 'You have successfully registered!');
    }

    else {
      $alert = showAlert('danger', 'An account with that email address already exists!');
    }
  }

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
          if($_POST['email'] && $_POST['password']) { 
            echo $alert;
          }
        ?>
          <label for="validationCustomEmail">Email</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-envelope"></i></span>
            </div>
            <input type="email" class="form-control" name="email" id="validationCustomEmail" placeholder="Email" aria-describedby="inputGroupPrepend" required>
            <div class="invalid-feedback">
              Please enter your email.
            </div>
          </div>

          <label for="validationCustomPassword" class="mt-3">Password</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <span class="input-group-text" id="inputGroupPrepend"><i class="fa fa-eye"></i></span>
            </div>
            <input type="password" class="form-control" name="password" id="validationCustomPassword" placeholder="Password" aria-describedby="inputGroupPrepend" required>
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