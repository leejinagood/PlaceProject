<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mypage_style.css">

</head>
<body>
<%      String sLoginID = (String)session.getAttribute("Uid");
      String sLoginName = (String)session.getAttribute("Uname");
       //DB연결
         Connection MyConn = null;
         String sUrl = "jdbc:mysql://localhost:3306/honey";
         String sUser = "root";
         String sPwd = "12345";
         Class.forName("com.mysql.jdbc.Driver");
         MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
         String sSql = "select * from honey.ggulwrite order by RegDate desc;";
         Statement stmt = null;
         ResultSet rs = null;
         int i =1;
         try{
               stmt = MyConn.createStatement();
               rs = stmt.executeQuery(sSql);
               
            %>  
      
<div class="wrap">
  <div class="yellowContainer">
    <div>
      <div class="name"><%=sLoginName %>님</div>
    </div>       
  </div>
  <div class="contentContainer">
      <div class="item">
         <div>내글갯수</div>
        <div class="number"></div>
        
      </div>
      <div class="item">
          <div>총조횟수</div>
        <div class="number">354</div>
      </div>
  </div>  
  <div class="mylistContainer">
    <div class="title">
      내글보기
    </div>
    <div class="status">
      <div class="item">
        <div class="icon"> > </div>
        <table width="500" border="1">
           <tr>
              <th>제목</th>
              <th>작성일자</th>
              <th>조회수</th>
           </tr>
      <%
         while(rs.next()){ 
            String id =rs.getString("tipid");
            
            if(id.equals(sLoginID)){//포인터를 맨처음으로 선택되게 하는 것
               String sTitle = rs.getString("WriteTitle");//파란색은  DB에 저장된 필드명  
               String sRegDate = rs.getString("viewcount");
               String sviewcount = rs.getString("RegDate");
               
      %>     
           <tr>
              <th><%=sTitle %></th>
              <th><%=sviewcount %></th>
              <th><%=sRegDate %></th>
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
        
      </div>               
    </div>
    
  </div>  
  <div class="homeContainer">
    <a href="home1.jsp" class="item">
      <div>home</div>
      <div>홈으로</div>
      
    </a>    
  </div>
</div>
</body>

</html>