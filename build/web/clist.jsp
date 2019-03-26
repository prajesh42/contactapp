<%@page import="java.util.List"%>
<%@page import="net.ezeon.capp.domain.Contact"%>
<%@page import="net.ezeon.capp.service.ContactService"%>
<%!
  ContactService service=new ContactService();      
%>

<%
    Integer userId=(Integer)session.getAttribute("userId");
    List<Contact> contacts=service.findUserContact(userId);
    request.setAttribute("clist", contacts);
    pageContext.forward("contact_list_view.jsp");
%>