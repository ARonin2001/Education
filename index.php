<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
    <link rel="stylesheet" href="css/style.min.css">
</head>
<body>
    <div class="wrapp">
        <div class="container">
            <div class="form-main">
                <div class="form">
                    <div class="form__container">
                        <h1 class="main-title">Авторизация</h1>
                        <hr>
                        <form method="POST" action="login.php">
                            <div class="mb-3">
                              <label for="exampleInputEmail1" class="form-label">Login</label>
                              <input type="email" name="Email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                              <label for="exampleInputPassword1" class="form-label">Password</label>
                              <input type="password" name="Login" class="form-control" id="exampleInputPassword1">
                            </div>
                            <button type="submit" class="form__btn">ВОЙТИ</button>
                        </form>
                        <div class="form__icons">
                            <i class="fa-band-aid"></i>
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