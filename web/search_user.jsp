<% if(session.getAttribute("userId")!=null){%>
<%@page import="net.ezeon.capp.domain.User"%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%@page import="java.util.List"%>
<%!
  UserService service=new UserService();      
%>

<%
    String txt=request.getParameter("search");
    List<User> users=service.findAllUsers(txt);
    request.setAttribute("ulist",users);
    pageContext.forward("user_list_view.jsp");
   }else{
    response.sendRedirect("Login.jsp?act=denied");
}
%>