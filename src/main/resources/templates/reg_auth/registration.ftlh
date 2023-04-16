<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Регистрация</title>
    <link rel="stylesheet" href="css/${"authorisation.css"}">
</head>
<body>

<div class="form">
    <h1>Регистрация</h1>
    <form action="/registration" method="post" enctype="multipart/form-data">
        <div class="input-form">
            <input type="email" placeholder="Логин" name="email">
        </div>
        <div class="input-form">
            <input type="password" placeholder="Пароль" name="password">
        </div>
        <div class="input-form">
            <input type="submit" value="Зарегестрироваться">
        </div>
        <a href="/authorisation">Войти</a>
    </form>
</div>

</body>
</html>