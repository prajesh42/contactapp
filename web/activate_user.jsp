<% if(session.getAttribute("userId")!=null){%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
  UserService service=new UserService(); 
%>
<%
    String userId=request.getParameter("uid");
  String sql="update user set status=1 WHERE userId="+userId;
  service.update(sql);
  response.sendRedirect("ulist.jsp?act=active");
  }else{
    response.sendRedirect("Login.jsp?act=denied");
}
%>