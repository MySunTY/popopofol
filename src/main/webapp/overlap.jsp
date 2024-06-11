<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>overlap.jsp</title>
	</head>
	<body>
		<%
			
			request.setCharacterEncoding("utf-8");
			String input_id = request.getParameter("id");
			
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			String a = "이미 가입된 아이디입니다";
			String b = "사용 가능한 아이디입니다";
			
			String url = "jdbc:mysql://127.0.0.1:3306/member";
			String db_id ="root";
			String db_pw = "12345678";
			String sql = "select * from register where id = '"+input_id+"';";			
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url, db_id , db_pw);
				stmt = conn.createStatement();
				System.out.println(sql);
				rs = stmt.executeQuery(sql);
				boolean bool = rs.next();
				System.out.println(bool);
				
				if(bool==true){
					session.setAttribute("jungbok",a);
					
					
					
				}else if(bool==false){
					session.setAttribute("jungbok",b);
					
					
					
				}
				%>
					<script>
						location.href="insert.jsp";
					</script>
				
				<%
				
				
				
				/*
				while(rs.next()){
					String id = rs.getString("id");
					String pw = rs.getString("pw");
					
					response.sendRedirect("insert.jsp");
					session.setAttribute("overlap",a);
				}
				*/
				
			}catch(Exception e){
				System.out.println("overlap.jsp ing error : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("overjap.jsp end error : "+ex);
				}
			}//finally
		%>
	</body>
</html>