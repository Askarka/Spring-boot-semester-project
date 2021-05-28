<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description">

    <title>Delete event</title>


    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

</head>

<body class="text-center container">

<div class="p-5 m-5">

    <div class="d-flex justify-content-center p-4 m-4">
        <h1>Enter the name of the event you want to delete:</h1>
    </div>

    <form class="form-signin" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <label for="inputEmail" class="sr-only">Name of the event to delete</label>
        <br>
        <input name="name" type="text" id="input" class="p-3 m-3 form-control" placeholder="" required autofocus>
        <button class="p-3 m-3 btn btn-lg btn-primary btn-block" type="submit">Delete</button>
    </form>

</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

</body>
</html>