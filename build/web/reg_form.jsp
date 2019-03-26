<%-- 
    Document   : Login
    Created on : Mar 18, 2018, 2:13:33 PM
    Author     : MR.SHINING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
                    <%@include file="menu.jsp" %>
                    <c:url var="url_reg_act" value="/reg_action.jsp"/>
                     <div id="content">
                        <div id="banner_image">
                 <div class="container-fluid decor_bg" id="login-panel">
                   <div class="row">
                    <div class="col-md-3 col-md-offset-8">
                        <div class="panel-head">
                            <h3 class="login-head">Register New User</h3>
                        </div>
                    <form action="${url_reg_act}" class="form-group">
                        <label for="name">Name</label>
                        <input type="text" name="name" class="form-control" required/>
                        <label for="phone">Phone</label>    
                        <input type="text" name="phone" class="form-control" required/>
                        <label for="email">Email</label>   
                        <input type="text" name="email" class="form-control" required/>
                        <label for="address">Address</label>     
                        <textarea name="address" class="form-control" required></textarea>
                        <label for="loginId">Login Id</label>   
                        <input type="text" name="loginId" class="form-control" required/>
                        <label for="password">Password</label>
                        <input type="password" name="password" class="form-control" required/><br/>
                        <button class="btn btn-primary btn-block">Register</button>
                             <br/>
                              <c:url var="url_login" value="Login.jsp"/>
                              Already have account?<a style="color:darkblue;" href="${url_login}">Login here</a>
                              <c:if test="${err!=null}">
                                  <p style="color: red">${err}</p>
                              </c:if>
                    </form>
                    </div>
                   </div>
                 </div>
                        </div>
                     </div>
                              <%@include file="footer.jsp" %>
    </body>
</html>
