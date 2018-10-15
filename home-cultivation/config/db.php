<?php
class db {
    public function connectDataBase(){
        $servername = "localhost";
        $database = "homecultivation";
        $username = "rw_homecultivation";
        $password = "9FFAF2W9HRA5nwfB";
        $conn = mysqli_connect($servername, $username, $password, $database);
        $conn->set_charset("utf8");
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        return $conn;
    }
}
?>