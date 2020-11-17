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
                <li>
                  <a href="blogs.php" class="nav-link text-left">Blogs</a>
                </li>
                <li class="active">
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
              <h2 class="mb-0">News</h2>
              <p>Lorem ipsum dolor sit amet consectetur adipisicing.</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="index.php">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">News</span>
      </div>
    </div>

    <div class="site-section">
        <div class="container">
            <?php
              $query = "SELECT * FROM news";
              $result_set = mysqli_query($dbConnect, $query) or die("Database query failed: " . mysqli_error($dbConnect));

              if ($found_news = mysqli_fetch_array($result_set)) {
                echo "<div class='row'>";
                  echo "<div class='col-lg-6'>";
                    echo "<div class='post-entry-big'>";
                      echo "<a href='read_news.php?id={$found_news['id']}' class='img-link'><img src='images/" .$found_news['image']."'" . "alt='Image' class='img-fluid'></a>";
                      echo "<div class='post-content'>";
                        echo "<h3 class='post-heading'><a href='read_news.php?id={$found_news['id']}'>{$found_news['news_name']}</a></h3>";
                      echo "</div>";
                    echo "</div>";
                  echo "</div>";
                echo "</div>";
              }
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