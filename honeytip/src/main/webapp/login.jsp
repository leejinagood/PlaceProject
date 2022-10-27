<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
<meta charset="utf-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="css/login_style.css">
</head>
<body>
<script type = "text/javascript">
      var idch = <%=(Integer)session.getAttribute("Idch")%>;
      if(idch==0){
         alert("아이디/비번이 틀렸습니다.");         
      }   
</script>

   <div class="center">
      <h1>Login</h1>
      <form method="post" action="loginOK.jsp">
         <div class="txt_field">
            <input type="text" name="lid" required> <span></span> <label>ID</label>
         </div>
         <div class="txt_field">
            <input type="password" name="lpw" required> <span></span> <label>PASSWORD</label>
         </div>
         <div class="pass">Forgot Password?</div>
         <input type="submit" value="Login">
         <div class="signup_link">
            회원이 아니신가여? <a href="MB.jsp">회원가입</a>
         </div>
      </form>
   </div>

</body>
</html>