<?php

    require_once __DIR__ . '/includes/session.php';
    require_once __DIR__ . '/includes/connection.php';


    $aid = $_POST['aid'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashed_password = sha1($password);
    $image = $_FILES['image']['name'];

    // image file directory
  	$target = "images/".basename($image);


    $query = "INSERT INTO staff (admin_id, username, hashed_password, image) VALUES({$aid}, '{$username}', '{$hashed_password}', '{$image}')";
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
        $msg = "Image uploaded successfully";
    }else{
        $msg = "Failed to upload image";
    }
    if (mysqli_query($dbConnect, $query)){
        //Success
        header("Location: manage_staff.php");
        exit;
    }else{
        echo "<p> Subject creation failed. </p>";
        echo "<p>" . mysqli_error($dbConnect) . "</p>";
    }
      


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>