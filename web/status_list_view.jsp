<%-- 
    Document   : contact_list_view
    Created on : Mar 18, 2018, 2:13:33 PM
    Author     : MR.SHINING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact List</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
                    <%@include file="menu.jsp" %>
                    < <div id="content">
                        <div id="banner_image_admin">
                         <div class="container-fluid decor_bg" id="login-panel">
                   <div class="row">  
                       <div class="col-md-8 col-md-offset-2">
                    <h1 id="top" align="center">STATUS LIST</h1>
                    <div class="col-md-10 col-md-offset-1"><center>                           
                    <c:if test="${param.act=='del'}">
                        <p style="color:blue">Contact Deleted Successfully</p>
                    </c:if>
                        <c:if test="${param.act=='save'}">
                        <p style="color:blue">Contact Saved Successfully</p>
                    </c:if>
                        <c:if test="${param.act=='update'}">
                        <p style="color:blue">Contact Updated Successfully</p>
                    </c:if>
                        </center>
                        <table class="table table-bordered">
                            <form action="search.jsp" class="form-group">
                                <tr><th><input type="text" class="form-control" name="search" placeholder="Search Here" value="${param.search}" required="Fill the field"/></th>
                                <th><button class="btn btn-primary btn-block">Search</button></th>
                                <th><button class="btn btn-primary btn-block"><a href="<c:url value="/slist.jsp" />" style="text-decoration: none; color:black;">Show All Data</a></button></th>
                        </form>
                        </table>
                        <br/>
                    <table class="table table-bordered">
                        <tr>
                            <th>SR</th>
                            <th>Status</th>
                          </tr>
                          <c:forEach items="${slist}" var="c" varStatus="st">
                              <tr>
                                  <td>${st.count}</td>
                                  <td>${c.status}</td>
                             </tr>
                          </c:forEach>                                      
                    </table>
                    </div>
                       </div>
                   </div>
                         </div>
                        </div>
                    </div>
                    <%@include file="footer.jsp" %>
          
    </body>
</html>