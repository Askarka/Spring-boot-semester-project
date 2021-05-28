<#import "spring.ftl" as spring />
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>

</head>
<body>
<div class="p-5 m-5">

    <div class="d-flex justify-content-center p-4 m-4">
        <h1>SIGN UP</h1>
    </div>
<form class="main_form" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="inputEmail4">Email</label>
            <input name="email" type="text" class="form-control" id="inputName4">
        </div>
        <div class="form-group col-md-6">
            <label for="inputPassword4">Password</label>
            <input name="password" type="password" class="form-control" id="inputPassword4">
        </div>
    </div>
    <div class="form-group ">
        <label for="inputAddress">Name</label>
        <input name="name" type="text" class="form-control" id="inputAddress5" placeholder="Иван">
    </div>
    <div class="form-group ">
        <label for="inputAddress">Surname</label>
        <input name="surname"type="text" class="form-control" id="inputAddress" placeholder="Сергеевич">
    </div>
<#--    <div class="form-group">-->
<#--        <div class="form-check">-->
<#--            <label class="form-check-label">-->
<#--                <input name="remember-me" class="form-check-input" type="checkbox"> Remember me-->
<#--            </label>-->
<#--        </div>-->
<#--    </div>-->
    <button type="submit" class="btn btn-primary d-block">Sign up</button>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
