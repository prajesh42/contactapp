<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <title>menu jsp</title>
        <link rel="stylesheet" type="text/css" href="./static/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="./static/css/style.css">
        <script type="text/javascript" src="./static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="./static/js/jquery-3.3.1.min.js"></script>
    </head>
    <body>
        <header>
            <nav class="nav navbar-default navbar-fixed-top">
                <div class="container">
                <div class="navbar-header">
                    <c:if test="${sessionScope.userId==null}">
                    <a href="Login.jsp" class="navbar-brand">FastContact</a>
                    </c:if>
                    <c:if test="${sessionScope.userId!=null && sessionScope.role==1}">
                       <a href="admin_home.jsp" class="navbar-brand">FastContact</a> 
                    </c:if>
                    <c:if test="${sessionScope.userId!=null && sessionScope.role==2}">
                        <a href="user_home_real.jsp" class="navbar-brand">FastContact</a>
                    </c:if>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <form class="form-group" method="POST">
                        <ul class="nav navbar-nav navbar-right">
                         <c:if test="${sessionScope.userId==null}">
                             <li><a>Welcome</a></li>
                             <li><a href="<c:url value="Login.jsp"/>"><span class="glyphicon glyphicon-home"></span> HOME</a></li>
                             <li><a href="<c:url value="Login.jsp"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                             <li><a href="<c:url value="reg_form.jsp"/>"><span class="glyphicon glyphicon-registration-mark"></span> Register</a></li>
                             <li><a href="<c:url value="about.jsp"/>"><span class="glyphicon glyphicon-arrow-down"></span> About</a></li>
                         </c:if>
                         <c:if test="${sessionScope.userId!=null && sessionScope.role==1}">
                                 <li><a>Welcome ${sessionScope.user}</a></li>
                                 <li><a href="<c:url value="admin_home.jsp"/>"><span class="glyphicon glyphicon-home"></span> HOME</a></li>
                             <li><a href="<c:url value="ulist.jsp"/>"><span class="glyphicon glyphicon-user"></span> USER LIST</a></li>
                             <li><a href="<c:url value="logout.jsp"/>"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
                             
                             </c:if>
                         <c:if test="${sessionScope.userId!=null && sessionScope.role==2}">
                             <li><a>Welcome ${sessionScope.user}</a></li>
                         <li><a href="<c:url value="slist.jsp"/>"><span class="glyphicon glyphicon-home"></span> HOME</a></li>
                             <li><a href="<c:url value="clist.jsp"/>"><span class="glyphicon glyphicon-user"></span> CONTACT LIST</a></li>
                             <li><a href="<c:url value="contact_form.jsp"/>"><span class="glyphicon glyphicon-arrow-right"></span> ADD CONTACT</a></li>
                             <li><a href="<c:url value="logout.jsp"/>"><span class="glyphicon glyphicon-log-out"></span> LOGOUT</a></li>
                             
                              </c:if>
                        </ul>
                      </form>
                    </div>
                </div>
            </nav>
        </header>
</html>