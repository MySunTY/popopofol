<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="data.Agree" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>agree save</title>
	</head>
	<body>
		<%
			Agree a = new Agree();
			a.setS_a(request.getParameter("service"));
			a.setP_a(request.getParameter("privacy"));
			a.setE_a(request.getParameter("event"));
			session.setAttribute("agree",a);
			response.sendRedirect("insert.jsp");
		%>
	</body>
</html>