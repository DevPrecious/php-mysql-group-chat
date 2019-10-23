<?php
  session_start();
  if (isset($_SESSION['username'])&&$_SESSION['username']!=""){
  }
  else
  {
    header("Location:login.php");
  }
$username=$_SESSION['username'];
$userid = $_SESSION['user_Id'];

?>
<?php

include "db.php";

$datetime = date("Y-m-d h:i:sa");
extract($_POST);

$sql = "INSERT INTO tblpost (message, user_Id) VALUES ('$message', '$userid')";
$fin = mysqli_query($conn, $sql);
if($fin){
$a = mysqli_query($conn, "SELECT * FROM `tbluser` WHERE `username`='$username'");
$aa = mysqli_fetch_array($a);
if($aa){
$aaa=$aa['user_Id'];
$aaaa=$aa['username'];

$b= "INSERT INTO `tblmsg` (`username`, `message`, `user_Id`) VALUES ('$aaaa', '$message', '$aaa')";
$ok = mysqli_query($conn, $b);
if($ok == true) {
echo '<script language="javascript">';
  echo 'alert("Successfully Registered")';
  echo '</script>';
  header('location:home.php');
 }
 }
 }
?>