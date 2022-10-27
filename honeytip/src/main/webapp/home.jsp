<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="widLOth=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/wss/fonts?families=SF+Pro,v3|SF+Pro+Icons,v3|SF+Pro+KR,v2" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="css/home_style.css">   
</head>
<body>

    <!-- 헤더 -->
    <Header>
        <div class="Menu">  
            <div class="Logo"></div>
            <div class="Store">꿀팁</div>
            <div class="Mac" style="cursor:pointer;" onclick="location.href='WriteMain.jsp'">게시글</div>
            <div class="Accessory" style="cursor:pointer;" onclick="location.href='login.jsp'">로그인</div>
            <div class="Support" style="cursor:pointer;" onclick="location.href='MB.jsp'">회원가입</div>
            <div class="Search"></div>
            <div class="Basket" style="cursor:pointer;" onclick="location.href='mypage.jsp'" alt="장바구니"></div>
        </div>
    </Header>

    <!-- 메인화면 -->
    <Section>
        <!-- 첫번째 화면 -->
        <div class="iPhone_Pro">
            <div class="title">일상속의 꿀팁들을</div>
            <div class="Subtitle">찾아보세요.</div>
        </div>

        <!-- 두번째 화면 -->
        <div class="iPhone_14">
            <div class="title">몰랐던 세상 속 꿀팁</div>
            <div class="Subtitle">찾아. 더 편하게.</div>
        </div>

        <!-- 세번째 화면 -->
        <div class="Watch_UT">
            <div class="title">HOW TO USE</div>
            <div class="title2">어떻게 쓰지?</div>
            <div class="Subtitle">모험을 위한 시간.</div>
        </div>
    </Section>

    <!-- 하단바 -->
    <Footer>
        <hr>
        <text>
            <div class="Copyright">Copyright @ alchemist.Team</div>
            <div class="Country">Lee.jh, Jin.hd, Lee.dj, Lee.jg</div>
        </text>
    </Footer>
</body>
</html>