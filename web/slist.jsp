<%@page import="net.ezeon.capp.domain.Status"%>
<%@page import="java.util.List"%>
<%@page import="net.ezeon.capp.service.ContactService"%>
<%!
  ContactService service=new ContactService();      
%>

<%
    Integer userId=(Integer)session.getAttribute("userId");
    List<Status> posts=service.findUserStatus(userId);
    request.setAttribute("slist",posts);
    pageContext.forward("user_home.jsp");
%>
