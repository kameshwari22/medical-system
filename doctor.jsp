<%-- 
    Document   : doctor
    Created on : Oct 30, 2016, 7:51:48 PM
    Author     : elcot
--%>


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
background-image:doc.jpg; 
background-size: cover; 
background-attachment: fixed;
}

input[type=text], input[type=password]{
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
.cancelllbtn {
    width: auto;
    padding: 10px 18px;
    background-color:#00FF00 ;}







</style>
<body>

<h2>DOCTOR LOGIN</h2>

<form action="doctors.jsp">
<body background="doc.jpg">
   
  </div>

  <div class="container">
    <label><b>DOCTOR ID</b></label>
    <input type="text" placeholder="Enter id" name="uname" required>

    <label><b>PASSWORD</b></label>
    <input type="password" placeholder="Enter password" name="pswd" required>

        
    

   

<div class="container" style="background-color:#f1f1f1">
      
<input type="SUBMIT" class="cancellbtn" />
<button type="button" class="cancelbtn">CANCEL</button>
   
  </div>
</form>

</body>
</html>





