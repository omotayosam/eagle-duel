<?php
include_once 'config.php';
$msg = '';
// Check that the image ID exists
if (isset($_GET['id'])) {
    // Select the record that is going to be deleted
    $query = "SELECT * FROM images";
    $result = $connection->query($query);
    $image = $result->fetch_array(MYSQLI_ASSOC);

    if (!$image) {
        exit('Image doesn\'t exist with that ID!');
    }
    // Make sure the user confirms before deletion
    if (isset($_GET['confirm'])) {
        if ($_GET['confirm'] == 'yes') {
            // User clicked the "Yes" button, delete file & delete record
            //unlink($image['filepath']);
            $query = "DELETE FROM images WHERE id = ?".$_GET['id'];
            $connection->query($query);
            // Output msg
            $msg = 'You have deleted the image!';
        } else {
            // User clicked the "No" button, redirect them back to the home/index page
            header('Location: photos.php');
            exit;
        }
    }
} else {
    exit('No ID specified!');
}
?>



<div class="content delete">
	<h2>Delete Image #<?=$image['id']?></h2>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php else: ?>
	<p>Are you sure you want to delete <?=$image['title']?>?</p>
    <div class="yesno">
        <a href="./includes/delete.php?id=<?=$image['id']?>&confirm=yes">Yes</a>
        <a href="./includes/delete.php?id=<?=$image['id']?>&confirm=no">No</a>
    </div>
    <?php endif; ?>
</div>

