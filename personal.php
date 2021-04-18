<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Моя страница</title>
    <link rel="stylesheet" href="css/style.min.css">
</head>
<body>
    <div class="wrapp">
        <header class="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="personal.php">AllEducation</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                <a class="nav-item nav-link active" href="personal.php">Главная</a>
                <!-- <button class="nav-item nav-link" >Features</button>
                <button class="nav-item nav-link">Pricing</button>
                <button class="nav-item nav-link disabled">Disabled</button> -->
                </div>
            </div>
        </div>
    </nav>
</header>
        <div class="container">
            <div class="user">
                <div class="user__container">
                    <div class="user__block">
                        <div class="user__information">
                            <div class="user__img">
                                <picture><source srcset="img/human.webp" type="image/webp"><img src="img/human.png" alt="photo"></picture>
                            </div>
                            <div class="user__data">
                                <div class="user__name">
                                    <span><?php echo $_COOKIE["surName"]; ?></span>
                                    <span><?php echo $_COOKIE["name"]; ?></span>
                                    <span><?php echo $_COOKIE["fatherName"]; ?></span>
                                </div>
                                <div class="user__education"><span>УАвиаК-МЦК</span></div>
                            </div>
                            <a href="logout.php" class="btn btn-outline-danger btn__logout">ВЫЙТИ</a>
                        </div>
                        <hr>
                        <div class="user__capabilities">
                            <div class="user__capabilities-container">
                                <a href="education.php" class="btn btn-outline-secondary">ОБРАЗОВАТЕЛНОЕ УЧРЕЖДЕНИЯ</a>
                                <a class="btn btn-outline-secondary">BTN</a>
                                <a class="btn btn-outline-secondary">BTN</a>
                                <a class="btn btn-outline-secondary">BTN</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
    <!-- <script src="js/script.js"></script> -->
</body>
</html>