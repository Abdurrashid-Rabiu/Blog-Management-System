<?php require __DIR__ . '/includes/connection.php'; ?>
<!DOCTYPE html>
<html lang="en">

<?php require __DIR__ . '/includes/header.php'; ?>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="index.php" class="d-block">
              My Blog
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li>
                  <a href="index.php" class="nav-link text-left">Home</a>
                </li>
                <li class="active">
                  <a href="blogs.php" class="nav-link text-left">Blogs</a>
                </li>
                <li>
                  <a href="news.php" class="nav-link text-left">News</a>
                </li>
                <li>
                  <a href="about.php" class="nav-link text-left">About Us</a>
                </li>
                <li>
                  <a href="contact.php" class="nav-link text-left">Contact</a>
                </li>
              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <div class="social-wrap">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-linkedin"></span></a>

              <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
            </div>
          </div>
         
        </div>
      </div>

    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end">
            <div class="col-lg-7">
              <h2 class="mb-0">Blogs</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="index.php">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Blogs</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">
        <?php
          $query = "SELECT * FROM articles";
          $result_set = mysqli_query($dbConnect, $query) or die("Database query failed: " . mysqli_error($dbConnect));

            echo "<div class='row'>";
              echo "<div class='col-lg-4 col-md-6 mb-4'>";
                while ($found_blog = mysqli_fetch_array($result_set)) {
                  echo "<div class='course-1-item'>";
                    echo "<figure class='thumnail'>";
                      echo "<a href='read_blog.php?id={$found_blog['id']}'><img src='images/" .$found_blog['image']."'" . "alt='Image' class='img-fluid'></a>";
                    echo "</figure>";
                    echo "<div class='course-1-content pb-4'>";
                      echo "<h2>{$found_blog['article_name']}</h2>";
                      echo "<div class='rating text-center mb-3'>";
                        echo "<span class='icon-star2 text-warning'></span>";
                        echo "<span class='icon-star2 text-warning'></span>";
                        echo "<span class='icon-star2 text-warning'></span>";
                        echo "<span class='icon-star2 text-warning'></span>";
                        echo "<span class='icon-star2 text-warning'></span>";
                      echo "</div>";
                      echo "<p><a href='read_blog.php?id={$found_blog['id']}' class='btn btn-primary rounded-0 px-4'>Read Blog</a></p>";
                    echo "</div>";
                  echo "</div>";
                }
              echo "</div>";
            echo "</div>";
        ?>
        </div>
    </div>

      
<?php require __DIR__ . '/includes/footer.php'; ?>

</html>
<?php
  if(isset($dbConnect)){
    mysqli_close($dbConnect);
  }
?>