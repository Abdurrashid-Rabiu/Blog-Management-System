<?php

    require_once __DIR__ . '/includes/session2.php';
    require_once __DIR__ . '/includes/connection.php';


    

    $id = $_GET['id'];

    $query = "DELETE FROM news WHERE id = {$id}";
    
    if (mysqli_query($dbConnect, $query)){
        //Success
        header("Location: delete_news.php");
        exit;
    }else{
        echo "<p> News deletion failed. </p>";
        echo "<p>" . mysqli_error($dbConnect) . "</p>";
    }
      


if(isset($dbConnect)){
    mysqli_close($dbConnect);
}

?>