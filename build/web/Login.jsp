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
        <title>User Login</title>
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
                        <div id="banner_image">
                 <div class="container-fluid decor_bg" id="login-panel">
                   <div class="row">
                    <div class="col-md-3 col-md-offset-8">
                        <div class="panel-head">
                            <h3 class="login-head">Please Login</h3>
                        </div>
                           <form action="${url_login}" class="form-group">
                               <label for="loginId">Login Id</label>
                               <input type="text" name="loginId" class="form-control" required/><br/>
                              <label for="loginId">Password</label> 
                            <input type="password" name="password" class="form-control" required/>
                            <br/>
                             <button class="btn btn-primary btn-block">Login</button>
                             <br/>
                              <c:url var="url_reg" value="reg_form.jsp"/>
                              New User?<a style="color:darkblue;" href="${url_reg}">Register here</a>
                             <c:if test="${param.act=='denied'}">
                                  <p style="color: red">Denied! Illegal access of the web page.</p>
                              </c:if>
                              <c:if test="${err!=null}">
                                  <p style="color: red">${err}</p>
                              </c:if>
                              <c:if test="${param.act=='reg'}">
                                  <p style="color:#ffffff;">User Registered Successfully</p>
                              </c:if>
                              <c:if test="${param.act=='lo'}">
                                  <p style="color:#ffffff;">User Logged Out Successfully</p>
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
