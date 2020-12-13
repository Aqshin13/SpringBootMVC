<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 29.11.2020
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>USERS</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>

<div class="col-4">


    <form:form action="users" method="get" modelAttribute="user" >
        <label for="name">Name: </label>
        <%--<form:input type="hidden" path="id" />--%>
        <form:input class="form-control" type="text" path="name"/>
        <br>
        <label for="surname">Surname: </label>
        <form:input class="form-control" type="text" path="surname"/>
        <br><br>
        <input class="btn btn-primary" type="submit" name="save" value="SAVE">
    </form:form>

</div>
<br>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Surname</th>
        <th scope="col">Nationality</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${users}" var="u">

    <tr>
        <td>${u.name}
        </td>
        <td>${u.surname}
        </td>
        <td>${u.nationality} </td>
        <td>
            <form action="updateusers" method="get">
                <input name="id" type="hidden" value="${u.name }">
                <button class="btn btn-danger" type="submit"
                        name="update"><i class="fas fa-pen-square"></i>
                </button>
            </form>

            <form action="updateusers" method="post">
                <input name="id" type="hidden" value="${u.id}">
                <input name="delete" type="hidden" value="delete">
                <button class="btn btn-success" type="submit" name="deleteb"><i class="fas fa-trash-alt"></i></button>
            </form>

        </td>
    </tr>
    </c:forEach>

    </tbody>

</table>


</body>
</html>
