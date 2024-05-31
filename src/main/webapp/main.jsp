<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
		<link rel="stylesheet" href="CSS/main.css">
	</head>
	<body>
		<%
			String grade = (String)session.getAttribute("grade");	
		%>
		<header>
            <h1>
                <img src=".png" alt="logo" width="30" height="30">
                <a href="index.jsp">원하는 모든것을 관리하세요</a>
            </h1>
            
        </header>
	
		<nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">How to Use</a></li>
                <li><a href="#">MyPage</a></li>
                <li><a href="#">Question</a></li>
                <%
                	if(grade == "manager"){
                		%><li><a href="#">관리자메뉴</a></li><%		
                	}
                %>
                
				
				
				<li><a href="#">LogOut</a></li>

            </ul>

        </nav>
		
		<h1><%=grade %>님 접속을 환영합니다</h1>
	</body>
</html>