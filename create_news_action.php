<?php

    require_once __DIR__ . '/includes/session2.php';
    require_once __DIR__ . '/includes/connection.php';


    $sid = $_POST['sid'];
    $news_name = $_POST['newsname'];
    $date = $_POST['date'];
    
    $image = $_FILES['image']['name'];
    $content = $_POST['content'];

    // image file directory
  	$target = "images/".basename($image);


    $query = "INSERT INTO news (staff_id, news_name, date, image, content) VALUES({$sid}, '{$news_name}', '{$date}', '{$image}', '{$content}')";
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
    }else{
        $msg = "Failed to upload image";
    }
    if (mysqli_query($dbConnect, $query)){
        //Success
        header("Location: manage_news.php");
        exit;
    }else{
        echo "<p>Blog creation failed.</p>";
        echo "<p>" . mysqli_error($dbConnect) . "</p>";
    }
      


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>