<%-- 
    Document   : doctors
    Created on : Oct 31, 2016, 11:27:03 PM
    Author     : elcot
--%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<% 
 String a=request.getParameter("uname"); 
String b=request.getParameter("pswd"); 
try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "guruji");
           Statement st=con.createStatement();
int i=st.executeUpdate("insert into doctors_details(name,password)values ('"+a+"','"+b+"')"); 
 
 }
 catch(Exception e){
        System.out.print(e);
 }
	
            
response.sendRedirect("expert.html");
      //link to html       
     %>