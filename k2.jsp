  
<%@ page import="java.sql.*" %>
<%
                Class.forName("oracle.jdbc.OracleDriver");
               //    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ravi");
		Statement stat=con.createStatement();
		

String query="select * from mtb;" 
        PreparedStatement stmnt=con.prepareStatement(query);
        ResultSet rs=stmnt.executeQuery(query);
        while()

int i=stat.executeUpdate(query);
out.println(s1+s2);

%>
