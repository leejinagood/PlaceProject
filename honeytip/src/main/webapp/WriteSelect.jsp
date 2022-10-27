<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀렉</title>
</head>
<body>
<%
	String sLoginID = (String)session.getAttribute("Uid");
	String sLoginName = (String)session.getAttribute("Uname");
	//DB연결
	Connection MyConn = null;
	String sUrl = "jdbc:mysql://localhost:3306/honey";
	String sUser = "root";
	String sPwd = "12345";
	Class.forName("com.mysql.jdbc.Driver");
	MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
	out.println("데이터베이스 연결 성공.<br>");
	String sSql = "select * from honey.ggulwrite order by RegDate desc;";
	Statement stmt = null;
	ResultSet rs = null;
	try{
		   stmt = MyConn.createStatement();
		   rs = stmt.executeQuery(sSql);
		   out.println("Select 성공. <br>");
		%>   

		   <table width="500" border="1">
		     <tr>
		        <th>제목</th>
		        <th>본문</th>
		        <th>조회수</th>
		        <th>가입날짜</th>
		        <th>이름</th>
		     </tr>
		<%
		   while(rs.next()){ 
			   String id =rs.getString("tipid");
			   if(id.equals(sLoginID)){//포인터를 맨처음으로 선택되게 하는 것
				   String sTitle = rs.getString("WriteTitle");
				   String sContent = rs.getString("WriteContent"); //파란색은  DB에 저장된 필드명  
				   String sRegDate = rs.getString("viewcount");
				   String sviewcount = rs.getString("RegDate");
				   String susername = rs.getString("username");
		%>     
		     <tr>
		        <th><%=sTitle %></th>
		        <th><%=sContent %></th>
		        <th><%=sviewcount %></th>
		        <th><%=sRegDate %></th>
		        <th><%=susername %></th>
		       
		     </tr>
		     
		<%
			   }}
		%>
		   
		   </table>
		   
		<%    
		} catch (SQLException ex) {
		   out.println("Select Error. <br>");
		   out.println("SQLException: " + ex.getMessage());
		} finally {
		   if(rs != null)
		      rs.close();
		   if (stmt != null) 
		   	stmt.close();
		   if (MyConn != null) 
		   MyConn.close();
		}

		%>


</body>
</html>