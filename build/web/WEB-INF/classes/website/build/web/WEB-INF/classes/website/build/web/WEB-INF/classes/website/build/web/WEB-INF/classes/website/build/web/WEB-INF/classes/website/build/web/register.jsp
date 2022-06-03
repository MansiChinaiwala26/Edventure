<%@ page import="java.io.*,java.util.*,java.sql.Connection,java.sql.DriverManager,java.sql.Statement,java.sql.ResultSet,java.util.Scanner,java.sql.PreparedStatement" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Home</title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/e1.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/e-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/e-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/e-72.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/e-57.png">
        
<script type="text/javascript">
var separator= "/";
var minYear=1900;
var maxYear=2000;

function isInteger(s){
var i;
for (i = 0; i < s.length; i++){ 
// Check that current character is a number or not.
var c = s.charAt(i);
if (((c < "0") || (c > "9"))) return false;
}
// All characters are numbers.
return true;
}

function stripCharsInBag(s, bag){
var i;
var returnString = "";
// Search through string's characters one by one.
// If character is not in bag, append to returnString.
for (i = 0; i < s.length; i++){ 
var c = s.charAt(i);
if (bag.indexOf(c) == -1) returnString += c;
}
return returnString;
}

function daysInFebruary (year){
// February has 29 days in any year evenly divisible by four,
// EXCEPT for centurial years which are not also divisible by 400.
return (((year % 4 == 0) && ( (
    !(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
for (var i = 1; i <= n; i++) {
this[i] = 31
if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
if (i==2) {this[i] = 29}
} 
return this
}

function isDate(dtStr){
var daysInMonth = DaysArray(12)
var pos1=dtStr.indexOf(separator)
var pos2=dtStr.indexOf(separator,pos1+1)
var strMonth=dtStr.substring(0,pos1)
var strDay=dtStr.substring(pos1+1,pos2)
var strYear=dtStr.substring(pos2+1)
strYr=strYear
if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
for (var i = 1; i <= 3; i++) {
if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
}
month=parseInt(strMonth)
day=parseInt(strDay)
year=parseInt(strYr)
if (pos1==-1 || pos2==-1){
alert("The date format should be : MM/DD/YYYY")
return false
}
if (strMonth.length<1 || month<1 || month>12){
alert("Please enter a valid month")
return false
}
if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
alert("Please enter a valid day")
return false
}
if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
alert("Please enter a valid Year or Date ")
return false
}
if (dtStr.indexOf(separator,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, separator))==false){
alert("Please enter a valid date")
return false
}
}

function ValidateDate(){
var dt=document.contactfrm.bdate
if (isDate(dt.value)==false){
dt.focus()
return false
}
return true
}
</script>

    </head><!--/head-->
    <body class="homepage">

    <background-image src="back.jpeg"></background-image>
        <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        
                    </div>
                    <div class="col-sm-6 col-xs-8">
                        <div class="social">
                            <ul class="social-share">
                                <li><a href="https://www.facebook.com/EDventure-533619816791577/timeline/"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="https://twitter.com/EDventure03"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://in.linkedin.com/in/EDventure"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="https://dribbble.com/EDventure03"><i class="fa fa-dribbble"></i></a></li>
                            
                            </ul>
                            
                        </div>
                    </div>
                </div>
            </div><!--/.container-->
        </div><!--/.top-bar-->

        <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp"><img src="images/edventurelogo.png" alt="logo"></a>
                </div>

                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                       <li><a href="userlogin.jsp">Login</a></li>
                           
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->

    </header><!--/header-->
    <section id="contact-page">
        <div class="container">
            <div class="center">        
                <br>
                <br>
                <h2>REGISTRATION</h2>
               
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form123" class="contact-form" name="contactfrm" 
                      method="post" onSubmit="return ValidateDate()" action="main.jsp"  >
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>First Name*</label>
                            <input type="text" name="fname" class="form-control"required="required">
                        </div>
                        <div class="form-group">
                            <label>Last Name*</label>
                            <input type="text" name="lname" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Gender*  </label>
                            <br><br> <label>Female</label> <input type="radio" name="gender" value="Female" required="required" > &nbsp;&nbsp;&nbsp;<label>Male</label> <input type="radio" name="gender" value="Male" required="required">
                        </div><br>
                        <div class="form-group">
                            <label>Date of Birth*  </label>
                            <input type="datetime" name="bdate" class="form-control" placeholder="MM/DD/YYYY" required="required">
                        </div>
                        <div class="form-group">
                            <label>Address *</label>
                            <input type="textbox" name="add" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>State* </label>
                            <select name="sname" class="form-control" required="required">
                                <option>Arunachal Pradesh</option>
                                <option>Assam</option>
                                <option>Bihar</option>
                                <option>Goa</option>
                                <option>Chhattisgarh</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Himachal Pradesh</option>
                                <option>Jammu & Kashmir</option>
                                <option>Jharkhand</option>
                                <option>Karnataka</option>
                                <option>Kerala</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Manipur</option>
                                <option>Meghalaya</option>
                                <option>Mizoram</option>
                                <option>Nagaland</option>
                                <option>Orissa</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Sikkim</option>
                                <option>Tamil Nadu</option>
                                <option>Tripura</option>
                                <option>Uttar Pradesh</option>
                                <option>Uttarakhand</option>
                                <option>West Bengal</option>
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label>City* </label>
                             <select name="cname" class="form-control" required="required">
                                <option>Abhayapuri</option>
                                <option>Achabbal</option>
                                <option>Amritsar</option>
                                <option>Ahmedabad</option>
                                <option>Bharuch</option>
                                <option>Bhavnagar</option>
                                <option>Bhopal</option>
                                <option>Chandigarh</option>
                                <option>Chennai</option>
                                <option>Daman</option>
                                <option>Diu </option>
                                <option>Faridabad</option>
                                <option>Gandhinagar</option>
                                <option>Gwalior</option>
                                <option>Haridwar</option>
                                <option>Hyderabad</option>
                                <option>Indore</option>
                                <option>Jaipur</option>
                                <option>Jammu</option>
                                <option>Jamnagar</option>
                                <option>Junagadh</option>
                                <option>Kolkata</option>
                                <option>Kutch</option>
                                <option>Lucknow </option>
                                <option>Ludhiana</option>
                                <option>Mainpuri</option>
                                <option>Mumbai</option>
                                <option>Mysore</option>
                                <option>Navsari</option>
                                <option>Nagpur</option>
                                <option>New Delhi</option>
                                <option>Osmanabad</option>
                                <option>Panipat</option>
                                <option>Porbandar</option>
                                <option>Pune</option>
                                <option>Raipur</option>
                                <option>Solapur</option>
                                <option>Surat</option>
                                <option>Srinagar</option>
                                <option>Surat</option>
                                <option>Thiruvananthapuram</option>
                                <option>Thane</option>
                                <option>Udaipur</option>
                                <option>Ujjain</option>
                                <option>Vadodara</option>
                                <option>Valsad</option>
                                <option>Yavatmal</option>
                                <option>Zunheboto</option>
                                
                                
                                
                                
                            </select>

                        </div>
                        
                        <div class="form-group">
                            <label>Email Id* </label>
                            <input type="email" name="ename" class="form-control" required="required">
                            
                        </div>
                        

                        <div class="form-group">
                            <label>Contact No* </label>
                            <input type="number" name="ctname" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Qualification* </label>
                             <select name="qname" class="form-control" required="required">
                                 <option>Diploma in Computer Engg.</option>
                                  <option>Diploma in Mechanical Engg.</option>
                                   <option>Diploma in Automobile Engg.</option>
                                    <option>Diploma in Civil Engg.</option>
                                     <option>Diploma in Electrical Engg.</option>
                                      <option>Diploma in Chemical Engg.</option>
                                       <option>Diploma in Information Engg.</option>
                                        <option>BTech in Computer Engg.</option>
                                  <option>BTech in Mechanical Engg.</option>
                                   <option>BTech in Automobile Engg.</option>
                                   <option>BTech in Civil Engg.</option>
                                     <option>BTech in Electrical Engg.</option>
                                      <option>BTech in Chemical Engg.</option>
                                       <option>BTech in Information Engg.</option>
                                       <option>MTech in Computer Engg.</option>
                                <option>MTech in Mechanical Engg.</option>
                                   <option>MTech in Automobile Engg.</option>
                                   <option>MTech in Civil Engg.</option>
                                     <option>MTech in Electrical Engg.</option>
                                      <option>MTech in Chemical Engg.</option>
                                       <option>MTech in Information Engg.</option>
                                
                                    </select>
                        </div>
                        <div class="form-group">
                            <label>Your Favourite Teacher* </label>
                            <input type="text" name="fav" class="form-control" required="required" placeholder="Security Question">
                        </div>
                        <div class="form-group">
                            <label>User Id* </label>
                            <input type="text" name="uname" class="form-control" required="required">
                        </div>
                        <div class="form-group">
                            <label>Password* </label>
                            <input type="password" name="pname" class="form-control" required="required">
                            
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" value="Submit" name="Submit" onclick="return ValidateDate()" class="btn btn-primary btn-lg">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
    </section>
     <center>
    </center>
    
    <section id="bottom">
        <div class="container wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Company</h3>
                        <ul>
                            <li><a href="#">About us</a></li>
                            <li><a href="#">We are hiring</a></li>
                            <li><a href="#">Meet the team</a></li>
                            <li><a href="#">Copyright</a></li>
                            <li><a href="#">Terms of use</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Support</h3>
                        <ul>
                            <li><a href="#">Faq</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Forum</a></li>
                            <li><a href="#">Documentation</a></li>
                            <li><a href="#">Refund policy</a></li>
                            <li><a href="#">Ticket system</a></li>
                            <li><a href="#">Billing system</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Developers</h3>
                        <ul>
                            <li><a href="#">Web Development</a></li>
                            <li><a href="#">SEO Marketing</a></li>
                            <li><a href="#">Theme</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Email Marketing</a></li>
                            <li><a href="#">Plugin Development</a></li>
                            <li><a href="#">Article Writing</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->

                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h3>Our Partners</h3>
                        <ul>
                            <li><a href="#">Adipisicing Elit</a></li>
                            <li><a href="#">Eiusmod</a></li>
                            <li><a href="#">Tempor</a></li>
                            <li><a href="#">Veniam</a></li>
                            <li><a href="#">Exercitation</a></li>
                            <li><a href="#">Ullamco</a></li>
                            <li><a href="#">Laboris</a></li>
                        </ul>
                    </div>    
                </div><!--/.col-md-3-->
            </div>
        </div>
    </section><!--/#bottom-->

    <footer id="footer" class="midnight-blue">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    &copy; 2015 <a target="_blank" href="https://accounts.google.com">EDventure</a>. All Rights Reserved.
                </div>
                <div class="col-sm-6">
                    <ul class="pull-right">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer><!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>

</body>
</html>
