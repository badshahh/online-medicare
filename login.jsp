<%@ include file="Connection.jsp" %>
<%
    String s1=request.getParameter("id");
    String s5=request.getParameter("pass");
    String s2="select * from registred ";
   PreparedStatement ps=con.prepareStatement(s2);
   ResultSet rs= ps.executeQuery();
   int flag=0;
   while(rs.next())
   {
       String s3=rs.getString(1);
       String s4=rs.getString("pass");
      
       if(s3.equals(s1)&&s5.equals(s4))
       { flag=1;
           %>
           <%@include file="doclist.html" %>
           <%
       }
     
   }
if(flag==0)
{
           %><script>alert("user and pass is incorrect");</script>
          <%@  include file="signin.html"%>
           <%
   
  }
  


%>

    