<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Пример на bootstrap 4: Пользовательская форма и дизайн для простой формы входа. Версия v4.6.">

    <title>Sign in</title>


    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>
<body class="text-center container">

<div class="p-5 m-5">

    <div class="d-flex justify-content-center p-4 m-4">
        <h1>SIGN IN</h1>
    </div>

<form class="form-signin" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <label for="inputEmail" class="sr-only">Email address</label>
    <br>
    <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
    <label for="inputPassword" class="sr-only">Password</label>
    <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
<#--    <div class="checkbox mb-3">-->
<#--        <label>-->
<#--            <input name="remember-me" type="checkbox" value="remember-me"> Remember me-->
<#--        </label>-->
<#--    </div>-->
    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
</form>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

</body>
</html>