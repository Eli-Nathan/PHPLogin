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
        $firstname = $row["first_name"];
        $lastname = $row["last_name"];
        $role = $row["role"];
        echo "Name: $firstname $lastname <br> User type: $role <br> <br>";
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