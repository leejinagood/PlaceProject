<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String sLoginID = (String)session.getAttribute("Uid");
	String sLoginName = (String)session.getAttribute("Uname");
	request.setCharacterEncoding("UTF-8");
	String stitle = request.getParameter("mtitle");
	String smaincontent = request.getParameter("mmaintext");
	String sTag = request.getParameter("tag");
	
	Connection MyConn = null;
	String sUrl = "jdbc:mysql://localhost:3306/honey";
	String sUser = "root";
	String sPwd =  "12345";
	   
	Class.forName("com.mysql.jdbc.Driver");
	MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
	out.println("데이터베이스 연결이 성공했습니다. <br>");
	out.println(stitle);
	out.println(smaincontent);
	String sSql="insert into honey.ggulwrite(writetitle,writecontent,viewcount,username,tipid,Tag,RegDate) values('"+stitle+"','"+smaincontent+"',0,'"+sLoginName+"','"+sLoginID+"','"+sTag+"',NOW());";

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
<%
    response.sendRedirect("WriteMain.jsp"); 
%> 
<a href="mypage.jsp">집으로</a>
</body>
</html>