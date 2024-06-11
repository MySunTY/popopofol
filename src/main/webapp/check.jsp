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
			
			
			
			
			//select db_pw from register where id = input_id;
			//뽑혀져나오는 db_pw값이 없으면(null이면) 회원가입이 안된것  . db_pw가 나왔다면
			//db_pw == input_pw 와 비교
		
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs =null;
			
			String url = "jdbc:mysql://127.0.0.1:3306/member";
			String db_id = "root";
			String db_pw ="12345678";
			String sql = "select pw from register where id = '"+input_id+"';";
		
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				System.out.println(sql);
				rs = stmt.executeQuery(sql);
				
				while(rs.next()){
					String pw = rs.getString("pw");
					if(input_pw.equals(pw)){
						if(input_id.equals("admin")){
							session.setAttribute("grade","manager");
							response.sendRedirect("main.jsp");
						}else{
							session.setAttribute("grade","member");
							response.sendRedirect("main.jsp");
						}
						
					}else{
						%><script>
						alert("비밀번호가 틀렸습니다");
						location.href="index.jsp";
						</script><%
						
					}//else
					
				
					
					
					
				}//while 
			
				
				
				
				
				
				
				
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