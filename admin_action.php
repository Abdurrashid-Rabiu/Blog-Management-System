<?php

    require_once __DIR__ . '/includes/session.php';
    require_once __DIR__ . '/includes/connection.php';


    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashed_password = sha1($password);

    $query = "SELECT id, username FROM admin WHERE username = '{$username}' AND hashed_password = '{$hashed_password}' ";
    $result_set = mysqli_query($dbConnect, $query) or die("Database query failed: " . mysqli_error($dbConnect));

    
    if (mysqli_num_rows($result_set) == 1) {
        $found_admin = mysqli_fetch_assoc($result_set);
        $_SESSION["admin_id"] = $found_admin["id"];
        $_SESSION["admin_name"] = $found_admin["username"];

        header("Location: admin_page.php?id={$found_admin['id']}");
    }
    else {
        echo "Please make sure you supply the correct combination of username and password";
    }


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>
