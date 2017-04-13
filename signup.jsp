<%@page import="java.sql.*" %>
 <%@page import="java.lang.Integer.*"%>
<%
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ravi");
  
    Statement stat=con.createStatement();
    String s1=request.getParameter("name");
    String s2=request.getParameter("fname");
    String s3=request.getParameter("sex");
    int s4=Integer.parseInt(request.getParameter("age"));
    int s5=Integer.parseInt(request.getParameter("mno"));
    String s6=request.getParameter("uname");
    String s7=request.getParameter("pass");
    String s8=request.getParameter("repass");
    if(s7.equals(s8))
    {
       %><% String qry="insert into registred values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"')";
       int i=stat.executeUpdate(qry);
       
       %>
       <%@ include file="sgncomp.html"%>
       <% 
    }
   %>
   <script>alert("both password doesn,t match");</script>
<%   
  // String query="insert into log values('"+s1+"','"+s2+"')"; 
    
    //String qry="insert into registred values(?,?,?,?,?,?,?,?)";
 
     //int i=stat.executeUpdate(qry);
    // int i=stat.executeUpdate(qry);
   
   // out.println(i);
   /* out.println(s2);
    out.println(s3);
    //out.println(s4);
    //out.println(s5);
    out.println(s6);
    out.println(s7);
    out.println(s8);
    //out.println("Successfully Registered"); */
%>
    