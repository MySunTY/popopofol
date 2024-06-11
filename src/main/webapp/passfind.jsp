<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>passfind.jsp</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String input_email = request.getParameter("email");
			String input_phone = request.getParameter("phone");
			
			Connection conn  = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String url ="jdbc:mysql://127.0.0.1:3306/member";
			String db_id ="root";
			String db_pw = "12345678";
			String sql = "select pw, email,phone from register where id = '"+id+"';";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					String pw = rs.getString("pw");
					String email = rs.getString("email");
					String phone = rs.getString("phone");
					
					if(pw!=null && email.equals(input_email) && phone.equals(input_phone)){
						%>
						<script>
							alert("비밀번호는 <%=pw %>입니다");
							location.href="passcheck.jsp";
						</script>
						<%
					}else{
						%>
						<script>
							alert("입력정보를 확인해주세요");
							location.href="passcheck.jsp";
						</script>	
						<%
					}
					
				}//while
				
				
			}catch(Exception e){
				System.out.println("passfine.jsp ing error : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("passfind.jsp end error : "+ex);
				}
			}//finally
		%>
	</body>
</html>