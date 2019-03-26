<%@page import="net.ezeon.capp.domain.Contact"%>
<%@page import="net.ezeon.capp.service.ContactService"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%!
  ContactService service=new ContactService();  
%>
<%
        String name=request.getParameter("name");
        String phone=request.getParameter("phone");
        String email=request.getParameter("email");
        String address=request.getParameter("address");
        Contact c=new Contact();
        c.setName(name);
        c.setPhone(phone);
        c.setEmail(email);
        c.setAddress(address);
        try{
           String cid=request.getParameter("hid_cid");//hidden field
           if(cid==null || cid.isEmpty())
           {
              Integer userId=(Integer) session.getAttribute("userId");
              c.setUserId(userId);//FK
              service.save(c);
              //goto contact list
              response.sendRedirect("clist.jsp?act=save");
           }
           else
           {
               //update case
              c.setContactId(new Integer(cid));
              service.update(c);
               //goto contact list
              response.sendRedirect("clist.jsp?act=update");
           }
        }catch(com.mysql.jdbc.MysqlDataTruncation ex)
        {
            ex.printStackTrace();
            pageContext.setAttribute("err","Failed to save contact due to too long text",PageContext.REQUEST_SCOPE);
            //go to contact form
            pageContext.forward("contact_form.jsp");
        }catch(Exception ex)
        {
            ex.printStackTrace();
            pageContext.setAttribute("err","Failed to save contact",PageContext.REQUEST_SCOPE);
            //go to contact form
            pageContext.forward("contact_form.jsp");
        }

%>