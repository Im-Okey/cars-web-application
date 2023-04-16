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
                        <a class="logo__a1" href="">Мотосалон</a>
                    </div>
                </div>
                <div class="header__burger">
                    <span></span>
                </div>
                <nav class="header__menu">
                    <ul class="header__list">
                        <li><a href="#headerr">Главная</a></li>
                        <li><a href="#services">Услуги</a></li>
                        <li><a href="#about">О нас</a></li>
                        <#assign adminRole=user.adminRole!"null"/>
                        <#if  adminRole == false>
                            <li><a href="user/${user.id}">${user.email}</a></li>
                        </#if>
                        <button class="btn btn-outline-danger ms-1"><a href="/authorisation">Log out</a></button>
                    </ul>
                </nav>
            </div>
        </div>
    </header>


        <!-- Modal -->
    <div class="modal fade" id="authorisationModal" tabindex="-1" aria-labelledby="authorisationLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="authorisationLabel">Form</h5>
                    <button class="btn-close" data-bs-dismiss="modal" aria-label="close"></button>
                </div>
                <div class="modal-body">

                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary">Submit</button>
                </div>
            </div>
        </div>
    </div>
        <!-- Modal -->

    <div class="main">
        <div class="main__main-block main-block">
            <div class="main-block__container container">
                <div class="main-block__body">
                    <div class="main-block__title" id="headerr">
                        <h1>Lorem ipsum dolor.</h1>
                    </div>
                    <div class="main-block__subtitle">
                        <p>Lorem ipsum.</p>
                        <p>Lorem ipsum.</p>
                    </div>
                    <div class="main-block__subtitle-tel">
                        <a href="tel:+375298080706" class="nomer">+375(29)808-07-06</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="service" id="services">
        <div class="container">
            <div class="service__body">
                <div class="service__title">Машины</div>

                <form action="/showroom/${user.id}" method="get">
                    Поиск по названию: <input type="text" name="brand"><br>
                    <input type="submit" value="поиск">
                </form>
                <div class="service__row">
                    <#list cars as car>
                        <div class="service__column">
                            <div class="service__item-ser item-ser">
                                <a href="/cars/info/${car.id}/${user.id}">
                                    <div class="item-ser__name">${car.brand} ${car.model}</div>
                                </a>
                                <div class="item-ser__img">
                                    <img src="/images/${car.images[0].id}" height="10px"
                                         alt="">
                                </div>
                                <div class="item-ser__price">
                                    ${car.price}$
                                </div>
                                <div class="item-ser__list">
                                    <p>2018, Бензин 1,4 л, 53004 км, Автомат, Передний, Седан, Черный...</p>
                                </div>
                                <#assign adminRole=user.adminRole!"null"/>
                                <#if  adminRole == false>
                                    <button class="btn btn-primary">Buy</button>
                                </#if>
                                <#if  adminRole == true>
                                    <button class="btn btn-primary"><a href="/cars/edit/${car.id}/${user.id}">Редактировать</a></button>
                                    <form action="/cars/delete/${car.id}/${user.id}" method="post">
                                        <input class="btn btn-primary" type="submit" value="Удалить">
                                    </form>
                                </#if>
                            </div>
                        </div>
                    </#list>
                </div>
                <#assign adminRole=user.adminRole!"null"/>
                <#if  adminRole == true>
                    <div class="service__add-link">
                        <a href="cars/add/${user.id}"><p>Добавить машину</p></a>
                    </div>
                </#if>
            </div>
        </div>
    </div>

    <div class="about">
        <div class="about-block__container container">
            <div class="about__about-block about-block">
                <div class="about-block__description description">
                    <div class="description__title" id="about">О нас</div>
                    <div class=" description__subtitle">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Eligendi eveniet illum officia ratione! Ad aliquam amet asperiores at consequatur debitis
                        dolor est ex fugit ipsam maxime provident sit, soluta sunt tempora, ullam vel. Ab beatae ex
                        incidunt libero magni maxime nihil recusandae rem? Accusamus ad aliquam beatae commodi debitis
                        dolorum eaque eius eos esse excepturi explicabo harum laudantium minima nostrum nulla pariatur
                        quam recusandae, reprehenderit sapiente temporibus totam ullam unde. Eius in iste mollitia
                        natus odit quasi quisquam reprehenderit totam!</div>
                </div>
                <div class="about-block__image">
                    <img src="#" alt="">
                </div>
                <div class="about-block__benefits benefits">
                    <div class="benefits__row">
                        <div class="benefits__column">
                            <#list [1, 2, 3, 4] as item>
                                <div class="benefits__item item">
                                    <div class="item__row">
                                        <div class="item__image">
                                            <img src="/img/${"test.png"}" width="80" height="100" alt="">
                                        </div>
                                        <div class="item__text">
                                            <div class="item__title">Гарантия качества</div>
                                            <div class="item__line"></div>
                                            <div class="item__subtitle"></div>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </div>

                    </div>
                </div>
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
                                    <li><a href="#headerr">Главная</a></li>
                                    <li><a href="#services">Услуги</a></li>
                                    <li><a href="#about">О нас</a></li>
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
                                <a href="https://vk.com/id163496274" target="blank">
                                    <img src="/img/${"test.png"}" alt="">
                                </a>
                                <a href="https://www.instagram.com/butko_pashka/" target="blank">
                                    <img src="/img/${"test.png"}" alt="">
                                </a>
                                <a href="https://www.facebook.com/profile.php?id=100032223661821" target="blank">
                                    <img class="facebook" src="/img/${"test.png"}" alt="">
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
<script src="/js/${"script.js"}" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>