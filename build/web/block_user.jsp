<% if(session.getAttribute("userId")!=null){%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
  UserService service=new UserService(); 
%>
<%
    String userId=request.getParameter("uid");
  String sql="UPDATE user set status=2 WHERE userId="+userId;
  service.update(sql);
  response.sendRedirect("ulist.jsp?act=block");
   }else{
   response.sendRedirect("Login.jsp?act=denied");
}
%>