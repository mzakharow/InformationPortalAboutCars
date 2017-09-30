<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:attribute name="title">О проекте</jsp:attribute>

    <jsp:body>

        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">О проекте
                        <small>Учебный проект для изучения Java и смежных технологий</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Главная</a>
                        </li>
                        <li class="active">О проекте</li>
                    </ol>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/Java.png" alt="">
                </div>
                <div class="col-md-6">
                    <h2>О приложении</h2>
                    <p>Основная цель проекта - изучение языка программирования Java и технологий, позволяющих расширить его возможности.</p>

                    <p>Данный проект сделан исключительно в учебных целях. Не несет смысловой нагрузки в информации размещенной на своих страницах.</p>
                    <p>Копирование материалов других ресурсов было вынужденой мерой из-за отсутствии времени в написании собствепнных статей.</p>
                    <p>Данные базы данных вымышленные. Любые совпадения с реальными автомобилями и людьми - случайны.</p>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Используемые технологии</h2>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/oracle_java.jpg" alt="">
                        <div class="caption">
                            <h3>Java<br>
                                <small>Язык программирования</small>
                            </h3>
                            <p>Высокоуровневый строго типизированный, объектно-ориентированный, платформо-независимый, функциональный (начиная с java 8) язык программирования и среда выполнения. </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/SpringFramework750-450.png" alt="">
                        <div class="caption">
                            <h3>Spring<br>
                                <small>Spring Framework</small>
                            </h3>
                            <p>Универсальный фреймворк с открытым исходным кодом для Java-платформы. Обеспечивает комплексную модель разработки и конфигурации для современных бизнес-приложений.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/hibernate750_450.png" alt="">
                        <div class="caption">
                            <h3>Hibernate<br>
                                <small>Hibernate Framework</small>
                            </h3>
                                <p>Универсальный фреймворк с открытым исходным кодом для Java-платформы. Обеспечивает комплексную модель разработки и конфигурации для современных бизнес-приложений.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/maven.png" alt="">
                        <div class="caption">
                            <h3>Maven<br>
                                <small>Maven Framework</small>
                            </h3>
                            <p>Инструмент для сборки Java проекта. Независит от ОС. Управляет зависимостями. Декларативное описание проекта. Имеет возможность сборки из командной строки.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/PostgreeSQL750x450.jpg" alt="">
                        <div class="caption">
                            <h3>PostgreSQL<br>
                                <small>PostgreSQL</small>
                            </h3>
                            <p>Свободная объектно-реляционная система управления базами данных. Надёжные механизмы транзакций и репликации с легкой расширяемостью.</p>

                        </div>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="${pageContext.request.contextPath}/resources/images/about/apache-tomcat.jpg" alt="">
                        <div class="caption">
                            <h3>Apache Tomcat<br>
                                <small>Контейнер сервлетов</small>
                            </h3>
                            <p>Контейнер сервлетов с открытым исходным кодом. Реализует спецификацию сервлетов и спецификацию JavaServer Pages и JavaServer Faces. Написан на языке Java.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/java.jpg" width="500" height="300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/IntelliJIDEA.png" width="500" height="300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/hiber.png" width="500" height="300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/logo_tomcat.gif" width="500" height="300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/SpringSecurity.png" width="500" height="300" alt="">
                </div>
                <div class="col-md-2 col-sm-4 col-xs-6">
                    <img class="img-responsive customer-img" src="/resources/images/about/Java-Maven.png" width="500" height="300" alt="">
                </div>
            </div>

            <hr>

        </div>

    </jsp:body>

</page:template>