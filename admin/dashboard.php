<?php
session_start();
include('includes/config.php');
error_reporting(0);
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
                                <!--[ daily sales section ] start-->
                                <div class="col-md-6 col-xl-4">
                                    <div class="card daily-sales">
                                        <div class="card-block">
                                            <h6 class="mb-4">Todays Visitors</h6>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center m-b-0"><i class="feather icon-arrow-up text-c-green f-30 m-r-10"></i> 24999</h3>
                                                </div>

                                                <div class="col-3 text-right">
                                                    <p class="m-b-0">67%</p>
                                                </div>
                                            </div>
                                            <div class="progress m-t-30" style="height: 7px;">
                                                <div class="progress-bar progress-c-theme" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[ daily sales section ] end-->
                                <!--[ Monthly  sales section ] starts-->
                                <div class="col-md-6 col-xl-4">
                                    <div class="card Monthly-sales">
                                        <div class="card-block">
                                            <h6 class="mb-4">This Month</h6>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center  m-b-0"><i class="feather icon-arrow-down text-c-red f-30 m-r-10"></i>294232</h3>
                                                </div>
                                                <div class="col-3 text-right">
                                                    <p class="m-b-0">36%</p>
                                                </div>
                                            </div>
                                            <div class="progress m-t-30" style="height: 7px;">
                                                <div class="progress-bar progress-c-theme2" role="progressbar" style="width: 35%;" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[ Monthly  sales section ] end-->
                                <!--[ year  sales section ] starts-->
                                <div class="col-md-12 col-xl-4">
                                    <div class="card yearly-sales">
                                        <div class="card-block">
                                            <h6 class="mb-4">average monthly</h6>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center  m-b-0"><i class="feather icon-arrow-up text-c-green f-30 m-r-10"></i>863832</h3>
                                                </div>
                                                <div class="col-3 text-right">
                                                    <p class="m-b-0">80%</p>
                                                </div>
                                            </div>
                                            <div class="progress m-t-30" style="height: 7px;">
                                                <div class="progress-bar progress-c-theme" role="progressbar" style="width: 70%;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[ year  sales section ] end-->
                                <!--[ Recent Users ] start-->
                                <div class="col-xl-8 col-md-6">
                                    <div class="card Recent-Users">
                                        <div class="card-header">
                                            <h5>Recent Users</h5>
                                        </div>
                                        <div class="card-block px-0 py-3">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <tbody>
                                                        <tr class="unread">
                                                            <td><img class="rounded-circle" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user"></td>
                                                            <td>
                                                                <h6 class="mb-1">Isabella Christensen</h6>
                                                                <p class="m-0">Lorem Ipsum is simply…</p>
                                                            </td>
                                                            <td>
                                                                <h6 class="text-muted"><i class="fas fa-circle text-c-green f-10 m-r-15"></i>11 MAY 12:56</h6>
                                                            </td>
                                                            <td><a href="#!" class="label theme-bg2 text-white f-12">Reject</a><a href="#!" class="label theme-bg text-white f-12">Approve</a></td>
                                                        </tr>
                                                        <tr class="unread">
                                                            <td><img class="rounded-circle" style="width:40px;" src="assets/images/user/avatar-2.jpg" alt="activity-user"></td>
                                                            <td>
                                                                <h6 class="mb-1">Mathilde Andersen</h6>
                                                                <p class="m-0">Lorem Ipsum is simply text of…</p>
                                                            </td>
                                                            <td>
                                                                <h6 class="text-muted"><i class="fas fa-circle text-c-red f-10 m-r-15"></i>11 MAY 10:35</h6>
                                                            </td>
                                                            <td><a href="#!" class="label theme-bg2 text-white f-12">Reject</a><a href="#!" class="label theme-bg text-white f-12">Approve</a></td>
                                                        </tr>
                                                        <tr class="unread">
                                                            <td><img class="rounded-circle" style="width:40px;" src="assets/images/user/avatar-3.jpg" alt="activity-user"></td>
                                                            <td>
                                                                <h6 class="mb-1">Karla Sorensen</h6>
                                                                <p class="m-0">Lorem Ipsum is simply…</p>
                                                            </td>
                                                            <td>
                                                                <h6 class="text-muted"><i class="fas fa-circle text-c-green f-10 m-r-15"></i>9 MAY 17:38</h6>
                                                            </td>
                                                            <td><a href="#!" class="label theme-bg2 text-white f-12">Reject</a><a href="#!" class="label theme-bg text-white f-12">Approve</a></td>
                                                        </tr>
                                                        <tr class="unread">
                                                            <td><img class="rounded-circle" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user"></td>
                                                            <td>
                                                                <h6 class="mb-1">Ida Jorgensen</h6>
                                                                <p class="m-0">Lorem Ipsum is simply text of…</p>
                                                            </td>
                                                            <td>
                                                                <h6 class="text-muted f-w-300"><i class="fas fa-circle text-c-red f-10 m-r-15"></i>19 MAY 12:56</h6>
                                                            </td>
                                                            <td><a href="#!" class="label theme-bg2 text-white f-12">Reject</a><a href="#!" class="label theme-bg text-white f-12">Approve</a></td>
                                                        </tr>
                                                        <tr class="unread">
                                                            <td><img class="rounded-circle" style="width:40px;" src="assets/images/user/avatar-2.jpg" alt="activity-user"></td>
                                                            <td>
                                                                <h6 class="mb-1">Albert Andersen</h6>
                                                                <p class="m-0">Lorem Ipsum is simply dummy…</p>
                                                            </td>
                                                            <td>
                                                                <h6 class="text-muted"><i class="fas fa-circle text-c-green f-10 m-r-15"></i>21 July 12:56</h6>
                                                            </td>
                                                            <td><a href="#!" class="label theme-bg2 text-white f-12">Reject</a><a href="#!" class="label theme-bg text-white f-12">Approve</a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[ Recent Users ] end-->

                                <!-- [ statistics year chart ] start -->
                                <div class="col-xl-4 col-md-6">
                                    <div class="card card-event">
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col">
                                                    <h5 class="m-0">Upcoming Event</h5>
                                                </div>
                                                <div class="col-auto">
                                                    <label class="label theme-bg2 text-white f-14 f-w-400 float-right">34%</label>
                                                </div>
                                            </div>
                                            <h2 class="mt-3 f-w-300">15<sub class="text-muted f-14">league Matches</sub></h2>
                                            <a href="http://"><h6 class="text-muted mt-4 mb-0">Click here to view matches</h6></a>
                                            <i class="fab fa-angellist text-c-purple f-50"></i>
                                        </div>
                                    </div>
                                    <div class="card">
                                        <div class="card-block border-bottom">
                                            <div class="row d-flex align-items-center">
                                                <div class="col-auto">
                                                    <i class="feather icon-zap f-30 text-c-green"></i>
                                                </div>
                                                <div class="col">
                                                    <h3 class="f-w-300">2000000</h3>
                                                    <span class="d-block text-uppercase">USERS</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row d-flex align-items-center">
                                                <div class="col-auto">
                                                    <i class="feather icon-map-pin f-30 text-c-blue"></i>
                                                </div>
                                                <div class="col">
                                                    <h3 class="f-w-300">256</h3>
                                                    <span class="d-block text-uppercase">PRIVATE LEAGUES</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- [ statistics year chart ] end -->
                                <!--[social-media section] start-->
                                <div class="col-md-12 col-xl-4">
                                    <div class="card card-social">
                                        <div class="card-block border-bottom">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-auto">
                                                    <i class="fab fa-facebook-f text-primary f-36"></i>
                                                </div>
                                                <div class="col text-right">
                                                    <h3>12,281</h3>
                                                    <h5 class="text-c-green mb-0">+7.2% <span class="text-muted">Total Likes</span></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center card-active">
                                                <div class="col-6">
                                                    <h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>35,098</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme" role="progressbar" style="width:60%;height:6px;" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>3,539</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme2" role="progressbar" style="width:45%;height:6px;" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xl-4">
                                    <div class="card card-social">
                                        <div class="card-block border-bottom">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-auto">
                                                    <i class="fab fa-twitter text-c-blue f-36"></i>
                                                </div>
                                                <div class="col text-right">
                                                    <h3>11,200</h3>
                                                    <h5 class="text-c-purple mb-0">+6.2% <span class="text-muted">Total Likes</span></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center card-active">
                                                <div class="col-6">
                                                    <h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>34,185</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-green" role="progressbar" style="width:40%;height:6px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>4,567</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-blue" role="progressbar" style="width:70%;height:6px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-xl-4">
                                    <div class="card card-social">
                                        <div class="card-block border-bottom">
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-auto">
                                                    <i class="fab fa-google-plus-g text-c-red f-36"></i>
                                                </div>
                                                <div class="col text-right">
                                                    <h3>10,500</h3>
                                                    <h5 class="text-c-blue mb-0">+5.9% <span class="text-muted">Total Likes</span></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <div class="row align-items-center justify-content-center card-active">
                                                <div class="col-6">
                                                    <h6 class="text-center m-b-10"><span class="text-muted m-r-5">Target:</span>25,998</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme" role="progressbar" style="width:80%;height:6px;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <h6 class="text-center  m-b-10"><span class="text-muted m-r-5">Duration:</span>7,753</h6>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-c-theme2" role="progressbar" style="width:50%;height:6px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--[social-media section] end-->
                                <!-- [ rating list ] starts-->
                               
                                <!-- [ rating list ] end-->
                                <div class="col-xl-8 col-md-12 m-b-30">
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">This week</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active show" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">This Month</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">All</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>User</th>
                                                        <!--<th>Activity</th> -->
                                                        <th>points</th>
                                                        <th>chips used</th>
                                                        <th class="text-right"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                       
                                                        <td>
                                                            <h6 class="m-0">102</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-green">Wildcard</h6>
                                                        </td>
                                                       <!-- <td class="text-right"><i class="fas fa-circle text-c-green f-10"></i></td> -->
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-2.jpg" alt="activity-user">Albert Andersen</h6>
                                                        </td>
                                                        
                                                        <td>
                                                            <h6 class="m-0">100</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-red">Tripple Captain</h6>
                                                        </td>
                                                        
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-3.jpg" alt="activity-user">Silje Larsen</h6>
                                                        </td>
                                                        
                                                        <td>
                                                            <h6 class="m-0">95 AM</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-purple">Benchboost</h6>
                                                        </td>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                        
                                                        <td>
                                                            <h6 class="m-0">80</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-green">freehit</h6>
                                                        </td>
                                                        
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="tab-pane fade active show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>User</th>
                                                         <!--<th>Activity</th> -->
                                                        <th>points</th>
                                                        <th>Ovr</th>
                                                        <th>Rank</th>
                                                        <th class="text-right"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-2.jpg" alt="activity-user">Albert Andersen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">270</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1005</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-red">25</h6>
                                                        </td>
                                                       <!-- <td class="text-right"><i class="fas fa-circle text-c-red f-10"></i></td> -->
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">270</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1005</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-red">25</h6>
                                                        </td>
                                                       
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">270</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1005</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-red">25</h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-3.jpg" alt="activity-user">Silje Larsen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">270</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1005</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0 text-c-red">25</h6>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>User</th>
                                                         <!--<th>Activity</th> -->
                                                        <th>points</th>
                                                        
                                                        <th class="text-right"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-3.jpg" alt="activity-user">Silje Larsen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1250</h6>
                                                        </td>
                                                        
                                                        <!-- <td class="text-right"><i class="fas fa-circle text-c-purple f-10"></i></td> -->
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1250</h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-2.jpg" alt="activity-user">Albert Andersen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1250</h6>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <h6 class="m-0"><img class="rounded-circle  m-r-10" style="width:40px;" src="assets/images/user/avatar-1.jpg" alt="activity-user">Ida Jorgensen</h6>
                                                        </td>
                                                        <td>
                                                            <h6 class="m-0">1250</h6>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>

                           
 <?php include ('./includes/footer.php'); ?>
 </body>
    </html> 
<?php }?>

