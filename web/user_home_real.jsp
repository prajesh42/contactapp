<% if(session.getAttribute("userId")!=null){%>
<%-- 
    Document   : User Home
    Created on : Mar 18, 2018, 2:13:33 PM
    Author     : MR.SHINING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home</title>
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
                           <div style="background-color: rgba(72, 8, 8, 0.52);" class="col-md-8 col-md-offset-2">
                           <center>
                               <h3 id="welcome" style="padding-bottom: 150px;">Welcome User : ${sessionScope.user}</h3></center>
                            </div>
                       </section>
                        </div>
                            </div>
                           </div>
                        </div>
                    <%@include file="footer.jsp" %>

    </body>
</html>
<% }else
{
 response.sendRedirect("Login.jsp?act=denied");
}
%>