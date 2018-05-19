<%--
  Created by IntelliJ IDEA.
  User: 986298
  Date: 5/19/2018
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Restaurant Detail</title>
    </head>
    <body>

        <div>

        </div>

        <form id="exampelForm">
            <input type="text" id="resPara" name="resPara" placeholder="restaurant Id">
            <input type="button" id="btnSubmit" value="Submit">
        </form>

        <div id="resId">

        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            $(function () {
                $('#btnSubmit').click(function () {

                    $.post('reviewServlet',
                        {
                            "resPara": $('#resPara').val()
                        })
                        .done(function (response) {
                            //response = JSON.parse(response);
                            debugger;
                            console.log(response["reviews"]);
                            console.log(response);
                        })
                        .fail(function (response) {
                            response = JSON.parse(response);
                            console.log(response);
                        });
                });
            });
        </script>
    </body>
</html>
