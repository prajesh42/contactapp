<%@page import="net.ezeon.capp.service.UserService"%>
<%!
  UserService service=new UserService(); 
%>
<%
    String contactId=request.getParameter("cid");
  String sql="DELETE FROM contact WHERE contactId="+contactId;
  service.update(sql);
  response.sendRedirect("clist.jsp?act=del");
%>