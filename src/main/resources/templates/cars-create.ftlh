<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Create car</title>
</head>
<body>
<form action="/cars/add" method="post" enctype="multipart/form-data">
    Марка машины: <input type="text" name="brand"><br><br>
    Модель машины: <input type="text" name="model"><br><br>
    Цена: <input type="number" name="price"><br><br>
    Комплектация: <input type="text" name="equipment"><br><br>
    Краткое описание: <input type="text" name="description"><br><br>
    Год выпуска: <input type="number" name="year_of_manufacture"><br><br>
    Превое фото: <input type="file" name="file1"><br><br>
    Второе фото: <input type="file" name="file2"><br><br>
    Третье фото: <input type="file" name="file3"><br><br>
    <input type="submit" value="Добавить машину">
</form>
</body>
</html>