<?php

    require_once __DIR__ . '/includes/session2.php';
    require_once __DIR__ . '/includes/connection.php';


    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashed_password = sha1($password);

    $query = "SELECT id, username FROM staff WHERE username = '{$username}' AND hashed_password = '{$hashed_password}' ";
    $result_set = mysqli_query($dbConnect, $query) or die("Database query failed: " . mysqli_error($dbConnect));

    
    if (mysqli_num_rows($result_set) == 1) {
        $found_staff = mysqli_fetch_assoc($result_set);
        $_SESSION["staff_id"] = $found_staff["id"];
        $_SESSION["staff_name"] = $found_staff["username"];

        header("Location: staff_page.php?id={$found_staff['id']}");
    }
    else {
        echo "Please make sure you supply the correct combination of username and password";
    }


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>