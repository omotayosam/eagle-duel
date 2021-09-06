<?php
 session_start();
//Database Configuration File
include('includes/config.php');
//error_reporting(0);
error_reporting(0);
if(isset($_POST['login']))
  {
 
    // Getting username/ email and password
     $uname=$_POST['username'];
    $password=$_POST['password'];
    // Fetch data from database on the basis of username/email and password
$sql =mysqli_query($connection,"SELECT AdminUserName,AdminEmailId,AdminPassword FROM tbladmin WHERE (AdminUserName='$uname' || AdminEmailId='$uname')");
 $num=mysqli_fetch_array($sql);
if($num>0)
{
$hashpassword=$num['AdminPassword']; // Hashed password fething from database
//verifying Password
if (password_verify($password, $hashpassword)) {
$_SESSION['login']=$_POST['username'];
    echo "<script type='text/javascript'> document.location = 'dashboard.php'; </script>";
  } else {
echo "<script>alert('Wrong Password');</script>";
 
  }
}
//if username or email not found in database
else{
echo "<script>alert('User not registered with us');</script>";
  }
 
}
?>


<!DOCTYPE html>
<html lang="en">
<!-- head -->
<?php include('./includes/head.php'); ?>

    <div class="auth-wrapper">
        <div class="auth-content">
            <div class="auth-bg">
                <span class="r"></span>
                <span class="r s"></span>
                <span class="r s"></span>
                <span class="r"></span>
            </div>
            <div class="card">
                <div class="card-body text-center">
                    <div class="mb-4">
                        <i class="feather icon-unlock auth-icon"></i>
                    </div>
                    <form action="" method="post">
                    <h3 class="mb-4">Login</h3>
                    <div class="input-group mb-3 form-group">
                        <input name="username" type="text" class="form-control" placeholder="username">
                    </div>
                    <div class="input-group form-group mb-4">
                        <input type="password" name="password" class="form-control" placeholder="password">
                    </div>
                    <div class="form-group">
                        
                    
                    <button class="btn btn-primary shadow-2 mb-4" type="submit" name="login">Login</button>
                    </div>
</div>
                </div>
            </div>
        </div>
    </div>
    <script>
            var resizefunc = [];
        </script>
        <script src="./assets/js/jquery.min.js"></script>
<?php include('./includes/footer.php');?>
</body>
</html>
