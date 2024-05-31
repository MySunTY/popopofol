<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <title>포폴진행중</title>
        <link rel="stylesheet" href="CSS/index.css">
    </head>
    <body>
        <header>
            <h1>
                <img src=".png" alt="logo" width="30" height="30">
                <a href="index.jsp">원하는 모든것을 관리하세요</a>
            </h1>
            
        </header>
        
        <section>
        <div class="loginForm">
            <form method="post" action="check.jsp">
            
            <input type="text" name="id" class="textField" placeholder="아이디를 입력하세요" required>
            <input type="text" name="pw" class="textField" placeholder="비밀번호를 입력하세요" required>
            <input type="submit" value="로그인" class="submitBtn">
            
            <div class="newId">
            <a href="agree.jsp">아직 회원이 아니신가요?</a>
            
            </div>
            <div class="newId">
                <a href="#">비밀번호를 잊어버리셨나요?</a>
            </div>
            </form>       
        </div>
        <div class="other">
            <div class="otherBtn">
                <img src="img/구글.png" class="otherImg">구글 아이디로 로그인하기
            </div>
            <div class="otherBtn">
                <img src="img/애플.png" class="otherImg">애플 아이디로 로그인하기
            </div>
            <div class="otherBtn">
                <img src="img/네이버.png" class="otherImg">네이버 아이디로 로그인하기
            </div>
            <div class="otherBtn">
                <img src="img/카톡.png" class="otherImg">카카오톡 아이디로 로그인하기
            </div>



        </div>


        </section>
        <footer>
            <ul>
                <li><a href="#">개발자에게 문의하기</a></li>
                <li><a href="#">이용약관 보기</a></li>
                <li><a href="#">회원 탈퇴</a></li>
                <li><a href="#">이메일 수집 거부</a></li>
                <li><a href="#">개인정보 처리방침</a></li>

            </ul>

        </footer>






    </body>
</html>