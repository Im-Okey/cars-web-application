<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0">
    <title>Создание</title>
    <meta name="description"
          content="Аренда мини-экскаватора и мини-погрузчика с оператором в Полоцке и Новополоцке. Выполняем широкий спектр земляных работ. Доставку осуществляем своим транспортом" />
    <meta name="keywords"
          content="аренда мини-экскаватора, аренда мини-погрузчика, услуги мини-погрузчика, услуги мини-экскаватора, земляные работы, копка траншей, выкопать пруд, выкопать колодец, под фундамент, уборка снега, планировка участка, разгрузка паллет, канализация, водопровод" />
    <link rel="stylesheet" href="/css/${"main_page_admin.css"}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>

<body>

<div class="wraper">
    <header id="scrol" class="header">
        <div class="container">
            <div class="header__body">
                <div class="header__logo logo">
                    <img class="logo__img" src="img/${"test.png"}" alt="">
                    <div class="logo__a">
                        <a class="logo__a1" href="/showroom/${user.id}">Автосалон</a>
                    </div>
                </div>
                <div class="header__burger">
                    <span></span>
                </div>
                <nav class="header__menu">
                    <ul class="header__list">
                        <li><a href="/showroom/${user.id}">Главная</a></li>
                        <li><a href="/showroom/${user.id}#services">Услуги</a></li>
                        <li><a href="/showroom/${user.id}#about">О нас</a></li>
                        <#assign adminRole=user.adminRole!"null"/>
                        <#if  adminRole == false>
                            <li><a href="user/${user.id}">${user.email}</a></li>
                        </#if>
                        <#assign adminRole=user.adminRole!"null"/>
                        <#if  adminRole == true>
                            <li><a href="admin/${user.id}">Админ</a></li>
                        </#if>
                        <li><form action="/authorisation" target="_blank">
                                <button class="btn btn-outline-danger ms-1" style="text-decoration: none">Log out</button>
                            </form></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <div class="service" id="services">
        <div class="container">
            <div class="service__body" style="margin-top: 100px">
                <form class="form-group" action="/showroom/cars/${user.id}/${car.id}/edit" method="post" enctype="multipart/form-data">
                    Идитентификатор: <input readonly type="text" class="form-control" value="${car.id}" name="id"><br><br>
                    Марка машины: <input type="text"class="form-control" value="${car.brand}" name="brand"><br><br>
                    Модель машины: <input type="text" class="form-control" value="${car.model}" name="model"><br><br>
                    Цена: <input type="number" class="form-control" placeholder="${car.price}" name="price"><br><br>
                    Комплектация: <input type="text" class="form-control" value="${car.equipment}" name="equipment"><br><br>
                    Краткое описание: <input type="text" class="form-control" value="${car.description}" name="description"><br><br>
                    Год выпуска: <input type="number" class="form-control" placeholder="${car.year_of_manufacture}" name="year_of_manufacture"><br><br>
                    Превое фото: <input type="file" name="file1"><br><br>
                    Второе фото: <input type="file" name="file2"><br><br>
                    Третье фото: <input type="file" name="file3"><br><br>
                    <input type="submit" value="Подтвердить редактирование">
                </form>
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footer-block__container container">
            <div class="footer__footer-block footer-block">
                <div class="footer-block__row">
                    <div class="footer-block__column">
                        <div class="footer-block__item-foot item-foot-left">
                            <div class="item-foot-left__title">
                                <p>Навигация</p>
                            </div>
                            <div class="item-foot-left__line"></div>
                            <div class="item-foot-left__list">
                                <ul>
                                    <li><a href="/showroom/${user.id}">Главная</a></li>
                                    <li><a href="/showroom/${user.id}#services">Услуги</a></li>
                                    <li><a href="/showroom/${user.id}#about">О нас</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="footer-block__item-foot item-foot-right">
                            <div class="item-foot-right__title">
                                <p>Контакты</p>
                            </div>
                            <div class="item-foot-right__line"></div>
                            <div class="item-foot-right__contacts contacts">
                                <div class="contacts__title">
                                    <p>Время работы</p>
                                </div>
                                <div class="contacts__description">
                                    <p>Круглосуточно 24/7</p>
                                </div>
                                <div class="contacts__number">
                                    <p>Телефон</p>
                                </div>
                                <div class="contacts__telephone">
                                    <a href="tel:+375298080706">+375(29)808-07-06</a>
                                </div>
                            </div>
                        </div>
                        <div class="footer-block__item-foot item-foot-soc">
                            <div class="item-foot-soc__title">
                                <p>Мы в соц сетях</p>
                            </div>
                            <div class="item-foot-soc__line"></div>
                            <div class="item-foot-soc__row">
                                <a href="https://www.instagram.com/butko_pashka/" target="blank" style="text-decoration: none">
                                    <img src="/img/Social/${"instagram.png"}" alt="" style="width: 30px; margin-left: 17px;">
                                </a>
                                <a href="https://vk.com/id163496274" target="blank" style="text-decoration: none">
                                    <img src="/img/Social/${"vk.png"}" alt="" style="width: 30px; margin-left: 17px;">
                                </a>
                                <a href="https://www.facebook.com/profile.php?id=100032223661821" target="blank" style="text-decoration: none">
                                    <img class="facebook" src="/img/Social/${"facebook.png"}" alt="" style="width: 30px; margin-top: 2px; margin-left: 17px;">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" defer></script>
<script src="js/script.js" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>