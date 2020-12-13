<%-- 
    Document   : updateUser
    Created on : 28.Kas.2020, 22:45:26
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
          crossorigin="anonymous">
    </head>
    <body>
        <%
//            User user = (User) request.getAttribute("user");

        %>
    <div>
        <form method="post" action="updateusers">
            <%--<input name="id" type="hidden" value="<%=user.getId()%>" />--%>


            <div class="form-group">
                <label>Name:</label>
                <%--<input type="text" name="name" value="<%=user.getName()%>"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name">--%>
            </div>
            
            <div class="form-group">
                <label>Surname:</label>
                <%--<input type="text" name="surname" value="<%=user.getSurname()%>" class="form-control" id="exampleInputPassword1" placeholder="Surname">--%>
            </div>
            
            <div class="form-check">
                <input name="save" class="btn btn-primary" type="submit" value="Save" />
            </div>
        </form>
    </div>



</body>
</html>
