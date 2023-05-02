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
                    <img class="logo__img" src="https://static.tildacdn.com/tild3265-6661-4436-a137-303635326366/logo_white_size-01.png" alt="">
                    <div class="logo__a">
                        <a class="logo__a1" href="" style="text-decoration: none">Select Auto</a>
                    </div>
                </div>
                <div class="header__burger">
                    <span></span>
                </div>
                <nav class="header__menu">
                    <ul class="header__list">
                        <li><a href="#headerr">Главная</a></li>
                        <li><a href="#services">Услуги</a></li>
                        <li><a href="news/${user.id}">Новости</a></li>
                        <li><a href="#about">О нас</a></li>
                        <#assign adminRole=user.adminRole!"null"/>
                        <#if  adminRole == false>
                            <li><a href="user/${user.id}">${user.email}</a></li>
                        </#if>
                        <#assign adminRole=user.adminRole!"null"/>
                        <#if  adminRole == true>
                            <li><a href="admin/${user.id}">Админ</a></li>
                        </#if>
                        <form class="flex-curr" action="currency/change_to/${user.id}" method="post" style="color: red">
                            <select class="form-select" name="to_curr" id="to_curr" style="margin-right: 10px">
                                <#list currency as cur>
                                    <#assign selected_val=cur.is_current_value()!"null"/>
                                    <#if  selected_val == true>
                                        <option selected = "${cur.value}" value="${cur.value}">${cur.value}</option>
                                    </#if>
                                    <#if  selected_val == false>
                                        <option value="${cur.value}">${cur.value}</option>
                                    </#if>
                                </#list>
                            </select>
                            <input class="btn btn-primary" type="submit" value="OK">
                        </form>
                        <button class="btn btn-outline-danger ms-1"><a href="/authorisation" style="text-decoration: none">Log out</a></button>
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
                        <h1 style="font-size: 50px; font-weight: bold">ШОУ-РУМ Select Auto</h1>
                    </div>
                    <div class="main-block__subtitle">
                        <p style="font-size: 50px;">Минск, пр-т независимости, 169</p>
                        <p style="font-size: 20px;">Команда Select Auto продолжает делать все, чтобы Ваш опыт работы с нами стал еще более приятным. Ждем Вас в нашем новом просторном доме. 🤍</p>
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

                <form action="/showroom/${user.id}" method="get" style="margin-bottom: 20px;">
                    <div class="form-group" style="display: flex">
                        <input type="text" name="brand" class="form-control" aria-describedby="emailHelp" placeholder="Введите название машины" style="margin-right: 10px;">
                        <input class="btn btn-primary" type="submit" value="Поиск">
                    </div>
                </form>
                <form class="flex-curr" action="#" method="get" style="color: red">
                    <select class="form-select" name="brand_car" id="brand_car" style="margin-right: 10px">
                        <option value="">Выберите марку</option>
                        <option value="BMW">BMW</option>
                        <option value="Audi">Audi</option>
                        <option value="Lamborghini">Lamborghini</option>
                        <option value="Mercedes">Mercedes</option>
                        <option value="Geely">Geely</option>
                        <option value="Volkswagen">Volkswagen</option>
                        <option value="Honda">Honda</option>
                        <option value="Hyundai">Hyundai</option>
                        <option value="Škoda">Škoda</option>
                        <option value="Porsche">Porsche</option>
                    </select>
                    <select class="form-select" name="model_car" id="model_car" style="margin-right: 10px">
                        <option value="">Выберите модель</option>
                        <#list cars as car>
                            <option value="${car.model}">${car.model}</option>
                        </#list>
                    </select>
                    <input type="text" name="price_from" id="price_from" class="form-control" placeholder="Цена от" style="margin-right: 10px;">
                    <input type="text" name="price_to" id="price_to" class="form-control" placeholder="Цена до" style="margin-right: 10px;">
                    <input class="btn btn-primary" type="submit" value="Поиск">
                </form>
                <div class="service__row">
                    <#list cars as car>
                        <#assign solded=car.isSold()!"null"/>
                        <#if  solded == false>
                            <div class="service__column">
                                <div class="service__item-ser item-ser">
                                    <a href="/cars/info/${car.id}/${user.id}" style="text-decoration: none; color: white">
                                        <div class="item-ser__name" style="color: white">${car.brand} ${car.model}</div>
                                        <div class="item-ser__img">
                                            <img src="/images/${car.images[0].id}" height="10px"
                                                 alt="">
                                        </div>
                                        <div class="item-ser__price">
                                            <#list currency as curr>
                                                <#assign current_value_check=curr._current_value!"null"/>
                                                <#if  current_value_check == true>
                                                    <#assign value=curr.value!"null"/>
                                                    <#if  value == "BYN">
                                                        ${car.price * 2.9441} бел.руб
                                                    </#if>
                                                    <#if  value == "RUB">
                                                        ${car.price * 81.5766} ₽
                                                    </#if>
                                                    <#if  value == "USD">
                                                        ${car.price} $
                                                    </#if>
                                                </#if>
                                            </#list>
                                        </div>
                                        <div class="item-ser__list">
                                            <p>2018, Бензин 1,4 л, 53004 км, Автомат, Передний, Седан, Черный...</p>
                                        </div>
                                    </a>
                                    <#assign adminRole=user.adminRole!"null"/>
                                    <#if  adminRole == true>
                                        <div style="margin-bottom: 5px"><button class="btn btn-primary"><a href="/cars/edit/${car.id}/${user.id}" style="color: white; text-decoration: none;">Редактировать</a></button></div>
                                        <div>
                                            <form action="/cars/delete/${car.id}/${user.id}" method="post">
                                                <input class="btn btn-primary" type="submit" value="Удалить">
                                            </form>
                                        </div>
                                    </#if>
                                </div>
                            </div>
                        </#if>
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
                            <div class="benefits__item item">
                                <div class="item__row">
                                    <div class="item__image">
                                        <img src="../img/about/${"garantiya.webp"}" width="80" height="100" alt="">
                                    </div>
                                    <div class="item__text">
                                        <div class="item__title">Гарантия качества</div>
                                        <div class="item__line"></div>
                                        <div class="item__subtitle"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="benefits__item item">
                                <div class="item__row">
                                    <div class="item__image">
                                        <img src="../img/about/${"aproach.png"}" width="80" height="100" alt="">
                                    </div>
                                    <div class="item__text">
                                        <div class="item__title">Гарантия качества</div>
                                        <div class="item__line"></div>
                                        <div class="item__subtitle"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="benefits__item item">
                                <div class="item__row">
                                    <div class="item__image">
                                        <img src="../img/about/${"time.webp"}" width="80" height="100" alt="">
                                    </div>
                                    <div class="item__text">
                                        <div class="item__title">Гарантия качества</div>
                                        <div class="item__line"></div>
                                        <div class="item__subtitle"></div>
                                    </div>
                                </div>
                            </div>
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
<script src="/js/${"script.js"}" defer></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>

</html>