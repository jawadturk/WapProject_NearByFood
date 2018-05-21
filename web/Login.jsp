<%--
  Created by IntelliJ IDEA.
  User: Aimal
  Date: 5/20/2018
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Session Management</title>
    <style>
        .mainForm{
            background-color: lightgray;
            border: 1px solid black;
            margin-left: auto;
            margin-right: auto;
            margin-top: 10%;
            width: 20%;
        }

        .field{
            margin-top: 10px;
            margin-left: 3%;
        }

        .btnSubmit{
            margin-top: 2%;
            color: white;
            background-color: indigo;
            border: 2px solid indigo;
            margin-left: 72%;
        }
    </style>
</head>
<body>

<div class="mainForm">
    <form action="login" method="post">
        <br/>
        <div class="field">
            <label>Username: </label>  <input type="text" name="txtUserName" value="${userNameAutoFill}">
        </div>
        <br/>
        <div class="field">
            <label>Password: </label>  <input type="password" name="txtPassword">
        </div>
        <br/>
        <div class="field">
            <label><input type="checkbox" name="txtRememberMe" <c:if test="${userNameAutoFill != null}">checked</c:if>> Remember me</label>
        </div>
        <br/>
        <input class="btnSubmit" type="submit" value="Submit">
    </form>
</div>
</body>
</html>
