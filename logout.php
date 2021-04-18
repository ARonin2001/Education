<?php
    session_start();
    unset($_SESSION["name"]);
    unset($_SESSION["surName"]);
    unset($_SESSION["fatherName"]);
    header("Location: index.php");
?>