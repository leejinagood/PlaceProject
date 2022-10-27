<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBOK</title>
</head>
<body>
회원 가입 결과<br><br>
<%
   request.setCharacterEncoding("UTF-8");
   String sid = request.getParameter("mid");
   String spw = request.getParameter("mpw");
   String spwdd = request.getParameter("mpwd");
   String sname = request.getParameter("mname");
   String syear = request.getParameter("myear");
   String ssex = request.getParameter("msex");
   
   String sphone = request.getParameter("mphone");

  out.println(syear);
   
   Connection MyConn = null;
   String sUrl = "jdbc:mysql://localhost:3306/honey";
   String sUser = "root";
   String sPwd =  "12345";
      
   Class.forName("com.mysql.jdbc.Driver");
   MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
   out.println("데이터베이스 연결이 성공했습니다. <br>");
   String sSql="insert into tb_project(tipname, tipid, tippw, tipyear, tipgender, tipphone, tipDate) values ('"+sname+"','"+sid+"','"+spw+"','"+syear+"','"+ssex+"','"+sphone+"',now());";
   out.println(sSql +"<br>");
   
   Statement stmt = null;
   try{
      stmt = MyConn.createStatement();
      stmt.executeUpdate(sSql);
      out.println("테이블 입력 성공 <br>");
      
   }
   catch(SQLException ex){
      out.println("테이블 입력 실패<br>");
      out.println("SQLException: " + ex.getMessage());
      
   }
   finally{
      if(stmt !=null)
         stmt.close();
      if(MyConn !=null)
         MyConn.close();
   }
 %>


아이디 :<%=sid %><br>
비번 : <%=spw %><br>
이름 :<%=sname %>
 비번확인 :<%
   if(spw.equals(spwdd)){ //equals 사용해야됌 자바에서는
      out.println("사용가능합니다.");
   }
   else
      out.println("입력한 비번 2개가 다릅니다.");
%>

<br>
전화번호 : <%
 out.print(sphone.substring(0,3));
 out.print("-");
 out.print(sphone.substring(3,7));
 out.print("-");
 out.print(sphone.substring(7,11));
%>    
<%
    response.sendRedirect("login.jsp"); 
%> 

</body>
</html>