<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
   request.setCharacterEncoding("UTF-8");
   String loid = request.getParameter("lid");
   String lopw = request.getParameter("lpw");
   String pw = "";
   String id = "";
   int idch = 0;

   out.println(loid + "<br>");
   out.println(lopw + "<br>");
   // 전페이지 넘어온거 데이터 저장 (바꿔줄부분)

   Connection MyConn = null;
   String sUrl = "jdbc:mysql://localhost:3306/honey";
   String sUser = "root";
   String sPwd = "12345";
   Class.forName("com.mysql.jdbc.Driver");
   MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
   out.println("데이터베이스 연결이 성공<br>");
   //연결

   String sSql = ("select tipid, tippw, tipname from honey.tb_project ;"); //변수 만났을때는 "+  +"를 입력해준다.
   out.println(sSql + "<br>");
   //쿼리문 인설트(바꾸줄부분)
   ResultSet rs = null;
   Statement stmt = null;

   try {
      stmt = MyConn.createStatement();
      rs = stmt.executeQuery(sSql);
      
      while (rs.next()) {
         id = rs.getString("tipid");
         pw = rs.getString("tippw");
         if (loid.equals(id)) {
            if (lopw.equals(pw)) {
               String suname = rs.getString("tipname");
               idch = 1;
               session.setAttribute("Uid", loid);
               session.setAttribute("Uname", suname);
               session.setAttribute("Idch",idch);         
               break;
            }   
         }
      }
   

   
   }catch(

      SQLException ex)
      {
      out.println("Select Error. <br>");
      out.println("SQLException: " + ex.getMessage());

         }finally
      {
         if (rs != null)
      rs.close();
         if (stmt != null)
      stmt.close();
         if (MyConn != null)
      MyConn.close();

      }
   session.setAttribute("Idch",idch);         
   if(idch == 0){
      response.sendRedirect("login.jsp");
   }else{
      response.sendRedirect("home1.jsp");
   }
   
   
   %>


</body>
</html>