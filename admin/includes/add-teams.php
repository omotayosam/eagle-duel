<?php

if(isset($_POST['create_post'])) {
     
	$team_name = $_POST['team_name'];

	$team_logo = $_FILES['logo']['name'];
	$logo_image_loc = $_FILES['logo']['tmp_name'];

	$coach_name = $_POST['coach_id'];
	$stadium = $_POST['stad_id'];
	
	$homekit = $_FILES['home_kit']['name'];
	$homekit_loc = $_FILES['home_kit']['tmp_name'];

	$awaykit = $_FILES['away_kit']['name'];
	$awaykit_loc = $_FILES['away_kit']['tmp_name'];

	$year = $_POST['date_found'];
	$trophies_won= $_POST['championships'];
	$website_link= $_POST['website'];
	$twitter_page= $_POST['twitter'];
	$fb_page= $_POST['facebook'];
	$insta_page = $_POST['insta'];
	$chkbox = $_POST['relegated'];
    
    move_uploaded_file($logo_image_loc, "..//asset/images/teams/logo/$team_logo");
    move_uploaded_file($homekit_loc, "..//asset/images/teams/jersey/$homekit");
    move_uploaded_file($awaykit_loc, "..//asset/images/teams/jersey/$awaykit");
    
    //$chkbox = $_POST['relegated'];
    
    
    $query = "INSERT INTO teams(team_name, logo, coach_id, stadium_id, home_kit, away_kit, date_found, championships, website, twitter, facebook, insta, relegated)";
    
    $query .= "VALUES('$team_name', '$team_logo', '$coach_name', '$stadium', '$homekit', '$awaykit', '$year', '$trophies_won', '$website_link', '$twitter_page', '$fb_page', '$insta_page', '$chkbox')"; 
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

          <div class="col-5"> 
              
              
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
      <label for="name">team_name</label>
      <input type="text" class="form-control" name="team_name">
  </div>

  <div class="form-group">
      <label for="year">year established</label>
      <input type="text" class="form-control" name="date_found">
  </div>
  <div class="form-group">
      <label for="champ">championships won (year)</label>
      <input type="text" class="form-control" name="championships">
  </div>

  <div class="form-group">
      <label for="website">website link</label>
      <input type="text" class="form-control" name="website">
  </div>
  <div class="form-group">
      <label for="name">twitter page</label>
      <input type="text" class="form-control" name="twitter">
  </div>
  <div class="form-group">
      <label for="name">facebook page</label>
      <input type="text" class="form-control" name="facebook">
  </div>
  <div class="form-group">
      <label for="name">instagram page</label>
      <input type="text" class="form-control" name="insta">
  </div>
  
  
<div class="form-group">
      <input class="btn btn-primary" value="Publish Post" type="submit" class="form-control" name="create_post">
  </div>
   
    


</div>


<div class="col-4 post-edit-sidebar">

<div class="form-group">
      <label for="coach_id">coach</label>
      
       <select name="coach_id" id="">
      
        <?php
          
        $query = "SELECT * FROM coaches ";
            
            $select_coach_name = mysqli_query ($connection, $query);
      
      while ($row = mysqli_fetch_assoc ($select_coach_name)) {
          
          $coach_id = $row['coach_id'];
          $coach_name = $row['coach_name'];
          
          echo "<option value='$coach_id'>$coach_name</option>";
       
      }
        ?>
      
      </select>
       
  </div> 

  <div class="form-group">
      <label for="stad_id">stadium</label>
      
       <select name="stad_id" id="">
      
        <?php
          
        $query = "SELECT * FROM stadiums ";
            
            $select_stad_name = mysqli_query ($connection, $query);
      
      while ($row = mysqli_fetch_assoc ($select_stad_name)) {
          
          $stad_id = $row['stad_id'];
          $stad_name = $row['stad_name'];
          
          echo "<option value='$stad_id'>$stad_name</option>";
       
      }
        ?>
      
      </select>
       
  </div> 
   

  
  
 
   <div class="form-group">
      <label for="logo">Team Logo</label> 
	  <div class="imgGallery"> 
          <!-- Image preview -->
        </div>
      <input type="file" class="form-control" name="logo">
  </div> 
  <div class="form-group">
      <label for="home_kit">home kit</label> 
	  <div class="imgGallery"> 
          <!-- Image preview -->
        </div>
      <input type="file" class="form-control" name="home_kit">
  </div> 
  <div class="form-group">
      <label for="away_kit">away kit</label> 
	  <div class="imgGallery"> 
          <!-- Image preview -->
        </div>
      <input type="file" class="form-control" name="away_kit">
  </div> 
  <div class="form-group">
    <div class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input form-control" name="relegated" value="1" id="relegated">
      <label class="custom-control-label" for="relegated">Check if team has been relegated</label>
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