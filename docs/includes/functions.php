<?php
  // Generate salt for passwords
  function generateSalt($max = 64) {
    $characterList = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*?";
    $i = 0;
    $salt = "";
    while ($i < $max) {
        $salt .= $characterList{mt_rand(0, (strlen($characterList) - 1))};
        $i++;
    }
    return $salt;
  }

  function userExists(&$email) {
    $conn = new Connect("users");
    $check = "SELECT email FROM users WHERE email = '$email'";
    $checkResult = mysqli_query($conn->connectMysql(), $check);
    if (mysqli_num_rows($checkResult) > 0) {
      return true;
    }
    else {
      return false;
    }
  }

  // Register a user
  function registerUser(&$email, &$password) {
    $conn = new Connect("users");
    $user_salt = generateSalt(); // Generates a salt from the function above
    $combo = $user_salt . $password; // Appending user password to the salt 
    $hashed_pwd = hash('sha512',$combo); // Using SHA512 to hash the salt+password combo string

    $insert = "INSERT INTO users(email, salt, pword) VALUES ('$email','$user_salt','$hashed_pwd')";

    $result = mysqli_query($conn->connectMysql(), $insert);

    if($result) {
      echo "Successful";
    } else {
      echo "Could not register user: " . mysql_error();
    }
    mysqli_close($conn->connectMysql()); //Closing the connection to the database
  }

  function showAlert($type, $content) {
    return "
      <div class='alert alert-dismissible fade show alert-$type' role='alert'>
        $content
        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
          <span aria-hidden='true'>&times;</span>
        </button>
      </div>
    ";
  }
?>