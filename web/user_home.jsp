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
                           <div style="background-color: rgba(20, 13, 31, 0.3);" class="col-md-8 col-md-offset-2">
                           <center>
                                   <h3 id="welcome">Welcome User : ${sessionScope.user}</h3></center>
                    <div class="col-md-10 col-md-offset-1">
                        <c:url var="url_status" value="/status.jsp"/>
                    <form  action="${url_status}" class="form-group">
                        <div> <textarea style="width:700px; height:100px" name="status" class="form-control" placeholder="write your status..." required></textarea>
                        </div>
                        <div align="right" style="padding-top: 5px;">
                            <button class="btn btn-primary">post</button>
                        </div>
                    </form>
                    </div>
                       
                        <div class="col-md-10 col-md-offset-1">
                          <c:forEach items="${slist}" var="c" varStatus="st">
                              <div align="left" style="background:grey; color:white; margin-bottom: 1px; border-radius: 2px;">
                                  Status by ${sessionScope.user}
                              </div>
                              <div align="left" style="background-color: white; color:black; height:80px; border-radius: 2px; margin-bottom: 8px;">
                                  <p>${c.status}</p>
                              </div>
                          </c:forEach>                                      
                        </div>
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