<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="widLOth=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/wss/fonts?families=SF+Pro,v3|SF+Pro+Icons,v3|SF+Pro+KR,v2" type="text/css" media="all">
    <link href="css/main_style.css" rel="stylesheet" />
</head>
<body>
   

    <!-- 헤더 -->
    <Header>
        <div class="Menu">
            <div class="Logo" src="/main.html" alt="브랜드 로고"></div>
            <div class="Store"><a href="home1.jsp">꿀팁</a></div>
            <div class="Mac"><a href="Write.jsp">글쓰기</a></div>
            <div class="Accessory"><a href="logout.jsp">로그아웃</a></div>
            <div class="Support">내정보</div>
            <div class="Search" alt="검색"></div>
            <div class="User" alt="장바구니"></div>
        </div>
    </Header>

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
    <!-- 메인화면 -->
    <Section>
        <table>
            <tr>
                <th>글 번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>조회수</th>
                <th>작성일자</th>
            </tr>
            <%
		   while(rs.next()){ 
			   
				   String swritenum = rs.getString("writenum");
				   String swritetitle = rs.getString("writetitle"); //파란색은  DB에 저장된 필드명  
				   String susername = rs.getString("username");
				   String sviewcount = rs.getString("viewcount");
				   String sRegDate = rs.getString("RegDate");
		%> 
            <tr>
                <td><%=swritenum %></td>
                <td><%=swritetitle %></td>
                <td><%=susername %></td>
                <td><%=sviewcount %></td>
                <td><%=sRegDate %></td>
            </tr>
            <% } %>
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
    </Section>
</body>
</html>