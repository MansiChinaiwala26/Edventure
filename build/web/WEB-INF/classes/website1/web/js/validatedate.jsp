<%-- 
    Document   : validatedate
    Created on : Apr 12, 2016, 5:20:59 AM
    Author     : pppppp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language = "Javascript">
function matchpass(){  
var firstpassword=document.f1.pname.value;  
var secondpassword=document.f1.pwd2.value;  
  
if(firstpassword==secondpassword){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  
}  
</script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form name="frm" method="post" onSubmit="return matchpass()">
<p>Enter any Date <font color="#CC0000"><b>(MM/DD/YYYY)</b></font> 
: 
<input type="text" name="pname" maxlength="10" size="15">
<input type="text" name="pwd2" maxlength="10" size="15">
</p>
<p> 
<input type="submit" name="Submit" value="Submit">
</p>
</form>
    </body>
</html>
