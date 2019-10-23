<?php include "db.php";?>
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
<!DOCTYPE html>
<html>
<head>
<title>Group chat by DevPrecious</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<form action="post.php" method="POST">
<input type="hidden" name="userid" value=<?php echo $userid; ?>>
<input type="hidden" name="userid" value=<?php echo $username; ?>>
<input type="text" name="message" /><br>
<button>Send</button>
</form>
<?php

include "db.php";
$id = $_GET['user_Id'];


$b = mysqli_query($conn, "SELECT * from tblmsg ORDER BY 1" );
while($row=mysqli_fetch_assoc($b)){
extract($row);
echo "<fieldset style='background-color:tomato'>";
echo $username . ":" ." " ."<b>" . $message ."</b>";
echo "</fieldset>";
}
?>


</body>
</html>