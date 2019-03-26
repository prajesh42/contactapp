<% if(session.getAttribute("userId")!=null){%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
  UserService service=new UserService(); 
%>
<%
    String userId=request.getParameter("uid");
  String sql="DELETE FROM user WHERE userId="+userId;
  service.update(sql);
  response.sendRedirect("ulist.jsp?act=del");
  }else{
   response.sendRedirect("Login.jsp?act=denied");
}
%>