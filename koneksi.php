<?php
include_once "env.php";
date_default_timezone_set('Asia/Jakarta');

//create connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

//check apakah ada eror connection
if($conn->connect_error){
    die("Connection failed : ".$conn->connect_error);
}

//echo "Connected successfully<hr>";
?>