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
                    <h1 id="top" align="center">CONTACT LIST</h1>
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
                                <th><button class="btn btn-primary btn-block"><a href="<c:url value="/clist.jsp" />" style="text-decoration: none; color:black;">Show All Data</a></button></th>
                        </form>
                        </table>
                        <br/>
                    <table class="table table-bordered">
                        <tr>
                            <th>SR</th>
                            <th>NAME</th>
                            <th>PHONE</th>
                            <th>EMAIL</th>
                            <th>ADDRESS</th>
                            <th>ACTION</th>
                          </tr>
                          <c:forEach items="${clist}" var="c" varStatus="st">
                              <tr>
                                  <td>${st.count}</td>
                            <td>${c.name}</td>
                            <td>${c.phone}</td>
                            <td>${c.email}</td>
                            <td>${c.address}</td>
                            <td><a href="edit_view.jsp?cid=${c.contactId}">Edit</a> | <a href="delete_contact.jsp?cid=${c.contactId}">Delete</a></td>
                              </tr>
                          </c:forEach>                                      
                    </table>
                </td>
                        </tr>
            <tr>
                <td height="20">
                    </div>
                       </div>
                   </div>
                         </div>
                        </div>
                    </div>
                    <%@include file="footer.jsp" %>
          
    </body>
</html>