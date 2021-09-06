<?php
  if (isset($_GET['post-id'])) {
                  
    $get_post_id = $_GET['post-id'];
  }
  $query = "SELECT * FROM posts WHERE post_id= $get_post_id";


$run_query = mysqli_query($connection, $query);
if (mysqli_num_rows($run_query) > 0 ) {
while ($row = mysqli_fetch_array($run_query)) {
	$post_title = $row['post_title'];
	$post_id = $row['post_id'];
	$post_author = $row['post_author'];
	$post_date = $row['post_date'];
	$post_image = $row['post_image'];
	$post_content = $row['post_content'];
	$post_tag = $row['post_tag'];
	$post_status = $row['post_status'];
    ?>

  <!-- [ Main Content ] start -->
<style>
.postview-img {
  width: 700px;
  height: 700px;
  justify-content: center;
}
</style>
            
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-block">
                                        <hr>
	       		<p><h2><a href="#"><?php echo $post_title; ?></a></h2></p>
                <p><h3>by <a href="#"><?php echo $post_author; ?></a></h3></p>
                <p><span class="glyphicon glyphicon-time"></span>Posted on <?php echo $post_date; ?></p>
                <hr>
                <img class="img-responsive img-rounded postview-img" src="../asset/images/<?php echo $post_image; ?>" alt="300 * 300">
                <hr>
                <p><?php echo $post_content; ?></p>

                <hr>
                <?php } }
                else { echo"<script>alert('error');</script>"; } ?>
                                        </div>
                                    </div>
                                </div>
   
