<!doctype html>
<html lang="en" xmlns:form="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">

    <title>Creating event</title>
</head>
<body class="container-fluid bg-white p-0 m-0">
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

<div class="row justify-content-md-center">
    <div class="col-6">
    <h1>Создание своего мероприятия:</h1>
    <form action="/createEvent" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <div class="form-group">
            <label for="nameInput">Название вашего мероприятия</label>
            <input required name="name" type="text" class="form-control" id="nameInput">
        </div>
        <div class="form-group">
            <label for="dateInput">Дата и время</label>
            <input required name="date" type="datetime-local" class="form-control" id="dateInput">
        </div>
        <div class="form-group">
            <label for="addressInput">Адрес вашего мероприятия</label>
            <input required name="address" type="text" class="form-control" id="addressInput">
        </div>
        <div class="form-group">
            <label for="descriptionInput">Описание вашего мероприятия</label>
            <textarea required name="description" class="form-control" id="descripitonInput" rows="7"></textarea>
        </div>
        <br>
        <br>
        <div>
            <label for="categorySelect">Выберете категорию, подходящию для вашего мероприятия</label>
            <select required name="category" class="form-control" id="categorySelect">
                <#list categoryList as category>
                    <option value="${ category.id }">${ category.name }</option>
                </#list>
            </select>
        </div>
        <br>
        <div class="d-flex justify-content-center">
        <input value="Создать" type="submit" class="btn btn-primary "></input>
        </div>
    </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</body>
</html>