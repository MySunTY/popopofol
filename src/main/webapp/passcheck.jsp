<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>비밀번호 확인</title>
		<style>
			#wrap{
				width: 500px;
				border: 1px solid gray;
				text-align : center;
				margin: auto;
				
				
			}
			span{
				width: 100px;
				display : inline-block;
			}
			form input[type="text"]{
				width :300px;
				height : 30px;
				margin-bottom : 20px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<h1>비밀번호 찾기</h1>
			<form method="get" action="passfind.jsp">
				<span>가입 아이디 : </span><input type="text" name="id" placeholder="아이디를 입력해주세요">
				<span>가입 이메일 : </span><input type="text" name="email" placeholder="이메일을 입력해주세요">
				<span>가입 연락처 : </span><input type="text" name="phone" placeholder="연락처를 입력해주세요">
				<br>
				<input type="submit" value="비밀번호찾기">
				<input type="button" value="닫기" id="btn">
			</form>
		</div>
		
		<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			String url ="jdbc:mysql://127.0.0.1:3306/member";
			String db_id="root";
			String db_pw="12345678";
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,db_id, db_pw);
				stmt = conn.createStatement();
				
				
			}catch(Exception e){
				System.out.println("passcheck.jsp ing error : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)stmt.close();
					if(conn!=null)conn.close();
					
				}catch(Exception ex){
					System.out.println("passcheck.jsp end error :"+ex);
				}
			}//finally
			
		%>
		<script>
			let btn = document.getElementById("btn");
			btn.addEventListener("click",function(){
				window.close();
			})
		</script>
	</body>
</html>