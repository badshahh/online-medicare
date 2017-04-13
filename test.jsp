<html><head>
        <style>
            div{
            margin-left:30%;
            }
            #r1{
            margin-left:10%;
            
            }
            #r2{
            margin-left:10%;
         
            }
            
        </style>
    </head>
    <body><form action="f1.jsp" method="post">
        <div>     
            
            <%   out.println("the time is "+java.util.Calendar.getInstance().getTime());%><br>
           
            <div id="r1">Name:<input type=text name="uname" required></div><br>
           <div id="r2"> <input type="submit" value="registered"></div>
            <a href="f1.jsp">second page</a>
            
            
</div></body></html>