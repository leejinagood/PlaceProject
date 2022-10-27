<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
//DB����
Connection MyConn = null;
String sUrl = "jdbc:mysql://localhost:3306/honey";
String sUser = "root";
String sPwd = "12345";
Class.forName("com.mysql.jdbc.Driver");
MyConn = DriverManager.getConnection(sUrl, sUser, sPwd);
out.println("�����ͺ��̽� ���� ����.<br>");

String sSql = "select * from honey.tb_project order by tipDate desc;";
Statement stmt = null;
ResultSet rs = null;

try{
   stmt = MyConn.createStatement();
   rs = stmt.executeQuery(sSql);
   out.println("Select ����. <br>");
%>   

   <table width="500" border="1">
     <tr>
        <th>�̸�</th>
        <th>���̵�</th>
        <th>���</th>
        <th>�������</th>
        <th>����</th>
        <th>�ڵ���</th>
        <th>���Գ�¥</th>
       
     </tr>
<%
   while(rs.next()){  //�����͸� ��ó������ ���õǰ� �ϴ� ��
   String sname = rs.getString("tipname");
   String sid = rs.getString("tipid");
   String spw = rs.getString("tippw");
   String syear = rs.getString("tipyear");
   String ssex = rs.getString("tipgender");
   String sphone = rs.getString("tipphone"); //�Ķ�����  DB�� ����� �ʵ��  
   String sRegDate = rs.getString("tipDate");
%>     
     <tr>
        <th><%=sname %></th>
        <th><%=sid %></th>
        <th><%=spw %></th>
        <th><%=syear %></th>
        <th><%=ssex %></th>
        <th><%=sphone %></th>
        <th><%=sRegDate %></th>
       
     </tr>
<%
     }
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