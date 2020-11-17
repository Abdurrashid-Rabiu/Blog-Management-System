<!DOCTYPE html>
<html lang="en">

<?php

  require_once __DIR__ . '/includes/session2.php';
  require_once __DIR__ . '/includes/connection.php';

?>
<?php
  require __DIR__ . '/includes/header.php';
?>
<?php
  confirm_logged_in();
?>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="#" class="d-block">
              Delete News Page
            </a>
          </div>
          
          <div class="ml-auto">
            <a href="index.php" class="nav-link text-left">Homepage</a>
          </div>
         
        </div>
      </div>

    </header>
    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href=""></a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current"></span>
      </div>
    </div>
<?php
echo "<div class='site-section'>";
    echo "<div class='container'>";

        $query = "SELECT * FROM news";
        $result_set = mysqli_query($dbConnect, $query) or die("Database query failed: " . mysqli_error($dbConnect));

        
        while ($found_news = mysqli_fetch_array($result_set)) {
            echo "<div class='row'>";
                echo "<div class='col-lg-6'>";
                    echo "<div class='post-entry-big horizontal d-flex mb-4'>";
                        echo "<img src='images/" .$found_news['image']."'" . "alt='Image' class='img-fluid'>";
                        echo "<div class='post-content'>";
                        echo "<div class='post-meta'>";
                            echo "<a href='delete_news_action.php?id={$found_news['id']}' class='btn btn-primary rounded-0 px-4'>Remove</a>";
                        echo "</div>";
                            echo "<h3 class='post-heading'>{$found_news['news_name']}</h3>";
                        echo "</div>";
                    echo "</div>";
                echo "</div>";
            echo "</div>";
        }
        
      
    echo "</div>";
echo "</div>";
?>

<div class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-3">
          <h3 class="footer-heading"><span>My Blog</span></h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae nemo minima qui dolor, iusto iure.</p>  
            <p><a href="#">Learn More</a></p>
          </div>
          <div class="col-lg-3">
            <h3 class="footer-heading"><span>Our Campus</span></h3>
            <ul class="list-unstyled">
                <li><a href="#">Acedemic</a></li>
                <li><a href="#">News</a></li>
                <li><a href="#">Our Interns</a></li>
                <li><a href="#">Our Leadership</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Human Resources</a></li>
            </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Our Courses</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Math</a></li>
                  <li><a href="#">Science &amp; Engineering</a></li>
                  <li><a href="#">Arts &amp; Humanities</a></li>
                  <li><a href="#">Economics &amp; Finance</a></li>
                  <li><a href="#">Business Administration</a></li>
                  <li><a href="#">Computer Science</a></li>
              </ul>
          </div>
          <div class="col-lg-3">
              <h3 class="footer-heading"><span>Contact</span></h3>
              <ul class="list-unstyled">
                  <li><a href="#">Help Center</a></li>
                  <li><a href="#">Support Community</a></li>
                  <li><a href="#">Press</a></li>
                  <li><a href="#">Share Your Story</a></li>
                  <li><a href="#">Our Supporters</a></li>
              </ul>
          </div>
        </div>

        <div class="row">
          <div class="col-12">
            <div class="copyright">
                <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    

  </div>
  <!-- .site-wrap -->


  <!-- loader -->
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>
<?php
    if(isset($dbConnect)){
        mysqli_close($dbConnect);
    }
?>