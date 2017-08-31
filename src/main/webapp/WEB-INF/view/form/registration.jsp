<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Registration Page</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <spring:url value="/resources/css/signin.css" var="signin"/>
    <link href="${bootstrap}" rel="stylesheet"/>
    <link href="${signin}" rel="stylesheet"/>
    <link rel="icon" type="image/png" href="/resources/images/car.png" />
</head>
<body>

<form name="form" action="ormInsertUser" class="form-signin">

    <c:url value="/ormInsertUser" var="ormInsertUser" />

    <springform:form modelAttribute="resultObject" action="ormInsertUser">

        <p><h3>Регистрация</h3></p>
        <p><springform:input path="username" class="form-control"/></p>
        <p><springform:password path="password" class="form-control"/></p>
        <springform:button class="btn btn-lg btn-primary btn-block"><strong>Регистрация</strong></springform:button>
        <a href="javascript:history.back()">Назад</a>
    </springform:form>

    <br/>

</form>
</body>

</html>