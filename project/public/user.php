<?php
  $fistname = filter_input(INPUT_POST, 'firstname');
  $lastname = filter_input(INPUT_POST, 'lastname');
  $email = filter_input(INPUT_POST, 'email');
  $phonenumber = filter_input(INPUT_POST, 'phonenumber');
  $password = filter_input(INPUT_POST, 'password');
  $confirmpassowrd = filter_input(INPUT_POST, 'confirmpassowrd');

  if (!(empty($fistname) || empty($lastname) || empty($email) || empty($password) || empty($password))) {
    if ($password === $confirmpassowrd){

      $host = "192.168.99.100:8000";
      $dbusername = "root";
      $dbpassword = "passme";
      $dbname = "fahrgemeinschaft";

      $connection = new mysqli($host, $dbusername, $dbpassword, $dbname);

      if(mysqli_connect_error()){
        die('Connect Error ('. mysqli_connect_error() .') ' . mysqli_connect_error());
      }
      else{
        if (!empty($phonenumber)){
          $sql = "INSERT INTO USER(FIRSTNAME, LASTNAME, EMAIL, PHONE_NUMBER, PASSWORD)"
          values ('$fistname', '$lastname', '$email', '$phonenumber', '$password');
          if ($connection->query($sql)) {
            echo "Erfolgreich eingefügt";
          }
          else{
            echo "Error ". $sql ."<br>". $connection->error;
          }
          $connection->close();
        }
        else{
          $sql = "INSERT INTO USER(FIRSTNAME, LASTNAME, EMAIL, PASSWORD)"
          values ('$fistname', '$lastname', '$email', '$password');
          if ($connection->query($sql)) {
            echo "Erfolgreich eingefügt";
          }
          else{
            echo "Error ". $sql ."<br>". $connection->error;
          }
          $connection->close();
        }
      }
    }
    echo "Passwort stimmt nicht überein!"
  }
  else{
     echo "Alle * Felder ausfüllen!";
  }
?>
