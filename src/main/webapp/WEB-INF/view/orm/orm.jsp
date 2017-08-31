<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>


<page:template>
    <jsp:attribute name="title">База номеров автомобилей РФ</jsp:attribute>
    <jsp:body>

        <c:url value="/check-user" var="check-user" />

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Полная база автомобилей
                        <small></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="index.html">Home</a>
                        </li>
                        <li class="active">База данных</li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <!-- Content Row -->
            <div class="row">
                <!-- Content Column -->
                <div class="col-md-9">
                    <c:if test="${resultObject.carnumber != null}">
                        <h2>Результат:</h2>
                            <%--<p>${resultObject}</p>--%>
                            <table>
                                <tr>
                                    <td><font size="3"><b>Модель: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.model}"/></font></td>
                                    <p></p>
                                </tr>
                                <tr>
                                    <td><font size="3"><b>Номер: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.carnumber}"/></font></td>
                                    <p></p>
                                </tr>
                                <tr>
                                    <td><font size="3"><b>VIN: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.vin}"/></font></td>
                                    <p></p>
                                </tr>
                                <tr>
                                    <td><font size="3"><b>Владелец: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.username}"/></font></td>
                                    <p></p>
                                </tr>
                                <tr>
                                   <td><font size="3"><b>Телефон: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.phone}"/></font></td>
                                    <p></p>
                                </tr>
                                <tr>
                                    <td><font size="3"><b>Дата производства: </b></font></td>
                                    <td><font size="3"><c:out value="${resultObject.manufacture}"/></font></td>
                                    <p></p>
                                </tr>
                                <c:if test="${resultObject.taxi == false}">
                                    <p></p>
                                    <tr><td><b style="color:green">Не использовался в такси</b></td></tr>
                                </c:if>
                                <c:if test="${resultObject.taxi == true}">
                                    <p></p>
                                    <tr><td><b style="color:red">Использовался в такси</b></td></tr>
                                </c:if>
                                <tr><td> <br /></td></tr>
                            </table>
                        </c:if>
                    <c:if test="${resultObject.carnumber == null}">
                        <p><td><b style="color:red">Введите регистрационный номер автомобиля в формате номер + регион (пример: А001АА77)</b></td></p>
                    </c:if>
                </div>
            </div>

            <spring:form modelAttribute="resultObject" action="check-user">
                <table>
                    <tr>
                        <td><p>Регистрационный номер автомобиля:  <spring:input path="carnumber"/></p></td>

                    </tr>
                </table>

                <spring:button>Поиск</spring:button>
            </spring:form>
            <hr>

        </div>
    </jsp:body>
</page:template>

