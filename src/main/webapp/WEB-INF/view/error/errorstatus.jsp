<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

    <jsp:attribute name="title">Something wrong</jsp:attribute>
    <jsp:body>
        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">404
                        <small>Page Not Found</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="/">Home</a>
                        </li>
                        <li class="active">404</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <c:url value="/about.html" var="about"/>
            <c:url value="/orm.html" var="orm" />
            <c:url value="/login.html" var="login" />

            <div class="row">

                <div class="col-lg-12">
                    <div class="jumbotron">
                        <h1><span class="error-404">404</span>
                        </h1>
                        <p>Ошибочка 404. Страница настроена в web.xml error-page. Можете перейти к:</p>
                        <ul>
                            <li>
                                <a href="/">Вернуться на главную</a>
                            </li>
                            <li>
                                <a href="${about}">О проекте</a>
                            </li>
                            <li>
                                <a href="${login}">Войти</a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>

            <hr>
        </div>
    </jsp:body>
</page:template>
