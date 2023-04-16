<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Авторизация</title>
    <link rel="stylesheet" href="css/${"authorisation.css"}">
</head>
<body>

<div class="form">
    <h1>Авторизация</h1>
    <form action="/authorisation" method="post" enctype="multipart/form-data">
        <div class="input-form">
            <input type="email" placeholder="Логин" name="email">
        </div>
        <div class="input-form">
            <input type="password" placeholder="Пароль" name="password">
        </div>
        <div class="input-form">
            <input type="submit" value="Войти">
        </div>
        <a href="/registration">Регистрация</a>
    </form>
</div>

</body>
</html>