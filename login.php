<?php
    session_start();
    require('connection.php');
    if(isset($_POST['Email']) and isset($_POST['Login'])) {
        $Email = $_POST['Email'];
        $Login = $_POST['Login'];

        $query = "SELECT * FROM autorization_info WHERE Email = '$Email' and Login = '$Login'";
        $result = mysqli_query($link, $query) or die(mysqli_error($link));
        $count = mysqli_num_rows($result);

        if($count == 1) {
            $query = "SELECT * FROM departament_users WHERE autorization_info_ID = (SELECT ID FROM autorization_info WHERE Email = '$Email')";
            // $query = "SELECT * FROM departament_users WHERE autorization_info_ID = 2";
            $resultName = mysqli_query($link, $query) or die(mysqli_error($link));
            $row = mysqli_fetch_row($resultName);

            // Cookie
            setcookie ("name", "");
            setcookie ("surName", "");
            setcookie ("fatherName", "");
            setcookie("mail", "");

            setcookie("name", $row[1]);
            setcookie("surName", $row[2]);
            setcookie("fatherName", $row[3]);
            setcookie("mail", $Email);
            // 

            if(!isset($_COOKIE["fatherName"]))
                setcookie("fatherName", " ");
            

            header('Location: personal.php');
            exit;
        } else {
            echo "<h1>Такого пользователяне существует</h1></br><hr> <a href='index.php'>НАЗАД</a>";
        }
    }
?>