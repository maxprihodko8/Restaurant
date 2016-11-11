<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: fancy
  Date: 09.11.16
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <title>Restarant User Page</title>
    </head>
<body style="background-color: #c7b39b; min-width: 100%; min-height: 100%; position: fixed; z-index: -1; top:0; left: 0;
background: url(http://www.theredherring.co.za/wp-content/uploads/2013/03/background-1024x808.jpg) ;">
<div>
    <table>
        <tbody>
        <tr>
            <td>
                <p><a href="/"> <span style="color: #800000; background-color: #ffcc00;">Домой</span></a></p>
            </td>
            <td>
                <p><a href="/user/course"> <span style="color: #800000; background-color: #ffcc00;">Сделать заказ</span></a></p>
            </td>
            <td>
                <p><a href="/user/multipleCource"> <span style="color: #800000; background-color: #ffcc00;">Групповой заказ</span></a></p>
            </td>
            <td>
                <div style="margin-left: 30px;">
                    <sec:authorize access="!isAuthenticated()">
                        <p><a class="button_login" href="<c:url value="/login"/> " role="button">Войти</a> </p>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <p>Вы зарегистрированы под именем :<sec:authentication property="name"/> </p>
                    </sec:authorize>
                </div>
            </td>
            <td>
                <sec:authorize access="isAuthenticated()">
                    <p><a class="button_logout" href="<c:url value="/logout"/> ">
                        <span style="color: #800000; background-color: #ffcc00;">Выйти</span></a> </p>
                </sec:authorize>
            </td>

        </tr>
        </tbody>
    </table>

</div>
</body>
</html>
