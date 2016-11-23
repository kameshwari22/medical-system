<%-- 
    Document   : patient
    Created on : Oct 30, 2016, 7:48:53 PM
    Author     : elcot
--%>


<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html>
<html>
<style>
form {
 border: 20px solid #f1f1f1;   
margin: 0 auto;
    width: 400px;
}
h2{
    text-align: center;
}
body { 
background-image:patient.jpg; 
background-size: cover; 
background-attachment: fixed;
}

input[type=text], input[type=age] ,input[type=sex],input[type=symptoms]{
    width: 100%;
    padding: 10px 10px;
    
    display: inline-block;
    border: 10px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;}
.cancellbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #0000FF;}







</style>




<body background="patient.jpg">
    <h2>PATIENT DETAILS</h2>

   
  </div>
<form action="treatments.jsp">
  <div class="container">
    <label><b>PATIENT NAME</b></label>
    <input type="text" placeholder="Enter name" name="pName" required>

    <label><b>AGE</b></label>
    <input type="text" placeholder="Enter age" name="age" required>

        
    <label><b>GENDER</b></label>
    <input type="text" placeholder="Enter gender" name="gender" required>
     <label><b>SYMPTOMS</b></label>
    <input type="text" placeholder="Enter symptom" name="symptoms" required>

   

<div class="container" style="background-color:#f1f1f1">
        
<input type="SUBMIT" class="cancelbtn" />
  
  </div>


</form>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<% 
 String a=request.getParameter("pName"); 
String b=request.getParameter("age"); 

String c=request.getParameter("gender"); 
String d=request.getParameter("symptoms"); 
 try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical", "root", "guruji");
           Statement st=con.createStatement();
int i=st.executeUpdate("insert into patients_details(pname,age,gender,symptoms)values ('"+a+"','"+b+"','"+c+"','"+d+"')"); 
 
 }
 catch(Exception e){
        System.out.print(e);
 }
	
            

      //link to html       
     %>
    

</body>



</html>