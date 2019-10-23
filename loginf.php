<?php

session_start();

include "db.php";

$username = mysqli_real_escape_string($conn, $_POST['username']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

$query = "SELECT * FROM tblaccount WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $query) or die("Failed");
$array = mysqli_fetch_array($result);

if($array['username']==$username){
$_SESSION['username']=$array['username'];
$_SESSION['user_Id']=$array['user_Id'];
header('Location:home.php');
}else{
       echo '<script language="javascript">';
       echo 'alert("Incorrect username or password")';
       echo '</script>';
       echo '<meta http-equiv="refresh" content="0;url=../index.php" />';
}

?>