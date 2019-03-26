<%-- 
    Document   : about
    Created on : May 26, 2018, 6:31:25 PM
    Author     : MR.SHINING
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <header>
            <%@include file="menu.jsp" %>
        </header>
                    <c:url var="url_login" value="login_action.jsp"/>
                    <div id="content">
                        <div id="banner_image_admi">
                            <div class="container-fluid decor_bg" id="login-panel">
                            <div class="row">
                        <div class="panel-head">
                        <div class="col-md-6 col-md-offset-3">
                            <h2 align="center" id="logo">Objective</h2>
                        <p align="center" style="color:rgba(17, 51, 40, 0.98)">The main objective of this contact application is to handle the contacts of the user.This application also facilitates adding of reminder as your status so that
                        whenever you login into your account it reminds you about what you are missing.</p>
                            <h2 align="center" id="logo">Services</h2>
                            <p align="center" style="color:rgba(17, 51, 40, 0.98)">This website provide the facilities of saving and editing contacts. All the details related to contacts are saved. Status as remainder option is also available in this website.</p>
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                    </div>
                    <%@include file="footer.jsp" %>
    </body>
</html>
