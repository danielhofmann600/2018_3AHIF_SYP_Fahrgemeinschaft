<?php
  $startLocation = filter_input(INPUT_POST, 'startLocation');
  $destination = filter_input(INPUT_POST, 'destination');
  $startTime = filter_input(INPUT_POST, 'startTime');
  $arrivalTime = filter_input(INPUT_POST, 'arrivalTime');

  if (empty($startLocation) || empty($destination)) {
    echo "Sie müssen ein Start- und Zielort festlegen";
  }

  $host = "192.168.99.100:8000";
  $dbusername = "root";
  $dbpassword = "passme";
  $dbname = "fahrgemeinschaft";

  $connection = new mysqli($host, $dbusername, $dbpassword, $dbname);

  if(mysqli_connect_error()){
    die('Connect Error ('. mysqli_connect_error() .') ' . mysqli_connect_error());
  }
  else{
    $sql = "INSERT INTO account ()"
  }
?>
