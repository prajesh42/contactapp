<% if(session.getAttribute("userId")!=null){%>
<%@page import="net.ezeon.capp.domain.User"%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%@page import="java.util.List"%>
<%@page import="net.ezeon.capp.domain.Contact"%>
<%!
  UserService userservice=new UserService();      
%>

<%
    Integer role=(Integer)session.getAttribute("role");
    List<User> users=userservice.findAllUsers(role);
    request.setAttribute("ulist", users);
    pageContext.forward("user_list_view.jsp");
   }else{
    response.sendRedirect("Login.jsp?act=denied");
}
%>