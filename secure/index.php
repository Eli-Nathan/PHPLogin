<?php
  require "../includes/db.php";
  require "../includes/functions.php";
  $pageTitle = "Welcome";
  session_start();
  if(!isset($_SESSION["id"])) {
    header('Location: /');
  }
  include  "../includes/header.php";

?>

<div class="container">
  <div class="row">
    <div class="col-sm-12">
      <div class="text-center">
        <h1 class="mt-5">Welcome!</h1>
        <a href="/includes/logout.php" class="btn btn-info">Logout</a>
      </div>
    </div>
  </div>
</div>

<?php
  include  "../includes/footer.php";
?>