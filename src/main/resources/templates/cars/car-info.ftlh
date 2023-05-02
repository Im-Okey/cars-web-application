<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0">
    <title>Информация</title>
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
                        <li><form action="/registration" target="_blank">
                                <button class="btn btn-outline-danger ms-1" style="text-decoration: none">Log out</button>
                            </form></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Модальное окно для покупки авто -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Подтверждение покупки</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
                </div>
                <div class="modal-body">
                    <form action="/purchase/${user.id}/${car.id}" method="post" enctype="multipart/form-data">
                        Для подтверждения покупки внесите необходимые данные в форму ниже
                        <div class="form-group">
                            Пароль <input type="text" class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            Серия паспорта <input type="text" class="form-control">
                        </div>
                        <br>
                        <div class="form-group">
                            Номер паспорта <input type="text" class="form-control">
                        </div>
                        <br>
                        <input class="btn btn-primary" type="submit" value="Совершить покупку" style="margin-top: 10px">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                </div>
            </div>
        </div>
    </div>

    <div class="service" id="services">
        <div class="container" style="font-size: 24px;">
            <div class="service__body">
                <h4>Подробная информация о ${car.brand} ${car.model}</h4>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="/images/${images[0].id}" alt="Первый слайд">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="/images/${images[1].id}" alt="Второй слайд">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="/images/${images[2].id}" alt="Третий слайд">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <b style="margin-right: 5px;">Марка машины: ${car.brand}</b>
                <b>Модель машины: ${car.model}</b><br>
                <hr>
                <#list currency as curr>
                    <#assign current_value_check=curr._current_value!"null"/>
                    <#if  current_value_check == true>
                        <#assign value=curr.value!"null"/>
                        <#if  value == "BYN">
                            <b>Цена: ${car.price * 2.9441} бел.руб</b><br>
                        </#if>
                        <#if  value == "RUB">
                            <b>Цена: ${car.price * 81.5766} ₽</b><br>
                        </#if>
                        <#if  value == "USD">
                            <b>Цена: ${car.price} $</b><br>
                        </#if>
                    </#if>
                </#list>
                <hr>
                <b>Комплектация: ${car.equipment}</b><br>
                <b>Краткое описание: ${car.description}</b><br>
                <br>
                <hr>
                <b>Год выпуска: ${car.year_of_manufacture}</b><br><br>

                <#if  adminRole == false>
                    <!-- Кнопка-триггер модального окна -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="font-size: 22px;">
                        Купить
                    </button>
                </#if>
                <#if  adminRole == true>
                    <form action="/cars/delete/${car.id}/${user.id}" method="post">
                        <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="font-size: 22px;">
                            Удалить машину
                        </button>
                    </form>
                </#if>
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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>