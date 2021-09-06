<?php

if(isset($_POST['create_post'])) {
    
    $post_title = $_POST['post_title'];
    $post_category = $_POST['post_category'];
    $post_author = $_POST['post_author'];
    $post_status = $_POST['post_status'];
    
    $post_image = $_FILES['post_image']['name'];
    $post_image_loc = $_FILES['post_image']['tmp_name'];
    
    
    $post_tags = $_POST['post_tags'];
    $post_content = $_POST['post_content'];
    $post_date = date('d-m-y');
    
    
    
    move_uploaded_file($post_image_loc, "..//asset/images/$post_image");
    
    $chkbox = $_POST['for_carousel'];
    
    
    $query = "INSERT INTO posts(post_title, post_category_id, post_author, post_date, post_image, post_tag, post_status, post_content, for_carousel)";
    
    $query .= "VALUES('$post_title', '$post_category', '$post_author', now(), '$post_image', '$post_tags', '$post_status', '$post_content', '$chkbox')";
    
    $create_post_query = mysqli_query($connection, $query);
    
    $get_post_id = mysqli_insert_id($connection);

    if(!$create_post_query) {
        
        die("QUERY FAILED" . mysqli_error($connection));
    } else {
        
        echo "
        <div class='alert alert-success' role='alert'>
        Post Added Successfully.
        <a class='alert-link' target='_blank' href='posts.php?source=view-post&post-id={$get_post_id}'>View post</a> OR <a class='alert-link' href='posts.php?source=add-post'>Add new post</a>
        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
            <span aria-hidden='true'>&times;</span>
        </button>
        </div>
        ";

    }
}
    


?>



<div class="col-12">
   <form action="" method="post" enctype="multipart/form-data">

      <div class="row">

          <div class="col-8"> 
              
              
               <!-- Breadcrumbs-->
 <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.php">Dashboard</a>
        </li>
        <li class="breadcrumb-item">
          <a href="posts.php">view all posts</a>
        </li>
        <li class="breadcrumb-item active">Add New Post</li>
      </ol>

    
  <div class="form-group">
      <label for="title">Post Title</label>
      <input type="text" class="form-control" name="post_title">
  </div>  
   
   
   
   <div class="form-group">
      <label for="post_content">Post Content</label>
      <textarea name="post_content" id="" cols="30" rows="10" class="form-control"></textarea>
  </div> 
  
  
<div class="form-group">
      <input class="btn btn-primary" value="Publish Post" type="submit" class="form-control" name="create_post">
  </div>
   
    


</div>


<div class="col-4 post-edit-sidebar">


    <div class="form-group">
      <label for="post_status">Post Status</label>

      <select name="post_status" id="">
          <option value=""> Choose.. </option>

            <option value='Publish'>Publish</option>
            <option value='Draft'>Draft</option>


      </select>

   
  </div>

     <div class="form-group">
      <label for="post_author">Post Author</label>
      <input type="text" class="form-control" name="post_author">
  </div> 


<div class="form-group">
      <label for="post_category">Category</label>
      
       <select name="post_category" id="">
      
        <?php
          
        $query = "SELECT * FROM categories ";
            
            $select_cat_title = mysqli_query ($connection, $query);
      
      while ($row = mysqli_fetch_assoc ($select_cat_title)) {
          
          $cat_id = $row['cat_id'];
          $cat_title = $row['cat_title'];
          
          echo "<option value='$cat_id'>$cat_title</option>";
       
      }
        ?>
      
      </select>
       
  </div> 
   

  
  
   
   <div class="form-group">
      <label for="post_image">Post Image</label> 
      <input type="file" class="form-control" name="post_image">
  </div> 
 
   
   <div class="form-group">
      <label for="post_tags">Post Tags</label>
      <input type="text" class="form-control" name="post_tags">
      <div class="imgGallery"> 
          <!-- Image preview -->
        </div>
  </div> 

  <div class="form-group">
    <div class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input form-control" name="for_carousel" value="1" id="for_carousel">
      <label class="custom-control-label" for="for_carousel">Check to use image for for carousel</label>
    </div>    
  </div> 


 </div>

          
</div>  

</form>
    </div>

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