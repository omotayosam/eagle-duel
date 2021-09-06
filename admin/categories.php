<!-- head -->
<?php include('./includes/head.php');?>
<?php

if (isset($_POST['checkBoxArray'])) {

  foreach ($_POST['checkBoxArray'] as $bulkCatId) {

    $bulkCatUpdate = $_POST['bulkCatUpdate'];

    switch ($bulkCatUpdate) {

      case 'Delete':

        $query = "DELETE FROM categories WHERE cat_id = '$bulkCatId' ";
        $bluk_Cat_Delete = mysqli_query($connection, $query);


        break;
    }
  }
}

?>



    
    <!-- [ nav ] start -->
    <?php include('./includes/admin-nav.php');?>
    <!-- [ nav ] end -->
      <div class="col-4">


        <?php add_category(); ?>


        <form action="" method="post">

          <div class="form-group">
            <label for="cat-title">Add New Category</label>
            <input class="form-control" type="text" name="cat_title">
          </div>

          <div class="form-group">
            <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
          </div>


        </form>



        <?php edit_category(); ?>




      </div>


      <div class="col-8">


        <form action="" method="post">

          <table class="table table-hover">


            <div id="bulkoptionsec">
              <div class="input-group bulkoption">
                <select class="form-control" name="bulkCatUpdate">
                  <option selected>Choose...</option>
                  <option value="Delete">Delete</option>
                </select>
                <div class="input-group-append">

                  <input type="submit" name="deleteBulkCat" class="btn btn-primary" value="Apply">
                </div>
              </div>

            </div>


            <thead>
              <tr>
                <th><input id="checkBoxAll" type="checkbox"></th>
                <th>ID</th>
                <th>Category Name</th>
                <th>Category Edit</th>
                <th>Category Delete</th>
              </tr>
            </thead>
            <tbody>


              <?php

              $query = "SELECT * FROM categories";

              $select_cat_admin = mysqli_query($connection, $query);

              while ($row = mysqli_fetch_assoc($select_cat_admin)) {

                $cat_id = $row['cat_id'];
                $cat_title = $row['cat_title'];


                echo "<tr>";
                echo "<td><input class='checkbox' type='checkbox' name='checkBoxArray[]' value='$cat_id'></th>";
                echo "<th scope='row'>{$cat_id}</th>";
                echo "<td>{$cat_title}</td>";
                echo "<td><a href='categories.php?edit={$cat_id}'>EDIT</a></td>";
                echo "<td><a href='categories.php?delete={$cat_id}'>DELETE</a></td>";
                echo "</tr>";
              }

              ?>



              <?php delete_category(); ?>




            </tbody>
          </table>

        </form>


      </div>


    
  <!-- /.container-fluid-->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fa fa-angle-up"></i>
  </a>
  <!-- Logout Modal-->


  <?php
  include "includes/footer.php";
  ?>