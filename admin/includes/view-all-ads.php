<?php 


    if (isset($_GET['action'])) {
        if ($_GET['action'] == 'del') {
            $id = intval($_GET['id']);
            $query = "DELETE FROM ads WHERE id=$id";
            $result = mysqli_query($connection,$query);
        }
    }


    

?>

        
                        
                   
                        <div class="col-sm-12">
                            <div class="card-box">
                                <div class="m-b-30">
                                    <a href="ads.php?source=add-ad">
                                        <button id="addAds" class="btn btn-success waves-effect waves-light">Add News Ad
                                            <i class="mdi mdi-plus-circle-outline"></i></button>
                                    </a>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-colored table-centered table-inverse m-0">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Owner</th>
                                                <th>Position</th>
                                                <th>Image</th>
                                                <th>Link</th>
                                                <th># Of Clicks</th>
                                                <th>Period Of view</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                
                                                $query = "SELECT * FROM ads";
                                                $result = mysqli_query($connection, $query);
                                                $rowcount = mysqli_num_rows($result);
                                                $count = 1;

                                                if ($rowcount == 0){
                                                ?>
                                            <tr>
                                                <td colspan="4" align="center">
                                                    <h3 style="color:red">No ads found</h3>
                                                </td>
                                            <tr>
                                                <?php }
                                                    else {
                                                        while($row = mysqli_fetch_array($result)) {     
                                                ?>
                                            <tr>
                                                <th scope="row"><?php echo htmlentities($count);?></th>
                                                <td><b><?php echo htmlentities($row['owner']);?></b></td>
                                                <td><?php echo htmlentities($row['position'])?></td>
                                                <td><img src="../asset/<?php echo htmlentities($row['img'])?>" alt="" width="200" ></td>
                                                <td><?php echo htmlentities($row['link'])?></td>
                                                <td><?php echo htmlentities($row['number_of_clicks'])?></td>
                                                <td><?php echo htmlentities($row['period_of_view'])?></td>
                                                <td><a href="ads.php?source=edit-ad&id=<?php echo htmlentities($row['id']);?>"><i
                                                            class="fa fa-pencil" style="color: #29b6f6;"></i></a>
                                                    &nbsp;<a
                                                        href="view-all-ads.php?id=<?php echo htmlentities($row['id']);?>&&action=del"
                                                        onclick="return confirm('Do you really want to delete ?')"><i
                                                            class="fa fa-trash-o" style="color: #f05050"></i></a></td>
                                               
                                            </tr>
                                            <?php  $count++;}}
                                            ?>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    
               
