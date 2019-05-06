<?php
  require "includes/db.php";
  $user = true;
  if($user) {
    $conn = new Connect("db");
    $conn->connectMysql();
    $sql = 'SELECT * FROM users';
    $result = mysqli_query($conn->connectMysql(), $sql);

    if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
          echo "Name: " . $row["first_name"] . " " . $row["last_name"] . "<br> User type: " . $row["role"] . "<br> <br>";
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