<%-- 
    Document   : treatments
    Created on : Nov 1, 2016, 10:37:33 PM
    Author     : elcot
--%>
<%@ page import="java.sql.*" %>

  
<%@ page language="java" import="java.sql.*"%> 

<HTML>
    <style>

h2{
    text-align: center;
}
body { 
background-image:treat.jpg; 
background-size: cover; 
background-attachment: fixed;
}
table, th, td {
    border: 4px solid black;
}
th {
    background-color: #4CAF50;
    color: white;
}














</style>




<body background="treat.jpg">
   <h2>TREATMENT</h2>
      
            <% 
               String d=request.getParameter("symptoms");
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "guruji");
                
                Statement statement = connection.createStatement() ;
                
               ResultSet resultset = 
                statement.executeQuery("select * from disease where symptoms = '" + d + "'  " ) ; 
               %>
            
                <TABLE BORDER="1">
                    <table align="center">
           <TR>
                 <TH>symptoms</TH>
                 <TH>disease</TH>
                 <TH>remedies</TH>
                 
                 </Tr>
                     <% while(resultset.next()){ %>
            <TR>
           
                <TD> <%= resultset.getString(1) %></td>
               <TD> <%= resultset.getString(2) %></TD>
               <TD> <%= resultset.getString(3) %></TD>
               
           </Tr>
                      <% } %>
           
			
         

          
            
               </TABLE>
         </BODY>
</HTML>
