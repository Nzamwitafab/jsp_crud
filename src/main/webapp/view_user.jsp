<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="dao.UserDao,model.*,java.util.*"%>

<%
List<User> list = UserDao.getAllRecords();
%>

<h1>Users List</h1>

<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<%
for(User u : list) {
%>
    <tr>
        <td><%=u.getId()%></td>
        <td><%=u.getName()%></td>
        <td><%=u.getPassword()%></td>
        <td><%=u.getEmail()%></td>
        <td><%=u.getSex()%></td>
        <td><%=u.getCountry()%></td>
        <td><a href="edituserform.jsp?id=<%=u.getId()%>">Edit</a></td>
        <td><a href="delete_user.jsp?id=<%=u.getId()%>">Delete</a></td>
    </tr>
<%
}
%>
</table>
<br/><a href="adduserform.jsp">Add New User</a>


</body>
</html>