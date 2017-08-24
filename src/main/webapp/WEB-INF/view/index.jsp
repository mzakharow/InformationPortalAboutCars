<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<page:template>

  <jsp:attribute name="title">Информационный портал об автомобилях</jsp:attribute>
  <jsp:body>

    <header id="myCarousel" class="carousel slide">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/index/muscle-car-1900_1080.jpg');"></div>
          <div class="carousel-caption">
            <h2></h2>
          </div>
        </div>
        <div class="item active">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/index/Honda-Civic 1900_1080.jpg');"></div>
          <div class="carousel-caption">
            <h1></h1>
          </div>
        </div>
        <div class="item">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/index/muscle 1900_1080.jpg');"></div>
          <div class="carousel-caption">
            <h2></h2>
          </div>
        </div>
        <div class="item">
          <div class="fill" style="background-image:url('${pageContext.request.contextPath}/resources/images/index/toyota 1900_1080.jpg');"></div>
          <div class="carousel-caption">
            <h2></h2>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
      </a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
      </a>
    </header>
    <!-- Page Content -->
    <div class="container">

      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">
            <strong>Информационный портал об автомобилях</strong>
          </h1>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-check"></i>  Статьи</h4>
            </div>
            <div class="panel-body">
              <p>
                Статьи и обзоры на новые и ставшие классикой автомобили, с фотографиями и видео из первых рук, только для наших читателей. Интервью с интересными людьми из мира автомобилей и автоспорта, об их машинах и не только.
              </p>
              <a href="/articles.html" class="btn btn-default">Подробнее</a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-gift"></i>База автомобилей</h4>
            </div>
            <div class="panel-body">
              <p>Полная информация о всех автомобилях и их владельцах. Все данные в открытом доступе для проверки истории автомобиля, о текущем владельце, использовании в такси, страховке и техническом осмотре. </p>

                <a href="/orm.html" class="btn btn-default">Подробнее</a>

            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4><i class="fa fa-fw fa-compass"></i>О проеке</h4>
            </div>
            <div class="panel-body">
              <p>Основная цель проекта - изучение языка программирования Java и технологий, позволяющих расширить его возможности и упростить реализацию крупных проектов. Данный проект сделан исключительно в учебных целях.</p>
              <a href="/about.html" class="btn btn-default">Подробнее</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->

      <c:url value="/file.html" var="file"/>
      <c:url value="/orm.html" var="orm" />
      <c:url value="/security.html" var="security" />

      <!-- Portfolio Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header">Самое интересное</h2>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_01_01.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/article20170101/Buick LeSabre 700_450.jpg" width="700" height="450" alt="">
          </a>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_03_08.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/article20170308/Crishna 700_450.jpg" width="700" height="450" alt="">
          </a>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_04_01.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/index/africa-twin700_450.jpg" alt="">
          </a>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_05_09.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/index/citroen_c4.jpg" alt="">
          </a>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_02_23.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/article20170223/Mazda_700_450.jpg" width="700" height="450" alt="">
          </a>
        </div>
        <div class="col-md-4 col-sm-6">
          <a href="/article 2017_06_13.html">
            <img class="img-responsive img-portfolio img-hover" src="${pageContext.request.contextPath}/resources/images/article20170613/Largus700_450.jpg" alt="">
          </a>
        </div>
      </div>
      <!-- /.row -->

      <!-- Features Section -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="page-header">База данных автомобилей</h2>
        </div>
        <div class="col-md-6">
          <p>В нашей базе данных можно найти следующую информацию:</p>
          <ul>
            <li><strong>Телефонный номер</strong></li>
            <li><strong>Ф.И.О. владельца</strong></li>
            <li><strong>Регистрационный номер</strong></li>
            <li><strong>VIN номер</strong></li>
            <li><strong>Данные о страховке</strong></li>
            <li><strong>Дата ТО</strong></li>
            <li><strong>Информацио об авариях</strong></li>
            <li><strong>Использование в такси</strong></li>
            <li><strong>Регион регистрации ТС</strong></li>
            <li><strong>Таможня</strong></li>
          </ul>
          <p>Все данные являются вымешленными.</p>
            <p>Любые совпадения с реальными автомобилями и людьми - случайны.</p>
        </div>
        <div class="col-md-6">
          <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/index/baseCar.jpg" alt="">
        </div>
      </div>
      <!-- /.row -->

      <hr>

      <!-- Call to Action Section -->
      <div class="well">
        <div class="row">
          <div class="col-md-8">
            <p></p>
            <p>Найти владельца автомобиля по госномеру. Найти телефон владельца автомобиля.</p>
          </div>
          <%--<div class="col-md-4">--%>
            <%--<a class="btn btn-lg btn-default btn-block" href="/login.html">Поиск...</a>--%>
          <%--</div>--%>
          <div class="col-md-4">
              <a class="btn btn-lg btn-default btn-block" href="/orm.html">Поиск...</a>
          </div>
        </div>
      </div>

      <hr>
    </div>
    <!-- /.container -->

    <!-- Script to Activate the Carousel -->
    <script>
      $('.carousel').carousel({
        interval: 2500 //changes the speed
      })
    </script>
  </jsp:body>

</page:template>
