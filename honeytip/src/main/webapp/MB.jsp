<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
 	<link rel="stylesheet" type="text/css" href="css/MB_style.css">
</head>
<body>
<script type = "text/javascript">

function CheckForm(){
	if (document.MB.mid.value.length == 0) {
		alert("아이디를 입력하세요");
		document.MB.mid.focus();
		return false;
	}
	if (document.MB.mid.value.length > 10) {
		alert("아이디를 10자리 이내로 입력하세요.");
		document.MB.mid.focus();
		return false;
	}
	if (document.MB.mpw.value=="") {
		alert("비밀번호를 입력하세요.");
		document.MB.mpw.focus();
		return false;
	}
	if (document.MB.mpwd.value=="") {
		alert("비밀번호 확인란을 입력하세요.");
		document.MB.mpwd.focus();
		return false;
	}
	if (document.MB.mpw.value != document.MB.mpwd.value) {
		alert("비밀번호 확인이 다릅니다");
		document.MB.mpwd.focus();
		return false;
	}
	if (document.MB.mname.value=="") {
		alert("이름을 입력하세요");
		document.MB.mname.focus();
		return false;
	}
	if (document.MB.mname.value.length > 10) {
		alert("이름을 10자리 이내로 입력하세요.");
		document.MB.mname.focus();
		return false;
	}
	if (document.MB.mphone.value=="") {
		alert("전화번호를 입력하세요.");
		document.MB.mphone.focus();
		return false;
	}
	if (document.MB.mphone.value.length != 11) {
		alert("존재하지 않는 전화번호입니다. 다시 입력해주세요");
		document.MB.mphone.focus();
		return false;
	}
	if (document.MB.myear.value=="") {
		alert("생년월일을 입력하세요.");
		document.MB.myear.focus();
		return false;
	}
	if (document.MB.msex.value == "무") {
			alert("성별 입력 필수!!");
			document.MB.msex.focus();
			return false;
	}
	
	document.MB.submit();
	return true;
	alert("회원가입 완료")
}
</script>
    <form name = "MB" action="MBOK.jsp" method="POST" class="joinForm">

        <h2>회원가입</h2>
        <div class="textForm">
            <input name="mid" type="text" class="id" placeholder="아이디"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
        </div>
        <div class="textForm">
            <input name="mpw" type="password" class="pw" placeholder="비밀번호"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
        </div>
        <div class="textForm">
            <input name="mpwd" type="password" class="pw" placeholder="비밀번호 확인"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
        </div>
        <div class="textForm">
            <input name="mname" type="text" class="name" placeholder="이름"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
        </div>


        <div class="textForm">
            <input name="mphone" type="tel" class="cellphoneNo" 
            maxlength="11" placeholder="전화번호 '-' 빼고 입력 11자리 입력"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
        </div>
        <div class="textForm">
            생년월일 <input type="date" name="myear"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
            <select name="msex"
            onkeypress="if(event.keyCode == 13){ CheckForm(); return; }">
            <option value="무">성별여부</option>
            <option value="남">남</option>
            <option value="여">여</option>
            </select> 
        </div>


        <input type="button"  onclick="CheckForm()" class="btn" value="J O I N" />
    </form>
</body>
</html>