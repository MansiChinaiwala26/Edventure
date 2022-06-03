<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Register Form | EDventure</title>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <link rel="shortcut icon" href="images/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <script language ="javascript">
        function setVal(sval)
        {

            if(sval=="Fresher")
            {
                document.getElementById("expyears").disabled=true;
                document.getElementById("company").disabled=true;
                document.getElementById("designation").disabled=true;
                document.getElementById("salary").disabled=true;
                document.getElementById("comAddress").disabled=true;
            }
            else{
                document.getElementById("expyears").disabled=false;
                document.getElementById("company").disabled=false;
                document.getElementById("designation").disabled=false;
                document.getElementById("salary").disabled=false;
                document.getElementById("comAddress").disabled=false;
            }
        }

        function check()
        {
            var a=document.form1.collegephone.value;
            var b=document.form1.mark10.value;
            var c=document.form1.mark12.value;
            var d=document.form1.markDegree.value;
            var e=document.form1.telephone.value;
            var f=document.form1.pin.value;
            var x=document.form1.name.value;
            var y=document.form1.college.value;
            var z=document.form1.password.value;

            if(document.form1.name.value=="")
            {
                alert("Enter Your Name");
                document.form1.name.focus();
                return false;
            }
            else if(parseInt(x))
            {
                alert("Enter name Correctly");
                document.form1.name.focus();
                return false;

            }
            if(document.form1.gender.value=="")
            {
                alert("Enter your gender");
                document.form1.gender.focus();
                return false;
            }
            if(document.form1.dob.value=="")
            {
                alert("Enter Date of Birth");
                document.form1.dob.focus();
                return false;
            }
            if(document.form1.college.value=="")
            {
                alert("Enter College Name ");
                document.form1.college.focus();
                return false;
            }
            else if(parseInt(y))
            {
                alert("Enter College Name correctly");
                document.form1.college.focus();
                return false;
            }
            if(document.form1.collegephone.value=="")
            {
                alert("Enter collegephone number ");
                document.form1.collegephone.focus();
                return false;
            }
            else if(!parseInt(a))
            {
                alert("Enter CollegePhone Integer");
                document.form1.collegephone.focus();

                return false;
            }
            else if(((document.form1.collegephone.value.length)<6) || ((document.form1.collegephone.value.length)>11))
            {
                alert("Phone no: should contain atleast 6 integers ");
                document.form1.collegephone.focus();
                return false;
            }
            if(document.form1.collegeemail.value=="")
            {
                alert("Enter College email ");
                document.form1.collegeemail.focus();
                return false;
            }
            else if(document.form1.collegeemail.value.indexOf('@')==-1)
            {
                alert("Use @ email correctly");
                document.form1.collegeemail.focus();
                return false;
            }
            else if(document.form1.collegeemail.value.indexOf('.')==-1)
            {
                alert("Use . email correctly");
                document.form1.collegeemail.focus();
                return false;
            }
            if(document.form1.branch.value=="")
            {
                alert("Specify Branch");
                document.form1.branch.focus();
                return false;
            }
            if(document.form1.mark10.value=="")
            {
                alert("Enter your 10th %mark")
                document.form1.mark10.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Not Integers used");
                document.form1.mark10.focus();
                return false;
            }
            else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter 10th % mark correctly  ");
                document.form1.mark10.focus();
                return false();
            }

            if(document.form1.mark12.value=="")
            {
                alert("Enter 12th mark")
                document.form1.mark12.focus();
                return false;
            }
            else if(!parseInt(c))
            {
                alert("Not Integers used");
                document.form1.mark12.focus();
                return false;
            }
            else if(parseInt(c)<0||parseInt(c)>100)
            {
                alert("Enter 12th %mark correctly  ");
                document.form1.mark12.focus();
                return false();
            }

            if(document.form1.markDegree.value=="")
            {
                alert("Enter Degree mark");
                document.form1.markDegree.focus();
                return false;
            }
            else if(!parseInt(d))
            {
                alert("Enter Integer");
                document.form1.markDegree.focus();
                return false;
            }
            else if(parseInt(d).length<0||parseInt(d).length>100)
            {
                alert("Enter Degree % mark correctly  ");
                document.form1.markDegree.focus();
                return false;
            }
            if(document.form1.degree.value=="")
            {
                alert("Enter Degree");
                document.form1.degree.focus();
                return false;
            }
            if(document.form1.username.value=="")
            {
                alert("Enter  Username");
                document.form1.username.focus();
                return false;
            }

            if(document.form1.password.value=="")
            {
                alert("Enter Password");
                document.form1.password.focus();
                return false;
            }
            if(z.length<8)
            {
                alert("Password should be minimum 8 characters");
                document.form1.password.focus();
                return false;
            }
            if(document.form1.email.value=="")
            {
                alert("Enter email ");
                document.form1.email.focus();
                return false;
            }
            else if(document.form1.email.value.indexOf('@')==-1)
            {
                alert("Use @ email correctly");
                document.form1.email.focus();
                return false;
            }
            else if(document.form1.email.value.indexOf('.')==-1)
            {
                alert("Use . email correctly");
                document.form1.email.focus();
                return false;
            }
            if(document.form1.telephone.value=="")
            {
                alert("Enter phone number ");
                document.form1.telephone.focus();
                return false;
            }
            else if(!parseInt(e))
            {
                alert("Enter Ph Integer");
                return false;
            }
            else if(((document.form1.telephone.value.length)<6) || ((document.form1.telephone.value.length)>11))
            {
                alert("Phone no should contain atleast 6 integers ");

                document.form1.telephone.focus();
                return false;
            }
            if(document.form1.address.value=="")
            {
                alert("Enter Address");
                document.form1.address.focus();
                return false;
            }
            if(document.form1.state.value=="")
            {
                alert("Specify State");
                document.form1.address.focus();
                return false;
            }
            if(document.form1.pin.value=="")
            {
                alert("Enter pin number ");
                document.form1.pin.focus();
                return false;
            }
            else if(!parseInt(f))
            {
                alert("Enter Integer");
                document.form1.pin.focus();
                return false;
            }
            else if((document.form1.pin.value.length)<6)
            {
                alert("Pin no: should contain 6 integers ");
                document.form1.pin.focus();
                return false;
            }
            if(document.form1.sel_cat.value=="")
            {
                alert("Specify Category");
                document.form1.sel_cat.focus();
                return false;
            }

            return true;
        }
    </script>
    </head>

    

<body class="homepage">

    <header id="header">
        <div class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-xs-4">
                        <div class="top-number"><p><i class="fa fa-phone-square"></i>  +0123 456 70 90</p></div>
                    </div>
                    <div class="col-sm-6 col-xs-8">
                        <div class="social">
                            <ul class="social-share">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li> 
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                            </ul>
                            <div class="search">
                                <form role="form">
                                    <input type="text" class="search-form" autocomplete="off" placeholder="Search">
                                    <i class="fa fa-search"></i>
                                </form>
                            </div>
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
                    <a class="navbar-brand" href="index.html"><img src="images/service/logo2.png" alt="logo"></a>
                </div>

                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="Registration.jsp">Registration</a></li>
                        <li><a href="about-us.html">About Us</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="portfolio.html">Portfolio</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <i class="fa fa-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="blog-item.html">Blog Single</a></li>
                                <li><a href="pricing.html">Pricing</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="shortcodes.html">Shortcodes</a></li>
                            </ul>
                        </li>
                        <li><a href="blog.html">Blog</a></li> 
                        <li><a href="contact-us.html">Contact</a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->

    </header><!--/header-->
<center>
    <table>

        <tr>
            <td width="1" valign="top"></td>
            <td width="759"><form action="savestudentdata.jsp" method="post" name="form1" id="form1" onsubmit="return check()">
                    <table width ="115%" border="0" cellpadding="3" cellspacing="0"  align="center">
                        <tr  wdth ="100%">
                        <tr><td></td></tr>
                        <tr><td></td></tr>
                            <td height="27" colspan="4"><div align="center" class="style4"><font color="#006666" size="16">Registration</font></div></td>
                            <tr><td></td></tr>
                            <tr><td></td></tr>
                        </tr>
                        <tr width ="100%">
                            <td width="6%" bgcolor=><span class="style5"></span></td>
                            <td width="32%"><font size="2"  face ="arial" >Name&nbsp;<font color="blue"> (as in academic records) </font></font></td>
                            <td width="52%"><input type="text" name="name" size="30" maxlength="30" value='' /></td>
                            <td width="10%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Gender</font></td>
                            <td><select name="gender" >
                                    <option  value="Female">Female</option>
                                    <option  value="Male">Male </option>
                                </select>              </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial" >Date of Birth&nbsp;</font><font color="blue">(dd/mm/yy)</font></td>
                            <td><input type="text" name="dob" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td height="29"><font size="2" color="black" face ="arial">College in which studying</font></td>
                            <td><input type="text" name="college" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">College Phone</font></td>
                            <td><input type="text" name="collegephone" size="30" maxlength="30" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">College Email</font></td>
                            <td><input type="text" name="collegeemail" size="30" maxlength="50" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Branch of study</font></td>
                            <td><select name="branch" >
                                    <option  value="">------Select--------- </option>
                                    <option  value="Applied Electro            ">Applied Electronics </option>
                                    <option  value="Applied Physics            ">Applied Physics </option>
                                    <option  value="B C A                      ">B C A </option>
                                    <option  value="Bioinformatics              ">Bioinformatics </option>
                                    <option  value="Biotechnology              ">Biotechnology </option>
                                    <option  value="Chemistry                  ">Chemistry </option>
                                    <option  value="Comp and Networking        ">Computer and Networking </option>
                                    <option  value="Comp Application           ">Computer Application </option>
                                    <option  value="Comp Application &amp; IT      ">Computer Application &amp; IT </option>
                                    <option  value="Comp Hardware Maintenance  ">Computer Hardware Maintenance </option>
                                    <option  value="Comp Information Systems   ">Computer Information Systems </option>
                                    <option  value="Comp Maintenance           ">Computer Maintenance </option>
                                    <option  value="Comp Maintenance &amp; Electro ">Computer Maintenance &amp; Electronics </option>
                                    <option  value="Comp Science               ">Computer Science </option>
                                    <option  value="Comp Science &amp; Information ">Computer Science &amp; Information </option>
                                    <option  value="Comp Technology            ">Computer Technology </option>
                                    <option  value="Electro                    ">Electronics </option>
                                    <option  value="Electro &amp; Communication    ">Electronics &amp; Communication </option>
                                    <option  value="Electro &amp; Comp Hardware    ">Electronics &amp; Computer Hardware </option>
                                    <option  value="Electro &amp; Comp Maintenance ">Electronics &amp; Computer Maintenance </option>
                                    <option  value="Industrial Chemistry       ">Industrial Chemistry </option>
                                    <option  value="Information Technology     ">Information Technology </option>
                                    <option  value="Instrumentation            ">Instrumentation </option>
                                    <option  value="Mathematics                ">Mathematics </option>
                                    <option  value="Optical Instrumentation    ">Optical Instrumentation </option>
                                    <option  value="Physics                    ">Physics </option>
                                    <option  value="Physics &amp; Electro          ">Physics &amp; Electronics </option>
                                    <option  value="Physics Instrumentation    ">Physics Instrumentation </option>
                                    <option  value="Physics with Comp App      ">Physics with Comp Applications </option>
                                    <option  value="Software Systems           ">Software Systems </option>
                                    <option  value="Software Technology        ">Software Technology </option>
                                    <option  value="Statistics                 ">Statistics </option>
                                </select>              </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">% of Marks</font></td>
                            <td><table width="220" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td width="72"><div align="center"><font size="1" color="black" face ="arial">X % </font></div></td>
                                        <td width="73"><div align="center"><font size="1" color="black" face ="arial">XII %</font> </div></td>
                                        <td width="75"><div align="right"><font size="1" color="black" face ="arial">BCA / B.Sc. %</font></div></td>
                                    </tr>
                                    <tr>
                                        <td><div align="center"><font size="1" color="black" face ="arial">
                                                <input type="text" name="mark10" size="5" maxlength="5" value='' onblur="checkDec('mark10')" />
                                                </font></div></td>
                                        <td><div align="right">
                                                <input type="text" name="mark12" size="5" maxlength="5" value='' onblur="checkDec('mark12')" />
                                            </div></td>
                                        <td>

                                            <div align="right">
                                                <input type="text" name="markDegree" size="5" maxlength="5" value='' onblur="checkDec('markBSC')" />
                                            </div></td></tr>
                                </table></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial"> Degree</font></td>
                            <td><select name="degree">
                                    <option value ="BTech">BTech</option>
                                    <option value ="MTech">MTech</option>
                                    <option value ="MCA">MCA</option>
                                    <option value ="BCA">BCA</option>
                                    <option value ="BSc">BSC</option>
                                    <option value ="MSc">MSc</option>
                                </select>              </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr wdth ="100%">
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Username</font></td>
                            <td><input type="text" name="username" size="30" maxlength="30" value='' /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr wdth ="100%">
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Password</font></td>
                            <td><input type="password" name="password" size="30" maxlength="30" value='' /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Email_id</font></td>
                            <td><input type="text" name="email" size="30" maxlength="30" value='' /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Telephone Number</font></td>
                            <td><input type="text" name="telephone" value="" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font face="Arial, helvetica" color="#000000" size="-1">Address</font></td>
                            <td><input class="USS_TEXT" maxlength="30" name="address" size="40" value='' />
                                <b><font face="ARIAL, HELVETICA" color="red" size="+2"></font></b></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font face="Arial, helvetica" color="#000000" size="-1">State</font></td>
                            <td><select name="state">
                                    <option selected="selected" value="">Select State</option>
                                    <option value="AP">Andhra Pradesh</option>
                                    <option value="AR">ArunachalPradesh</option>
                                    <option value="AS">Assam</option>
                                    <option value="BR">Bihar</option>
                                    <option value="CH">Chandigarh</option>
                                    <option value="CG">Chattisgarh</option>
                                    <option value="DL">Delhi</option>
                                    <option value="GA">Goa</option>
                                    <option value="GJ">Gujarat</option>
                                    <option value="HR">Haryana</option>
                                    <option value="HP">Himachal Pradesh</option>
                                    <option value="JK">Jammu &amp; Kashmir</option>
                                    <option value="JH">Jharkhand</option>
                                    <option value="KA">Karnataka</option>
                                    <option value="KL">Kerala</option>
                                    <option value="MP">Madhya Pradesh</option>
                                    <option value="MH">Maharashtra</option>
                                    <option value="MN">Manipur</option>
                                    <option value="ML">Meghalaya</option>
                                    <option value="MZ">Mizoram</option>
                                    <option value="NL">Nagaland</option>
                                    <option value="OR">Orissa</option>
                                    <option value="PY">Pondicherry</option>
                                    <option value="PB">Punjab</option>
                                    <option value="RJ">Rajasthan</option>
                                    <option value="SK">Sikkim</option>
                                    <option value="TN">Tamilnadu</option>
                                    <option value="TR">Tripura</option>
                                    <option value="UA">Uttaranchal</option>
                                    <option value="UP">Uttar Pradesh</option>
                                    <option value="WB">West Bengal</option>
                                    <option value="XX">Others</option>
                                </select>              </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font face="Arial, helvetica" color="#000000" size="-1">Pincode</font></td>
                            <td><input class="USS_TEXT" maxlength="6" name="pin" size="6" value='' /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font face="Arial, helvetica" color="#000000" size="-1" >Category</font></td>
                            <td><select name="sel_cat" id="sel_cat" onchange="setVal(this.value)">
                                    <option value="category">select a category</option>
                                    <option value="Fresher">Fresher</option>
                                    <option value="Experienced">Experienced</option>
                                </select>              </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Experienced Years</font></td>
                            <td><input type="text" name="expyears" id="expyears" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Company</font></td>
                            <td><input type="text" name="company" id="company" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Designation </font></td>
                            <td><input type="text" name="designation" id="designation" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Salary</font></td>
                            <td><input type="text" name="salary" id="salary" size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td><span class="style5"></span></td>
                            <td><font size="2" color="black" face ="arial">Company Address</font></td>
                            <td><input type="text" name="comAddress" id="comAddress"  size="30" maxlength="30" /></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4" align="center"><br/>
                                <input type="reset" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" value="submit" />
                                <br />
                                <br /> </td>
                        </tr>                    
                    </table>
                </form>
            </td>
        </tr>

    </table>
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
                &copy; 2013 <a target="_blank" href="http://shapebootstrap.net/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>. All Rights Reserved.
            </div>
            <div class="col-sm-6">
                <ul class="pull-right">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Faq</a></li>
                    <li><a href="#">Contact Us</a></li>
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
