<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>${car.brand} ${car.model}</title>
</head>
<body>
<h4>Подробная информация о ${car.brand} ${car.model}</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px" alt=""><br><br>
</#list>
<b>Марка машины: ${car.brand}</b><br>
<b>Модель машины: ${car.model}</b><br>
<b>Цена: ${car.price}</b><br>
<b>Комплектация: ${car.equipment}</b><br>
<b>Краткое описание: ${car.description}</b><br>
<b>Год выпуска: ${car.year_of_manufacture}</b><br>
нужно разобраться с картинками

<form action="/cars/delete/${car.id}" method="post">
    <input type="submit" value="Удалить машину">
</form>
</body>
</html>