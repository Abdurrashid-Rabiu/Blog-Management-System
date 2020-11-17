<?php

    require_once __DIR__ . '/includes/session.php';
    require_once __DIR__ . '/includes/connection.php';


    

    $id = $_GET['id'];

    $query = "DELETE FROM staff WHERE id = {$id}";
    
    if (mysqli_query($dbConnect, $query)){
        //Success
        header("Location: remove_staff.php");
        exit;
    }else{
        echo "<p> Staff deletion failed. </p>";
        echo "<p>" . mysqli_error($dbConnect) . "</p>";
    }
      


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>