<%@page import="java.sql.SQLException"%>
<%@page import="net.ezeon.capp.Exception.AccountBlockedException"%>
<%@page import="net.ezeon.capp.Exception.InvalidCredentialException"%>
<%@page import="net.ezeon.capp.domain.User"%>
<%@page import="net.ezeon.capp.service.UserService"%>
<%!
    UserService userservice=new UserService();
    %>
    <%
        try{
        String lid=request.getParameter("loginId");
        String pwd=request.getParameter("password");
        User u=userservice.login(lid, pwd);
        //success
        //Session tracking or Assign session to logged in user
        session.setAttribute("userId",u.getUserId());
        session.setAttribute("role", u.getRole());
        session.setAttribute("user", u.getName());
        if(u.getRole()==UserService.ROLE_ADMIN)
        {
        response.sendRedirect("admin_home.jsp");
        }else if(u.getRole()==UserService.ROLE_USER)
        {
            response.sendRedirect("user_home.jsp");
        
        }
        }catch(InvalidCredentialException e)
    {
        e.printStackTrace();
        request.setAttribute("err",e.getMessage());
        pageContext.forward("Login.jsp");
    }catch(AccountBlockedException e)
    {
     e.printStackTrace();
      request.setAttribute("err",e.getMessage());
        pageContext.forward("Login.jsp");
    }
        
        %>