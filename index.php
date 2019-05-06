<?php
  require "includes/db.php";
  $user = true;
  if($user) {
    $conn = new Connect();
    $conn->connectMysql();
    $sql = 'SELECT * FROM users';
    $result = mysqli_query($conn->connectMysql(), $sql);

    if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
          print_r($row);
      }
    } else {
      echo "0 results";
    }
    mysqli_close($conn);
  }
  else {
    echo "You need to login";
  }
?>