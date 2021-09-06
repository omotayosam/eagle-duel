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
                      
                case 'add-image';
                include "includes/add-image.php"; 
                break;

                case 'delete-image';
                include "includes/delete.php"; 
                break;

                default:
                include "includes/view-all-images.php";
                break;
                      
              }

            ?>
            
            
      
      
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