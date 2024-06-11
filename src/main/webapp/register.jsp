<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="data.Agree" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 페이지</title>
	</head>
	<body>
		<h1>여기는 register.jsp입니다</h1>
		<%
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("nm");
			String email = request.getParameter("email");
			String nick = request.getParameter("nick");
			String tongsinsa = request.getParameter("tongsinsa");
			String phone = request.getParameter("phone");
			String birth = request.getParameter("birth");
			String service_agree = request.getParameter("service_agree");
			String privacy_agree = request.getParameter("privacy_agree");
			String event_agree = request.getParameter("event_agree");
			Agree a = (Agree)session.getAttribute("agree");
			
		
			
			
			
			
			Connection conn = null;
			Statement stmt = null;
			
			String url="jdbc:mysql://127.0.0.1:3306/member";
			String db_id="root";
			String db_pw = "12345678";
			String sql ="insert into register(id,pw,name,email,nick , tongsinsa, phone , birth , s_a,";
			sql+= "p_a, e_a) values('"+id+"' ,'"+pw+"','"+name+"','"+email+"' , ";
			sql+= "'"+nick+"' ,'"+tongsinsa+"' ,'"+phone+"' ,'"+birth+"' , ";
			sql+= "'"+a.getS_a()+"','"+a.getP_a()+"','"+a.getE_a()+"');";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id,db_pw);
				stmt = conn.createStatement();
				System.out.println(sql);
				stmt.execute(sql);
				response.sendRedirect("index.jsp");
			}catch(Exception e){
				System.out.println("register.jsp ing error "+e);
			}finally{
				try{
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("register.jsp end error "+ex);
				}
			}//finally
		%>
	</body>
</html>