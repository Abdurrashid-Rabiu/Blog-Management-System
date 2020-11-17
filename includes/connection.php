<?php

    $serverName = "localhost";
    $userName = "root";
    $password = "";
    $dbName = "blog";

    $dbConnect = mysqli_connect($serverName, $userName, $password, $dbName) or die("Database connection failed!");

?>