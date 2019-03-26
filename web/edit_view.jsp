<%@page import="net.ezeon.capp.service.ContactService"%>
<%@page import="net.ezeon.capp.domain.Contact"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
  ContactService service=new ContactService(); 
%>
<%
    Integer cid= new Integer(request.getParameter("cid"));
    Contact c=service.findById(cid);  
%>
<jsp:forward page="contact_form.jsp">
    <jsp:param name="name" value="<%=c.getName()%>"/>
    <jsp:param name="phone" value="<%=c.getPhone()%>"/>
    <jsp:param name="email" value="<%=c.getEmail()%>"/>
    <jsp:param name="address" value="<%=c.getAddress()%>"/>
    <jsp:param name="hid_cid" value="<%=c.getContactId()%>"/>
    
</jsp:forward>