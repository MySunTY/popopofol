<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="data.Agree" %>
   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert.jsp</title>
		<link rel="stylesheet" href="CSS/insert.css">
	</head>
	<body>
		<div id="wrap">
			<h1>회원 가입 정보를 입력하세요</h1>
			<form method="get" action="register.jsp" id="form">
			<div>
				<%
					//Agree a = new Agree();
					String msg = (String)session.getAttribute("jungbok");
					request.setCharacterEncoding("utf-8");
					
					/*String service_agree = request.getParameter("service");
					String privacy_agree = request.getParameter("privacy");
					String event_agree = request.getParameter("event");
					*/
					/*a.setS_a(request.getParameter("service"));
					a.setP_a(request.getParameter("privacy"));
					a.setE_a(request.getParameter("event"));
					session.setAttribute("agree",a); */
					
					
					
				%>
				<span>아이디</span><input type="text" name ="id" placeholder="아이디를 입력하세요" required class="inputs" id="id">
				<div id="overlap">아이디 중복체크</div>
				<div id="confirm">
					<span id="confirmMsg">중복체크를 해주세요</span>
				</div>
				<span>비밀번호</span><input type="password" name="pw" placeholder="비밀번호를 입력하세요" required class="inputs">
				<span>비밀번호확인</span><input type="password" placeholder="비밀번호를 다시한번 입력해주세요" class="inputs">
				<span>이름</span><input type="text" name="nm" placeholder="이름을 입력하세요" required class="inputs">
				<span>이메일</span><input type="text" name="email" placeholder="이메일 주소를 입력하세요" required class="inputs">
				<span>닉네임</span><input type="text" name="nick" placeholder="활동명을 입력해주세요" required class="inputs">
				<span>전화번호</span>
				<select name="tongsinsa">
					<option>SK</option>
					<option>KT</option>
					<option>LG</option>
					<option>Other</option>						
				</select>
				<input type="text" name="phone" placeholder="01012345678" required id="ph">
				<span>생년월일</span><input type="text" name="birth" placeholder="생년월일 6자리 ex)980506" required class="inputs">
				<div class="gaip">
				<input type="submit" value="가입하기">
				
				<%--<input type="hidden" name="service_agree" value="<%=service_agree %>">
				<input type="hidden" name="privacy_agree" value="<%=privacy_agree %>">
				<input type="hidden" name="event_agree" value="<%=event_agree %>"> --%>
				</div>
			</div>
			</form>
		</div>
		<script>
			console.log(location.href);
		
			let confirmBtn = document.getElementById("overlap");
			let confirmMsg = document.getElementById("confirmMsg");
			let forms = document.getElementById("form");
			let ids = document.getElementById("id");
			let inputs = document.getElementsByClassName("inputs");
			
			confirmBtn.addEventListener("click",function(){
				
				forms.action ="overlap.jsp";
				if(ids.value !=""){
					forms.submit();	
					
					
					
				}else{
					alert("아이디를 입력해주세요");
				}
				
				
				
				
				
			});
			confirmMsg.innerHTML = "<%=msg %>";
			
				inputs[2].addEventListener("keyup",function(){
					if(inputs[1].value == inputs[2].value && inputs[1].value!=null &&inputs[1].value!=""){
						alert("비밀번호가 일치합니다");
					}
				});
			
			
			
		</script>
	</body>
</html>