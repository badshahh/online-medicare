<%@ include file="Connection.jsp" %>
<% 
    String query="select *from reg ";
    PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs= ps.executeQuery();
     
     while(rs.next())
     {
     out.println(rs.getString(1));  
     out.println(rs.getString(2));
     out.println(rs.getString(3));
     out.println(rs.getString(4));
     out.println(rs.getString(5));
    }
    %> 
     
