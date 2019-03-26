<%@page import="net.ezeon.capp.domain.Status"%>
<%@page import="net.ezeon.capp.service.ContactService"%>
<%@page import="java.sql.PreparedStatement"%>
<% if(session.getAttribute("userId")!=null){%>
<%!
   ContactService service=new ContactService();
%>

<%
    Integer userId=(Integer)session.getAttribute("userId");
    String status=request.getParameter("status");
    Status s=new Status();
    s.setUserId(userId);
    s.setStatus(status);
    service.post(s);
    response.sendRedirect("slist.jsp");
  }else{
    response.sendRedirect("Login.jsp?act=denied");
}
%>
