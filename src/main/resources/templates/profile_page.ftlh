<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description">

    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<header class="container-fluid bg-dark">
    <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand text-light" href="/flow">Главная</a>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link text-light" href="/signUp">Регистрация</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-light" href="/profile">Профиль</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-light" href="/signIn">Вход</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-light" href="/createEvent">Создать событие</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-light" href="/deleteEvent">Удалить событие</a>
                </li>
            </ul>
        </div>
    </nav>
</header>

<body class="container p-5 m-5">
<div class="d-flex justify-content-center p-5 m-5">
    <div class="text-center">
        <h1>PROFILE</h1>
    </div>
    <div class="p-5 m-5">
        <h2>Your email:</h2>
        <h2>${ user.username }</h2>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>

</body>
</html>