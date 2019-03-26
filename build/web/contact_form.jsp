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
        <title>Contact Form</title>
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
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel-head">
                            <h3 class="login-head">Contact Form</h3>
                        </div>
                    <c:url var="url_contact_act" value="/save_action.jsp"/>
                    <form action="${url_contact_act}" class="form-group">
                        <input type="hidden" class="form-control" name="hid_cid" value="${param.hid_cid}">
                           <label for="name">Name</label>
                           <input type="text" class="form-control" name="name" value="${param.name}" required/>
                          <label for="phone">Phone</label>
                         <input type="text" name="phone" class="form-control" value="${param.phone}" required/>
                         <label for="email">Email</label>   
                         <input type="text" name="email" class="form-control" value="${param.email}" required/>
                         <label for="address">Address</label>
                             <textarea name="address" class="form-control" required>${param.address}</textarea><br/>
                             <button class="btn btn-primary btn-block">Save</button>
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
