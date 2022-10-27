<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>꿀팁 회원가입</title>
	<style type="text/css">
		#wrapper{
			width:400px;
			margin: 0 auto;
			
		}
	</style>

</head>
<body>
	
	<div id="wrapper">
		<img src="image/honeybee.png" width="30%">
		<form action='MB.jsp'>
		  <input type='radio' name='AllCelect' value='AC'>
		  	꿀팁 이용약관, 개인정보 수집 및 이용에 모두 동의합니다.<br><br>
		  <input type='radio' name='yarkg' value='' >
		  	꿀팁 이용약관 동의(필수)<br>
		  <textarea name="wow" rows="10" cols="50" readonly>
		   꿀팁에 오신것을 환영합니다.
		   꿀팁 서비스 및 제품(이하'서비스')를 이용해 주셔서 감사합니다.
		   본 약관은 꿀팁 서비스의 이용과 관련해 제공하셔야 되는 이름,전화번호 등이 있습니다.
		   실명 인증은 없으니 부담스러우신 분들은 가명이나 닉네임으로 이름을 작성하셔도 됩니다.
		  </textarea>
		  <br>
		  <input type='radio' name='fruits' value='apple' >개인정보 수집 및 이용 동의<br>
			<br>
		  <textarea name="wow2" rows="10" cols="50" readonly>
		   여러분들이 제공한 개인 정보들은 테크페어 이후에 전부 폐기될 것 이며 이벤트, 서비스
		   이용에 있어 수여자를 명확히 하기위하여 수집합니다.
		  </textarea>
	
		  <br>
		  <input type='submit' value="확인">
		  <input type='reset' value="취소">
		</form>
	</div>
</body>
