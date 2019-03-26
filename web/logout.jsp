<%
  session.invalidate();
  response.sendRedirect("Login.jsp?act=lo");
%>