<?php

    require_once __DIR__ . '/includes/session2.php';
    require_once __DIR__ . '/includes/connection.php';


    $sid = $_POST['sid'];
    $article_name = $_POST['articlename'];
    $date = $_POST['date'];
    
    $image = $_FILES['image']['name'];
    $content = $_POST['content'];

    // image file directory
  	$target = "images/".basename($image);


    $query = "INSERT INTO articles (staff_id, article_name, date, image, content) VALUES({$sid}, '{$article_name}', '{$date}', '{$image}', '{$content}')";
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
    }else{
        $msg = "Failed to upload image";
    }
    if (mysqli_query($dbConnect, $query)){
        //Success
        header("Location: manage_blogs.php");
        exit;
    }else{
        echo "<p>Blog creation failed.</p>";
        echo "<p>" . mysqli_error($dbConnect) . "</p>";
    }
      


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>