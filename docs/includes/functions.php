<?php
  Class Authenticate {
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
      $user_salt = $this->generateSalt(); // Generates a salt from the function above
      $combo = $user_salt . $password; // Appending user password to the salt 
      $hashed_pwd = hash('sha512',$combo); // Using SHA512 to hash the salt+password combo string

      $insert = "INSERT INTO users(email, salt, pword) VALUES ('$email','$user_salt','$hashed_pwd')";

      $result = mysqli_query($conn->connectMysql(), $insert);

      if(!$result) {
        echo "Could not register user: " . mysql_error();
      }
      else {
        return true;
      }
      mysqli_close($conn->connectMysql()); //Closing the connection to the database
    }

    function userLogin(&$email, &$password) {
      $conn = new Connect("users");
      $find_user = "SELECT email, salt, pword FROM users WHERE email='$email'";
      $result = mysqli_query($conn->connectMysql(), $find_user) or die('Error while trying to find salt'.mysqli_error());
      $row = mysqli_fetch_assoc($result);

      /*-------------------------------------------------------------
        Getting the value from the database
        &  
        salting,hashing of the password from the form
      -------------------------------------------------------------*/
      $stored_salt = $row['salt'];
      $stored_hash = $row['pword'];
      $check_pass = $stored_salt . $password;
      $check_hash = hash('sha512',$check_pass);

      if($check_hash == $stored_hash) {
        return true;
      }
      else {
        return false;
      }
      mysqli_close($conn->connectMysql()); //Closing the connection to the database
    }
  }

  function showAlert($type, $content, $close) {
    $alert = "
      <div class='alert alert-dismissible fade show alert-$type' role='alert'>
        $content
      ";
    if($close) {
      $alert .= "
        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
          <span aria-hidden='true'>&times;</span>
        </button>
      ";
    }
    $alert .= "</div>";
    return $alert;
  }
?>