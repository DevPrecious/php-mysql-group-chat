<?php 

include "db.php";

extract($_POST);

$username = mysqli_real_escape_string($conn, $_POST['username']);
$password = mysqli_real_escape_string($conn, $_POST['password']);

$sql = "INSERT INTO `tbluser` (`username`, `password`) VALUES ('$username', '$password')";
$result=mysqli_query($conn, $sql);

if($result){
$a = mysqli_query($conn, "SELECT * FROM `tbluser` WHERE `username`='$username'");
$aa = mysqli_fetch_array ($a);

if($a){

$aaa=$aa['user_Id'];
$sql = "INSERT INTO `tblaccount` (`username`, `password`, `user_Id`) VALUES ('$username', '$password', '$aaa')";
$done = mysqli_query($conn, $sql);
if($done == true) {
  echo '<script language="javascript">';
  echo 'alert("Successfully Registered")';
  echo '</script>';
  echo '<meta http-equiv="refresh" content="0;url=login.php" />';
  }
 }
 }
?>