<%@ page import="java.sql.*" %>
<%
         Class.forName("oracle.jdbc.OracleDriver");
               //    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ravi");
	

%>