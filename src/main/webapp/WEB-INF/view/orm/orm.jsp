<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>


<page:template>
    <jsp:attribute name="title">База номеров автомобилей РФ</jsp:attribute>
    <jsp:body>

        <c:url value="/check-user" var="check-user" />
        <c:url value="/ormFindAllUsers" var="ormFindAllUsers" />
        <c:url value='/queryFindByIdUser/1' var="queryFindByIdUser" />

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
                                    <td><b>Модель: </b></td>
                                    <td><c:out value="${resultObject.model}"/></td>
                                </tr>
                                <tr>
                                    <td><b>Номер: </b></td>
                                    <td><c:out value="${resultObject.carnumber}"/></td>
                                </tr>
                                <tr>
                                    <td><b>VIN: </b></td>
                                    <td><c:out value="${resultObject.vin}"/></td>
                                </tr>
                                <tr>
                                    <td><b>Владелец: </b></td>
                                    <td><c:out value="${resultObject.username}"/></td>
                                </tr>
                                <tr>
                                   <td><b>Телефон: </b></td>
                                    <td><c:out value="${resultObject.phone}"/></td>
                                </tr>
                                <tr>
                                    <td><b>Дата производства: </b></td>
                                    <td><c:out value="${resultObject.manufacture}"/></td>
                                </tr>
                                <c:if test="${resultObject.taxi == false}">
                                    <tr><td><b style="color:green">Не использовался в такси</b></td></tr>
                                </c:if>
                                <c:if test="${resultObject.taxi == true}">
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

                        <%--<td><p> idUser: <spring:input path="idUser"/></p>--%>
                        <%--</td>--%>
                    </tr> <!--ряд с ячейками тела таблицы-->
                </table>

                <spring:button>Поиск</spring:button>
            </spring:form>
            <hr>

        </div>
    </jsp:body>
</page:template>

