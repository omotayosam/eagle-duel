<?php

    if (isset($_POST['submit'])){
        $owner = $_POST['owner'];
        $position = $_POST['position'];
        $link = $_POST['link'];
        $period = $_POST['period'];

        //Getting the uploaded image
        $adImage = $_FILES["adImage"]["name"];
        $adImageTempName = $_FILES["adImage"]["tmp_name"];
        $adImageSize = $_FILES["adImage"]["size"];
        $adImageError = $_FILES["adImage"]["error"];
        $adImageType = $_FILES["adImage"]["type"];

        $imgExt = explode('.', $adImage);
        $imgActualExt = strtolower(end($imgExt));
            
        //Image types that are allowed in the website
        $allowedExtentions = array("jpg", "jpeg", "png", "gif");
            
        //Checking the image extention
        if (in_array($imgActualExt, $allowedExtentions)) {
            //Checking for errors in upload 
            if ($adImageError === 0) {
                //Checking for image size
                if ($adImageSize < 100000) {
                    $adImageNewName = uniqid('', true).".".$imgActualExt;
                    $imgDestination = '..//asset/ads/'.$adImageNewName;
                    move_uploaded_file($adImageTempName, $imgDestination);

                    $query = "INSERT INTO ads(owner, position, link, period_of_view, img) 
                            VALUES('$owner', '$position', '$link', '$period_of_view', '$imgDestination') ";
                    $result = mysqli_query($connection,$query);

                    
                }
                else {
                    echo "<script>alert('Your image is too big!');</script>";
                }
            }
            else {
                echo "<script>alert('There was an error uploading your image!');</script>";
            }
        }
        else {
            echo "<script>alert('Invalid format. Only jpg / jpeg/ png format allowed');</script>";
        }
    }


?>
                        <div class="col-md-10 col-md-offset-1">
                            <div class="p-6">
                            <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Add New ad</li>
      </ol>
                                <div class="">
                                    <form action="" method="POST" enctype="multipart/form-data">
                                        <div class="form-group m-b-20">
                                            <label for="exampleInputEmail1">Owner Name</label>
                                            <input type="text" class="form-control" id="title" name="owner"
                                                placeholder="Enter title" required maxlength="100">
                                        </div>
                                        <div class="form-group m-b-20">
                                            <label>Position</label>
                                            <select class="form-control" name="position" id="position" required>
                                                <option value="">Position</option>
                                                <?php
                                                //Fetching positions
                                                $query = "SELECT * FROM adsposition";
                                                $result = mysqli_query($connection,$query);

                                                while ($position = mysqli_fetch_array($result))
                                                {    
                                                ?>
                                                <option value="<?php echo htmlentities($position['position']);?>">
                                                    <?php echo htmlentities($position['position']);?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <div class="form-group m-b-20">
                                            <label for="exampleInputEmail1">Link</label>
                                            <input type="text" class="form-control" id="link" name="link"
                                                placeholder="Enter link" required>
                                        </div>
                                        <div class="form-group m-b-20">
                                            <label>Period of View</label>
                                            <select class="form-control" name="period" id="period" required>
                                                <option value="">Period of View</option>
                                                <?php
                                                    $i = 30;
                                                while ($i < 70 )
                                                {    
                                                ?>
                                                <option value="<?php echo htmlentities($i);?>">
                                                    <?php echo htmlentities($i);?></option>

                                                <?php $i = $i + 10;
                                                } 
                                                ?>
                                            </select>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="card-box">
                                                    <h4 class="m-b-30 m-t-0 header-title"><b>Image</b></h4>
                                                    <div class="imgGallery"> 
          <!-- Image preview -->
        </div>
                                                    <input type="file" class="form-control" id="image" name="adImage"
                                                        required>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" name="submit"
                                            class="btn btn-success waves-effect waves-light">Save</button>
                                        <button type="button"
                                            class="btn btn-danger waves-effect waves-light">Discard</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    
                <!-- jQuery -->
                <?php include ('previewscript.php'); ?>
