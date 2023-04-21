<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0">
    <title>Название автосалона</title>
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
                        <li><a href="/showroom/${admin.id}">Главная</a></li>
                        <li><a href="/showroom/${admin.id}#services">Услуги</a></li>
                        <li><a href="/showroom/${admin.id}#about">О нас</a></li>
                        <#assign adminRole=admin.adminRole!"null"/>
                        <#if  adminRole == false>
                            <li><a href="/showroom/user/${admin.id}">${admin.email}</a></li>
                        </#if>
                        <#assign adminRole=admin.adminRole!"null"/>
                        <#if  adminRole == true>
                            <li><a href="/showroom/admin/${admin.id}">Админ</a></li>
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
        <div class="container" style="margin-top: 100px">
            <div style="text-align: center; font-size: 30px; margin-bottom: 40px">История покупок пользователя ${user.email}</div>
            <div class="service__row">
                <#list history as his>
                    <div class="service__column">
                        <div class="service__item-ser item-ser">
                            <div class="item-ser__name" style="color: white">${his.car.brand} ${his.car.model}</div>
                            <div class="item-ser__img">
                                <img src="/images/${his.car.images[0].id}" height="10px"
                                     alt="">
                            </div>
                            <div class="item-ser__price">
                                <#list currency as curr>
                                    <#assign current_value_check=curr._current_value!"null"/>
                                    <#if  current_value_check == true>
                                        <#assign value=curr.value!"null"/>
                                        <#if  value == "BYN">
                                            ${his.car.price * 2.9441} бел.руб
                                        </#if>
                                        <#if  value == "RUB">
                                            ${his.car.price * 81.5766} ₽
                                        </#if>
                                        <#if  value == "USD">
                                            ${his.car.price} $
                                        </#if>
                                    </#if>
                                </#list>
                            </div>
                            <div class="item-ser__list">
                                <p>2018, Бензин 1,4 л, 53004 км, Автомат, Передний, Седан, Черный...</p>
                                <p>Дата покупки ${his.dateOfCreated}</p>
                            </div>

                        </div>
                    </div>
                </#list>
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
                                    <li><a href="/showroom/${admin.id}">Главная</a></li>
                                    <li><a href="/showroom/${admin.id}#services">Услуги</a></li>
                                    <li><a href="/showroom/${admin.id}#about">О нас</a></li>
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