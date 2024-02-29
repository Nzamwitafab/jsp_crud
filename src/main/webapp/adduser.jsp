<%@page import="dao.UserDao"%>  
<jsp:useBean id="u" class="model.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=UserDao.save(u);  
if(i>0){  
response.sendRedirect("adduser_success.jsp");  
}else{  
response.sendRedirect("adduser_error.jsp");  
}  
%>  