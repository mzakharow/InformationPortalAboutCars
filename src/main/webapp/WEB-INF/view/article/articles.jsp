<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:attribute name="title">Статьи об автомобилях</jsp:attribute>

    <jsp:body>
<!-- Page Content -->
        <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Список статей
                    <small>обзоры и тесты</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Список статей</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>13.06.2017</p>
            </div>
            <div class="col-md-5">
                <a href="/article 2017_06_13.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170613/Largus600_300.jpg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="/article 2017_06_13.html">Лада Ларгус Куб — тест-драйв ЗР</a>
                </h3>
                <p>by <a href="https://www.zr.ru/content/articles/907688-lada-largus-stala-eshche-vmestite/">ЗаРулем.РФ</a>
                </p>
                <p>Кому может не хватить объема кузова Ларгуса? Самый просторный автомобиль в классе, способный обеспечить комфортом даже семерых седоков! Частнику, пожалуй, больше и не надо. Но у машины может быть масса различных «профессий», а для них требуется не только дополнительный объем, но и иная подготовка.</p>
                <a class="btn btn-primary" href="/article 2017_06_13.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>09.05.2017</p>
            </div>
            <div class="col-md-5">
                <a href="/article 2017_05_09.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170509/peugeot  600_300.jpeg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="/article 2017_05_09.html">Вернуть свой 2007-й: 10-летний французский С-класс до 300 тысяч</a>
                </h3>
                <p>by <a href="http://www.kolesa.ru/article/vernut-svoj-2007-j-10-letnij-frantsuzskij-s-klass-do-300-tysyach">Колеса</a>
                </p>
                <p>Словосочетание «10-летний французский автомобиль» звучит немного зловеще. С имиджем у машин из Пятой республики дела обстоят так себе. Считается, что по качеству они уступают немецким и японским конкурентам, а техническое обслуживание их — дело сложное и неподвластное большинству автомехаников.</p>
                <a class="btn btn-primary" href="/article 2017_05_09.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>01.04.2017</p>
            </div>
            <div class="col-md-5">
                <a href="/article 2017_04_01.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170401/foto_007.jpg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="/article 2017_04_01.html">Автоматический удовлетворитель</a>
                </h3>
                <p>by <a href="http://moto-magazine.ru/tests/mototsikly-i-skutery/avtomaticheskiy-udovletvoritel/">Мото</a>
                </p>
                <p>Ее появления ждали 12 лет. За это время фанаты «той самой Африки» поменяли не один мотоцикл, предпочитая конкурентов, успевших отстреляться несколькими поколениями. Так какая же ты, главная премьера сезона?</p>
                <a class="btn btn-primary" href="/article 2017_04_01.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i></p>
                <p>08.03.2017</p>
            </div>
            <div class="col-md-5">
                <a href="/article 2017_03_08.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170308/Crishna 600_300.jpg" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="/article 2017_03_08.html">Пиццевоз</a>
                </h3>
                <p>by <a href="http://www.klaxon.ru/archivepaper/StatNum.php?ELEMENT_ID=31937">Клаксон</a>
                </p>
                <p>Презрев российский климат и брутальные нравы отечественных водил, на наш рынок выкатилась мотоколяска компании Bajaj. Скромная на вид, она отработала тест-драйв на все деньги.</p>
                <a class="btn btn-primary" href="/article 2017_03_08.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-film fa-4x"></i>
                </p>
                <p>23.02.2017</p>
            </div>
            <div class="col-md-5">
                <a href="article 2017_02_23.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170223/mazdaCX5 600_300.png" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3>
                    <a href="article 2017_02_23.html">Mazda CX-5 II: Федот, да не тот</a>
                </h3>
                <p>by <a href="http://www.autonavigator.ru/guides/test-drive/Mazda/CX-5/31965.html">AutoNavigator.ru</a>
                </p>
                <p>Россияне любят японские автомобили. Машины, разработанные и произведенные в Стране восходящего солнца, воспринимаются надежными, современными и удобными.</p>
                <a class="btn btn-primary" href="article 2017_02_23.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->

        <hr>
        <!-- Blog Post Row -->
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x"></i>
                </p>
                <p>01.01.2017</p>
            </div>
            <div class="col-md-5">
                <a href="article 2017_01_01.html">
                    <img class="img-responsive img-hover" src="/resources/images/article20170101/Buick%20LeSabre.jpg" width="600" height="300" alt="">
                </a>
            </div>
            <div class="col-md-6">
                <h3><a href="article 2017_01_01.html">Buick LeSabre — ретротест перекачанного физкультурника</a>
                </h3>
                <p>by <a href="https://www.zr.ru/content/articles/907037-silovoj-priem/">ЗаРулем.РФ</a>
                <p>Изучаем непростой характер «накачанного» Бьюика — типичного представителя своего времени, которое по праву называют золотым веком американского автопрома.</p>
                <a class="btn btn-primary" href="article 2017_01_01.html">Подробнее <i class="fa fa-angle-right"></i></a>
            </div>
        </div>
        <!-- /.row -->
        <hr>

        <!-- Pager -->
        <div class="row">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Старше</a>
                </li>
                <li class="next"><a href="#">Новее &rarr;</a>
                </li>
            </ul>
        </div>
        <!-- /.row -->

        <hr>

</jsp:body>

</page:template>
