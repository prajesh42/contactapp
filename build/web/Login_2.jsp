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
        <table border="1" align="center" width="800">
            <tr>
                <td height="40">
                    <%@include file="header.jsp" %>
                </td>
            </tr>
            <tr>
                <td height="20">
                    <%@include file="menu.jsp" %>
                </td>
            </tr>
            <tr>
                <td height="300" valign="top" align="center">
                    <c:url var="url_login" value="login_action.jsp"/>
                    <form action="${url_login}">
                        <h3>Please Login</h3>
                        <table border="1" align="center">
                            <td>Login Id</td>
                            <td><input type="text" name="loginId" required/></td>
                        </tr>
                        <tr>
                            <td>password</td>
                            <td><input type="password" name="password" required/></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="right"> <button>Login</button>
                             <br/>
                              <c:url var="url_reg" value="reg_form.jsp"/>
                              <a href="${url_reg}">Register here</a>
                            </td>
                        </tr>
                    </table>
                             <c:if test="${param.act=='denied'}">
                                  <p style="color: red">Denied! Illegal access of the web page.</p>
                              </c:if>
                              <c:if test="${err!=null}">
                                  <p style="color: red">${err}</p>
                              </c:if>
                              <c:if test="${param.act=='reg'}">
                                  <p style="color:blue">User Registered Successfully</p>
                              </c:if>
                              <c:if test="${param.act=='lo'}">
                                  <p style="color:blue">User Logged Out Successfully</p>
                              </c:if>    
                    </form>
                </td>
            </tr>
            <tr>
                <td height="20">
                    <%@include file="footer.jsp" %>
                </td>
            </tr>
        </table>
    </body>
</html>
