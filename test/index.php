<?php include 'includes/connection.php'; ?>
<?php include 'includes/header.php'; ?>

  <div id="page">
  <?php include 'includes/nav.php'; ?>

  <main id="content">
      <!--carousel section-->
      <div class="carousel">
      <?php
            $dis='';
            $sql = "SELECT * FROM posts WHERE post_status='publish' AND for_carousel ='1' ORDER BY post_date DESC LIMIT 3";
            $query = mysqli_query($conn, $sql) or die(mysqli_error($conn));

            while ($row = mysqli_fetch_array($query)) { 
              $post_title = $row['post_title'];
              $post_id = $row['post_id'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
              $post_content = $row['post_content'];
              $post_tags = $row['post_tag'];
              $post_status = $row['post_status'];
              $for_carousel = $row['for_carousel'];
              if ($post_status !== 'publish' && $for_carousel == 0) {
                echo "NO POST PLS";
              } else {
            
                $dis.='
        <div class="progress-bar progress-bar--primary hide-on-desktop">
          <div class="progress-bar__fill"></div>
        </div>

        <header class="main-post-wrapper">
          <div class="slides">
            
            <article class="main-post main-post--active">
              <div class="main-post__image">
                <img
                  src="../asset/images/'. $post_image.'"
                  alt="slide image" />
              </div>
              <div class="main-post__content">
                <div class="main-post__tag-wrapper">
                  <span class="main-post__tag">'. $post_tags .'</span>
                </div>
                <h1 class="main-post__title">
                  '.$post_title.'
                </h1>
                <a class="main-post__link" href="#">
                  <span class="main-post__link-text">find out more</span>
                  <svg class="main-post__link-icon main-post__link-icon--arrow" width="37" height="12"
                    viewBox="0 0 37 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M0 6H36.0001M36.0001 6L31.0001 1M36.0001 6L31.0001 11" stroke="white" />
                  </svg>
                </a>
              </div>
            </article>
           
          </div>
        </header>

        <div class="posts-wrapper hide-on-mobile">
          <article class="post post--active">
            <div class="progress-bar">
              <div class="progress-bar__fill"></div>
            </div>
            <header class="post__header">
              <span class="post__tag">'.$post_tags.'</span>
              <p class="post__published">'.$post_date.'</p>
            </header>
            <h2 class="post__title">'.$post_title.'</h2>
          </article>
          
        </div>';
              }
            }

        echo $dis; ?>
      </div>


      <div id="page-container">

        <div id="article-container">

          <div class="left-section">
            <div class="news-container">
              <div class="content-width">
                <h2>Latest News</h3>
                
                  <ul>
                  <?php
            $dis2='';
            $sql2 = "SELECT posts.post_id, categories.cat_title, posts.post_title, posts.post_author, posts.post_date, posts.post_image, posts.post_content, posts.post_tag, posts.post_status FROM posts INNER JOIN categories ON posts.post_category_id = categories.cat_id ORDER BY post_date DESC LIMIT 8";
            $query2 = mysqli_query($conn, $sql2) or die(mysqli_error($conn));

           while ($row = mysqli_fetch_array($query2)) {
              $post_title = $row['post_title'];
              $post_id = $row['post_id'];
              $post_author = $row['post_author'];
              $post_date = $row['post_date'];
              $post_image = $row['post_image'];
              $post_content = $row['post_content'];
              $post_tags = $row['post_tag'];
              $post_status = $row['post_status'];
              $categories = $row['cat_title'];
              if ($post_status !== 'Publish') {
                echo "NO POST PLS";
              } else {
                
                  
                
                $dis2.='

                    <li class="card">
                      <a href="/post.php/'. $post_id.'" data-count="48"
                        data-category="Software Development" data-percent="100" data-quartile="4">
                        <div class="img-box l-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="../asset/images/'. $post_image.'">
                        </div>
                        <div class="card-details">
                          <h4>'. $post_title .'</h4>
                          <p>'. $post_tags .'</p>
                          <p class="hidden">'.substr($post_content, 0, 50 ).'</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>';
                  }
                }
                  echo $dis2; ?>

                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More News</a>
              </div>


            </div>

            <div class="news-container  f-news-container">
              <div class="content-width">
                <h2>Fantasy update</h3>
                  <ul>


                    <li class="card">
                      <a href="/search-jobs?acm=Software%20Development" data-count="48"
                        data-category="Software Development" data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-software-dev.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Software Development</h4>
                          <p>48 Open Roles</p>
                          <p class="hidden">Technology connects us with our viewers. Making an
                            impact through
                            tech is our passion.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Information%20Technology" data-count="3"
                        data-category="Information Technology" data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-info-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Information Technology</h4>
                          <p>3 Open Roles</p>
                          <p class="hidden">Always innovating. Provide best in class hardware,
                            software, and
                            technical support services.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Technical%20Program%20Management" data-count="2"
                        data-category="Technical Program Management" data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Technical Program Management</h4>
                          <p>2 Open Roles</p>
                          <p class="hidden">Manage change and plan for it. Gain great exposure
                            to multitude of
                            projects, technologies & big picture strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Data%20and%20Analytics" data-count="10"
                        data-category="Data and Analytics" data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-data.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Data and Analytics</h4>
                          <p>10 Open Roles</p>
                          <p class="hidden">Data drives Hulu. Deliver actionable results for
                            our viewers and
                            our product. </p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Advertising%20Sales%20and%20Operations" data-count="16"
                        data-category="Advertising Sales and Operations" data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-advert-sales-ops.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Advertising Sales and Operations</h4>
                          <p>16 Open Roles</p>
                          <p class="hidden">Turn innovative ideas into solutions. Work with
                            major clients
                            while selling an in-demand product.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Product%20Management" data-count="6" data-category="Product Management"
                        data-percent="100" data-quartile="4">
                        <div class="img-box f-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-prod-mgmt.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Product Management</h4>
                          <p>6 Open Roles</p>
                          <p class="hidden">Drive innovation through new feature ideas and
                            big-picture
                            strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>








                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More News</a>
              </div>

            </div>

            <div class="news-container vid-container">
              <div class="content-width vid-c-w">
                <h2>Videos</h3>
                  <ul class="grid-5">

                    <div class="left col">
                      <li class="card thumbnail-lg">

                        <a href="/search-jobs?acm=Software%20Development" data-count="48"
                          data-category="Software Development" data-percent="100" data-quartile="4">
                          <svg class="video-hero__banner-image__play-icon" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 35 40">
                            <path
                              d="M0 3.29C0 .743 2.805-.835 5.017.468l28.361 16.71c2.163 1.273 2.163 4.373 0 5.645L5.018 39.533C2.804 40.836 0 39.257 0 36.709V3.291z">
                            </path>
                          </svg>
                          <div class="img-box vid">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-software-dev.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Software Development</h4>
                            <p>48 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>
                    </div>

                    <div class="right col">
                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Information%20Technology" data-count="3"
                          data-category="Information Technology" data-percent="100" data-quartile="4">
                          <svg class="video-hero__banner-image__play-icon" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 35 40">
                            <path
                              d="M0 3.29C0 .743 2.805-.835 5.017.468l28.361 16.71c2.163 1.273 2.163 4.373 0 5.645L5.018 39.533C2.804 40.836 0 39.257 0 36.709V3.291z">
                            </path>
                          </svg>
                          <div class="img-box vid">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-info-tech.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Information Technology</h4>
                            <p>3 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Technical%20Program%20Management" data-count="2"
                          data-category="Technical Program Management" data-percent="100" data-quartile="4">
                          <svg class="video-hero__banner-image__play-icon" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 35 40">
                            <path
                              d="M0 3.29C0 .743 2.805-.835 5.017.468l28.361 16.71c2.163 1.273 2.163 4.373 0 5.645L5.018 39.533C2.804 40.836 0 39.257 0 36.709V3.291z">
                            </path>
                          </svg>
                          <div class="img-box vid">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-tech.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Technical Program Management</h4>
                            <p>2 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Data%20and%20Analytics" data-count="10"
                          data-category="Data and Analytics" data-percent="100" data-quartile="4">
                          <svg class="video-hero__banner-image__play-icon" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 35 40">
                            <path
                              d="M0 3.29C0 .743 2.805-.835 5.017.468l28.361 16.71c2.163 1.273 2.163 4.373 0 5.645L5.018 39.533C2.804 40.836 0 39.257 0 36.709V3.291z">
                            </path>
                          </svg>
                          <div class="img-box vid">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-data.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Data and Analytics</h4>
                            <p>10 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Advertising%20Sales%20and%20Operations" data-count="16"
                          data-category="Advertising Sales and Operations" data-percent="100" data-quartile="4">
                          <svg class="video-hero__banner-image__play-icon" xmlns="http://www.w3.org/2000/svg"
                            viewBox="0 0 35 40">
                            <path
                              d="M0 3.29C0 .743 2.805-.835 5.017.468l28.361 16.71c2.163 1.273 2.163 4.373 0 5.645L5.018 39.533C2.804 40.836 0 39.257 0 36.709V3.291z">
                            </path>
                          </svg>
                          <div class="img-box vid">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-advert-sales-ops.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Advertising Sales and Operations</h4>
                            <p>16 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>

                    </div>

                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More Videos</a>
              </div>


            </div>

            <div class="news-container nt-news-container">
              <div class="content-width">
                <h2>National Team</h3>
                  <ul>


                    <li class="card">
                      <a href="/search-jobs?acm=Software%20Development" data-count="48"
                        data-category="Software Development" data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-software-dev.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Software Development</h4>
                          <p>48 Open Roles</p>
                          <p class="hidden">Technology connects us with our viewers. Making an
                            impact through
                            tech is our passion.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Information%20Technology" data-count="3"
                        data-category="Information Technology" data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-info-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Information Technology</h4>
                          <p>3 Open Roles</p>
                          <p class="hidden">Always innovating. Provide best in class hardware,
                            software, and
                            technical support services.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Technical%20Program%20Management" data-count="2"
                        data-category="Technical Program Management" data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Technical Program Management</h4>
                          <p>2 Open Roles</p>
                          <p class="hidden">Manage change and plan for it. Gain great exposure
                            to multitude of
                            projects, technologies & big picture strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Data%20and%20Analytics" data-count="10"
                        data-category="Data and Analytics" data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-data.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Data and Analytics</h4>
                          <p>10 Open Roles</p>
                          <p class="hidden">Data drives Hulu. Deliver actionable results for
                            our viewers and
                            our product. </p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Advertising%20Sales%20and%20Operations" data-count="16"
                        data-category="Advertising Sales and Operations" data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-advert-sales-ops.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Advertising Sales and Operations</h4>
                          <p>16 Open Roles</p>
                          <p class="hidden">Turn innovative ideas into solutions. Work with
                            major clients
                            while selling an in-demand product.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Product%20Management" data-count="6" data-category="Product Management"
                        data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-prod-mgmt.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Product Management</h4>
                          <p>6 Open Roles</p>
                          <p class="hidden">Drive innovation through new feature ideas and
                            big-picture
                            strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Marketing%20and%20PR" data-count="17" data-category="Marketing and PR"
                        data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-marketing.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Marketing and PR</h4>
                          <p>17 Open Roles</p>
                          <p class="hidden">We believe that great storytelling connects us.
                            Come build that
                            story.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Internship" data-count="12" data-category="Internship"
                        data-percent="100" data-quartile="4">
                        <div class="img-box technology">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-interns.jpg"
                            alt="Content">
                        </div>
                        <div class="card-details">
                          <h4>Internships</h4>
                          <p>12 Open Roles</p>
                          <p class="hidden">No getting coffee here. Work on real projects that
                            impact our
                            business.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>




                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More</a>
              </div>


            </div>

            <div class="news-container vid-container gal">
              <div class="content-width vid-c-w">
                <h2>Gallery</h3>
                  <ul class="grid-5">

                    <div class="left col">
                      <li class="card thumbnail-lg">
                        <a href="/search-jobs?acm=Software%20Development" data-count="48"
                          data-category="Software Development" data-percent="100" data-quartile="4">
                          <div class="img-box">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-software-dev.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Software Development</h4>
                            <p>48 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>
                    </div>

                    <div class="right col">
                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Information%20Technology" data-count="3"
                          data-category="Information Technology" data-percent="100" data-quartile="4">
                          <div class="img-box">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-info-tech.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Information Technology</h4>
                            <p>3 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Technical%20Program%20Management" data-count="2"
                          data-category="Technical Program Management" data-percent="100" data-quartile="4">
                          <div class="img-box">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-tech.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Technical Program Management</h4>
                            <p>2 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Data%20and%20Analytics" data-count="10"
                          data-category="Data and Analytics" data-percent="100" data-quartile="4">
                          <div class="img-box">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-data.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Data and Analytics</h4>
                            <p>10 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>



                      <li class="card thumbnail">
                        <a href="/search-jobs?acm=Advertising%20Sales%20and%20Operations" data-count="16"
                          data-category="Advertising Sales and Operations" data-percent="100" data-quartile="4">
                          <div class="img-box">
                            <img class="lazy"
                              data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                              src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-advert-sales-ops.jpg">
                          </div>
                          <div class="card-details">
                            <h4>Advertising Sales and Operations</h4>
                            <p>16 Open Roles</p>

                          </div>
                          <i class="overlay" aria-hidden="true"></i>
                        </a>
                      </li>

                    </div>

                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More News</a>
              </div>


            </div>

            <div class="news-container  f-news-container">
              <div class="content-width">
                <h2>Continental Competition</h3>
                  <ul>


                    <li class="card">
                      <a href="/search-jobs?acm=Software%20Development" data-count="48"
                        data-category="Software Development" data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-software-dev.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Software Development</h4>
                          <p>48 Open Roles</p>
                          <p class="hidden">Technology connects us with our viewers. Making an
                            impact through
                            tech is our passion.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Information%20Technology" data-count="3"
                        data-category="Information Technology" data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-info-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Information Technology</h4>
                          <p>3 Open Roles</p>
                          <p class="hidden">Always innovating. Provide best in class hardware,
                            software, and
                            technical support services.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Technical%20Program%20Management" data-count="2"
                        data-category="Technical Program Management" data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-tech.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Technical Program Management</h4>
                          <p>2 Open Roles</p>
                          <p class="hidden">Manage change and plan for it. Gain great exposure
                            to multitude of
                            projects, technologies & big picture strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Data%20and%20Analytics" data-count="10"
                        data-category="Data and Analytics" data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-data.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Data and Analytics</h4>
                          <p>10 Open Roles</p>
                          <p class="hidden">Data drives Hulu. Deliver actionable results for
                            our viewers and
                            our product. </p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Advertising%20Sales%20and%20Operations" data-count="16"
                        data-category="Advertising Sales and Operations" data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-advert-sales-ops.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Advertising Sales and Operations</h4>
                          <p>16 Open Roles</p>
                          <p class="hidden">Turn innovative ideas into solutions. Work with
                            major clients
                            while selling an in-demand product.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>



                    <li class="card">
                      <a href="/search-jobs?acm=Product%20Management" data-count="6" data-category="Product Management"
                        data-percent="100" data-quartile="4">
                        <div class="img-box c-news">
                          <img class="lazy"
                            data-src-placeholder="https://tbcdn.talentbrew.com/company/27593/v1_0/img/lazy-card.png"
                            src="https://tbcdn.talentbrew.com/company/27593/v1_0/img/category-card/job-category-thumb-prod-mgmt.jpg">
                        </div>
                        <div class="card-details">
                          <h4>Product Management</h4>
                          <p>6 Open Roles</p>
                          <p class="hidden">Drive innovation through new feature ideas and
                            big-picture
                            strategies.</p>
                        </div>
                        <i class="overlay" aria-hidden="true"></i>
                      </a>
                    </li>

                  </ul>
                  <a href="/job-categories" class="btn all-jobs">More News</a>
              </div>

            </div>



          </div>

          <div class="right-section">

              <div class="stats-container">
                <div class="player-container">
                  <div class ="header">
                    <h4>Goals </h4>
                  </div>
                <div class="player-image">
                  <img src="https://www.thesportsdb.com/images/media/player/cutout/154cn11557827597.png">
                </div>
                  <div class=" player stat-card">
                  <div class="info">
                        <div class="name ng-binding">Sergio Aguero</div>
                        
                        <div class="team ng-binding">Manchester City</div>
                      </div>
                  <div class="jersey">
                        <div class="number ng-binding"><span>#</span>20</div>
                    </div>
                  </div>
                  
                  <!--medium player card -->
                   <div class="players">
                    <div class="player stat-card ">
                      <div class="pic">
                        <img ng-src="http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/RYA238179.png" src="http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/RYA238179.png">
                      </div>
                      <div class="info">
                        <div class="name ng-binding">Harry Kane</div>
                        
                        <div class="team ng-binding">Tottenham</div>
                        <div class="logo">
                          <img ng-src="https://i.imgur.com/GOthDYB.jpg" src="https://i.imgur.com/GOthDYB.jpg">
                        </div>
                      </div>
                      <div class="jersey">
                        <div class="number ng-binding"><span>#</span>19</div>
                      </div>
                    </div>
                  </div>
                  <!--medium player card -->
                  </div>
       
                 <div class="player-container">
                  <div class ="header">
                    <h4>Assist </h4>
                  </div>
                <div class="player-image">
                  <img src="https://www.thesportsdb.com/images/media/player/cutout/154cn11557827597.png">
                </div>
                  <div class=" player stat-card">
                  <div class="info">
                        <div class="name ng-binding">Sergio Aguero</div>
                        
                        <div class="team ng-binding">Manchester City</div>
                      </div>
                  <div class="jersey">
                        <div class="number ng-binding"><span>#</span>20</div>
                    </div>
                  </div>
                  
                  <!--medium player card -->
                   <div class="players">
                    <div class="player stat-card ">
                      <div class="pic">
                        <img ng-src="http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/RYA238179.png" src="http://static.nfl.com/static/content/public/static/img/fantasy/transparent/200x200/RYA238179.png">
                      </div>
                      <div class="info">
                        <div class="name ng-binding">Harry Kane</div>
                        
                        <div class="team ng-binding">Tottenham</div>
                        <div class="logo">
                          <img ng-src="https://i.imgur.com/C0NeRos.png" src="https://i.imgur.com/C0NeRos.png">
                        </div>
                      </div>
                      <div class="jersey">
                        <div class="number ng-binding"><span>#</span>19</div>
                      </div>
                    </div>
                  </div>
                  <!--medium player card -->
                  </div>
              </div>
          </div>

        </div>
      </div>
    </main>

    <?php include 'includes/footnav.php'; ?>
  </div>


  <?php include 'includes/footer.php'; ?>

</body>

</html>