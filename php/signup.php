<?php

$name = filter_input(INPUT_POST,'name');
$email = filter_input(INPUT_POST,'email');
$contact = filter_input(INPUT_POST,'contact');
$address = filter_input(INPUT_POST,'address');
$acc = filter_input(INPUT_POST,'acc');
$password = filter_input(INPUT_POST,'password');

$host="localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "milk_farm";

$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
if (mysqli_connect_error()){
die('Connect Error ('. mysqli_connect_errno() .') '
. mysqli_connect_error());
}
else{
$sql = "INSERT INTO signup (name,email,contact,address,acc,password)
values ('$name','$email','$contact','$address','$acc','$password')";
if ($conn->query($sql)){
echo "New record is inserted sucessfully";
}
else{
echo "Error: ". $sql ."
". $conn->error;
}
$conn->close();
}
}
?>