<% if(session.getAttribute("userId")!=null){%>
<%-- 
    Document   : Login
    Created on : Mar 18, 2018, 2:13:33 PM
    Author     : MR.SHINING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
                    <%@include file="menu.jsp" %>
                           <div id="content">
                        <div id="banner_image_admin">
                         <div class="container-fluid decor_bg" id="login-panel">
                   <div class="row">  
                       <section class="panel-head">
                           <center>
                    <h1 id="welcome">Welcome admin : ${sessionScope.user}</h1>
                           </center>
                       </section>
                            </div>
                           </div>
                        </div>
                           </div>
                    <%@include file="footer.jsp" %>
    </body>
</html>
<%}else{
 response.sendRedirect("Login.jsp?act=denied");
}%>