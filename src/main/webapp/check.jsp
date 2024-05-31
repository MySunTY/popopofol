<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>check.jsp</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String input_id = request.getParameter("id");
			String input_pw = request.getParameter("pw");
			
			String admin_id = "admin";
			String admin_pw = "1234";
			String test_id = "test";
			String test_pw = "1234";
		
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs =null;
			
			String url = "jdbc:mysql://127.0.0.1:3306/sample";
			String db_id = "root";
			String db_pw ="12345678";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				
				if(input_id.equals(admin_id) && input_pw.equals(admin_pw)){
					session.setAttribute("grade","manager");
					response.sendRedirect("main.jsp");
				}else if(input_id.equals(test_id) && input_pw.equals(test_pw)){
					session.setAttribute("grade","member");
					response.sendRedirect("main.jsp");
				}else if(input_id.equals(admin_id) && input_pw != admin_pw){
					%>
					<script>
						alert("비밀번호를 확인해주세요");
						location.href="index.jsp";
					</script>
					
					<%
					
				}else if(input_id.equals(test_id) && input_pw != test_pw){
					%>
					<script>
						alert("비밀번호를 확인해주세요");
						location.href="index.jsp";
					</script>
					
					<%
					
				}
				
				
				
			}catch(Exception e){
				System.out.println("check.jsp ing error"+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close(); //연결해제
					
				}catch(Exception ex){
					System.out.println("check.jsp end error"+ex);
				}
			}//finally
		%>
	</body>
</html>