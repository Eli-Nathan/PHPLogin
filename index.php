<?php
  require "includes/db.php";
  $conn = new Connect("db");
  $sql = 'SELECT * FROM users';
  $result = mysqli_query($conn->connectMysql(), $sql);

  if (mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
      $firstname = $row["first_name"];
      $lastname = $row["last_name"];
      $role = $row["role"];
      echo "Name: $firstname $lastname <br> <br>";
    }
  } else {
    echo "No results found";
  }
  mysqli_close($conn);
?>