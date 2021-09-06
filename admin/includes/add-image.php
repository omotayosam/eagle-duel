<?php
// The output message
$msg = '';
// Check if user has uploaded new image
if (isset($_FILES['image'], $_POST['title'], $_POST['description'])) {
	$image_tile = $_POST['title'];
	$image_desc = $_POST['description'];
	$post_date = date('d-m-y');
	// The folder where the images will be stored
	$target_dir = '..//asset/images/gallery/';
	// The path of the new uploaded image
	$image_path = $target_dir . basename($_FILES['image']['name']);
	// Check to make sure the image is valid
	if (!empty($_FILES['image']['tmp_name']) && getimagesize($_FILES['image']['tmp_name'])) {
		if (file_exists($image_path)) {
			$msg = 'Image already exists, please choose another or rename that image.';
		} else if ($_FILES['image']['size'] > 50000000) {
			$msg = 'Image file size too large, please choose an image less than 500kb.';
		} else {
			// Everything checks out now we can move the uploaded image
			move_uploaded_file($_FILES['image']['tmp_name'], $image_path);
			// Connect to MySQL
			
			// Insert image info into the database (title, description, image path, and date added)
			$query = "INSERT INTO images (title, description, filepath, uploaded_date) VALUES ('$image_tile', '$image_desc', '$image_path', now())";
			$create_post_query = mysqli_query($connection, $query);
    
			//$get_post_id = mysqli_insert_id($connection);
			$msg = 'Image uploaded successfully!';
		}
	} else {
		$msg = 'Please upload an image!';
	}
}
?>


<div class="u-content upload">
<ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
          <a href="photos.php">view all images</a>
        </li>
        <li class="breadcrumb-item active">Add New image</li>
      </ol>

	<h2>Upload Image</h2>
	<form action="" method="post" enctype="multipart/form-data">
    <div class="imgGallery"> 
          <!-- Image preview -->
        </div>

    <div class="custom-file">
		<label for="image"  style="border: 2px dashed #3f4d67">Choose Image</label>
		<input type="file" name="image" accept="image/*" id="image" class="custom-file-input">
    </div>
		<label for="title">Title</label>
		<input type="text" name="title" id="title">
		<label for="description">Description</label>
		<textarea name="description" id="description"></textarea>
	    <input type="submit" value="Upload Image" name="submit">
	</form>
	<p><?=$msg?></p>
</div>

 <!-- jQuery -->
 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script>
  $(function() {
  // Multiple images preview with JavaScript
  var multiImgPreview = function(input, imgPreviewPlaceholder) {

      if (input.files) {
          var filesAmount = input.files.length;

          for (i = 0; i < filesAmount; i++) {
              var reader = new FileReader();

              reader.onload = function(event) {
                  $($.parseHTML('<img>')).attr('src', event.target.result).appendTo(imgPreviewPlaceholder);
              }

              reader.readAsDataURL(input.files[i]);
          }
      }

  };

    $('#image').on('change', function() {
      multiImgPreview(this, 'div.imgGallery');
    });
  });    
</script>

