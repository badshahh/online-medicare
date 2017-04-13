 
<%@ page import="java.sql.*" %>
<%
                Class.forName("oracle.jdbc.OracleDriver");
               //    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ravi");
		Statement stat=con.createStatement();
		
String s1=request.getParameter("n1");
String s2=request.getParameter("dt");

String query="insert into mtb values('"+s1+"','"+s2+"')";

int i=stat.executeUpdate(query);
out.println(s1+s2);

%>
