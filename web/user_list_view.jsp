<% if(session.getAttribute("userId")!=null){%>
<%-- 
    Document   : contact_list_view
    Created on : Mar 18, 2018, 2:13:33 PM
    Author     : MR.SHINING
--%>

<%@page import="java.util.List"%>
<%@page import="net.ezeon.capp.domain.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
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
                       <div class="col-md-8 col-md-offset-2">
                    <h1 id="top" align="center">USER LIST</h1>
                    <div class="col-md-8 col-md-offset-2"><center>
                    <c:if test="${param.act=='active'}">
                        <p style="color:blue">User Activated Successfully</p>
                    </c:if>
                        <c:if test="${param.act=='block'}">
                        <p style="color:blue">User Blocked Successfully</p>
                    </c:if>
                        <c:if test="${param.act=='del'}">
                        <p style="color:blue">User Deleted Successfully</p>
                    </c:if>
                        </center>
                            <table class="table table-bordered">
                        <form action="search_user.jsp" class="form-group">
                            <tr><th> <input type="text" name="search" class="form-control" placeholder="Search Here" value="${param.search}" required/></th> 
                                <th> <button class="btn btn-primary btn-block">Search</button></th></tr>
                        </form>
                            </table>
                        </div>
                        <br/>
                        <table class="table table-bordered table-responsive">
                        <tr>
                            <th>SR</th>
                            <th>USER ID</th>
                            <th>NAME</th>
                            <th>LOGIN ID</th>
                            <th>STATUS</th>
                            <th>ACTION</th>
                        </tr>
                        
                          <c:forEach items="${ulist}" var="u" varStatus="st">
                              <tr>
                                  <td>${st.count}</td>
                            <td>${u.userId}</td>
                            <td>${u.name}</td>
                            <td>${u.loginId}</td>
                            
                            <td><c:if test="${u.status==1}">
                                    <p style="color:mediumblue;">ACTIVE</p>
                                </c:if>
                                <c:if test="${u.status==2}">
                                    <p style="color:mediumblue;">BLOCKED</p>
                                </c:if>    
                                </td>
                                <td><a href="activate_user.jsp?uid=${u.userId}">Activate</a> | <a href="block_user.jsp?uid=${u.userId}">Block</a> | <a href="delete_user.jsp?uid=${u.userId}">Delete</a> </td>
                              </tr>
                          </c:forEach>                                      
                        </table>
                       </div>
                   </div>
                         </div>
                        </div>
                          </div>
                              <%@include file="footer.jsp" %>
    </body>
</html>
<% }else{
   response.sendRedirect("Login.jsp?act=denied");
}
%>