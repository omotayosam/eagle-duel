<?php
session_start();
//error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{
    ?>
   <!-- head -->
   <?php include('./includes/head.php');?>
    
        <!-- [ nav ] start -->
        <?php include('./includes/admin-nav.php');?>
        <!-- [ nav ] end -->       
           <?php
              
              if (isset($_GET['source'])) {
                  
                  $source = $_GET['source'];
                  
              } else {
                  $source = '';
              }
              
              switch($source) {
                      
                case 'add-post';
                include "includes/add-post.php"; 
                break;
                      
                case 'edit-post';
                include "includes/edit-post.php"; 
                break;

                case 'view-post';
                include "includes/post.php"; 
                break;
                      
                default:
                include "includes/view-all-post.php";
                break;
                      
              }

            ?>
            
            <?php deletePost(); ?>
      
      
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
   
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    
<?php include ('./includes/footer.php'); ?>

</body>
</html>
<?php } ?>