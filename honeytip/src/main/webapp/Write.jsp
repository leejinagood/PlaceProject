<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>글작성~~</title>
		<link rel="stylesheet" href="css/write-style.css">
	</head>
	<body>
	<%
	String sLoginID = (String)session.getAttribute("Uid");
	String sLoginName = (String)session.getAttribute("Uname");%>
		<section>
	    	<form action ="WriteOK.jsp" method = "get" name ="write">
		        <h1>글 작성</h1>
		        <div class="contact-item">제목 : </div>
		        <input class="contact-box" type="text" name="mtitle" placeholder="제목을 입력해주세요.">
		        <div class="contact-item">태그 설정 : </div>
		        <select name="tag">태그 설정
		            <option value="여행">여행</option>
		            <option value="자취">자취</option>
		            <option value="쇼핑">쇼핑</option>
		        </select>
		        <div class="contact-reason">꿀팁    내용</div>
		        <textarea style="resize: none;"  maxlength="300" class="contact-reason-box"  name="mmaintext" placeholder="꿀팁을 작성해주세요.">
		</textarea>
		        <br><button class="button" type="submit" onclick="CheckForm()">작성완료</button>
	        </form>
	    </section>
	</body>
</html>