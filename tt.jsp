  

<%@ page import="java.sql.*" %>
<%
                Class.forName("oracle.jdbc.OracleDriver");
               //    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ravi");
		Statement stat=con.createStatement();
		
String s1=request.getParameter("n1");
String s2=request.getParameter("n2");
String s3=request.getParameter("n3");
String s4=request.getParameter("n4");
String s5=request.getParameter("n5");

String qry="insert into reg values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')";
 //String qry="insert into registered values(?,?,?,?,?)";
int i=stat.executeUpdate(qry);

out.println("sucessfully registered");
%>