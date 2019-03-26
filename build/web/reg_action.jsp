<%@page import="net.ezeon.capp.domain.User"%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
   UserService userservice=new UserService();  
%>
<%
  //read form data and bind to domain object/user and pass to service  
      try
      {
       User u=new User();
       u.setName(request.getParameter("name"));
       u.setPhone(request.getParameter("phone"));
       u.setEmail(request.getParameter("email"));
       u.setAddress(request.getParameter("address"));
       u.setLoginId(request.getParameter("loginId"));
       u.setPassword(request.getParameter("password"));
       u.setRole(UserService.ROLE_USER);
       u.setStatus(UserService.LOGIN_ACTIVE);
       
       userservice.register(u);
       response.sendRedirect("Login.jsp?act=reg");
      }catch(Exception e)
      {
          e.printStackTrace();
          request.setAttribute("err","Failed to register new user. Please try again.");
          pageContext.forward("reg_form.jsp");
      }
%>     