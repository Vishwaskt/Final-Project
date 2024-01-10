<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yamaha Motor - Bike E-Catalogue</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

</head>
    <%
if(request.getParameter("m2")!=null){%>
    
    <script>alert('Registration  Failed..!')</script>
}  

<%}
if(request.getParameter("m8")!=null){%>

 <script>alert(' Failed..!')</script>
 <%
}
%>
    <script>
    function validateform(){  

var password=document.myform.password.value;
var cpassword=document.myform.cpassword.value;
var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno'); 


if(password==0){
            alert("Enter your password");
            document.myform.password.focus();
            
            return false;
        }
                              if(cpassword==0){
            alert("Enter your password cofirmation");
            document.myform.cpassword.focus();
            
            
            return false;
        }
        if(password!=cpassword){
            alert("Incorrect Confiorm password");
            document.myform.password.focus();
            
            return false;
        }
        var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
}
if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

  
    }
    </script>
<body>

    <div id="templatemo_wrapper_outer">
    <div id="templatemo_wrapper">

    <div id="templatemo_header">
    <div id="site_title">
    <center><font size="6" color="white">Yamaha Motor - Bike E-Catalogue</font></center>
    </div> 		
    <div class="cleaner"></div>
    </div>

    <div id="templatemo_menu">
    <ul>
     <li><a href="index.html">Home</a></li>
    <li><a href="admin.jsp">Admin</a></li>
      
    <li><a href="user.jsp" class="current">User</a></li>
    </ul>    	
    </div> 

    <div id="templatemo_slider_wrapper">
    <div id="templatemo_slider">
    <div id="one" class="contentslider">
    <div class="cs_wrapper">
    <div class="cs_slider">

    <div class="cs_article">
    <div class="slider_content_wrapper">

    <div class="slider_image">
    <img src="images/slider/templatemo_slide01.jpg" alt="" />
    </div>

    <div class="slider_content">
   <p>Yamaha Motor Co., Ltd. is a Japanese mobility manufacturer that produces motorcycles, motorboats, outboard motors, and other motorized products. The company was established in the year 1955 upon separation from Nippon Gakki Co., Ltd.
    </p> </div>

    </div>
    </div>

    <div class="cs_article">
    <div class="slider_content_wrapper">
    <div class="slider_image">
    <img src="images/slider/templatemo_slide04.jpg" alt="" />
    </div>

    <div class="slider_content">
  <p>Yamaha Motor Co., Ltd. is a Japanese mobility manufacturer that produces motorcycles, motorboats, outboard motors, and other motorized products. The company was established in the year 1955 upon separation from Nippon Gakki Co., Ltd.
    </p>  </div>

    </div>
    </div>

    </div>
    </div>
    </div>

    <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
    <script type="text/javascript">
        $(function() {
        $('#one').ContentSlider({
        width : '940px',
        height : '240px',
        speed : 400,
        easing : 'easeOutSine'
        });
        });
    </script>
    <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
    <script src="js/chili/recipes.js" type="text/javascript"></script>
    <div class="cleaner"></div>

    </div>
    </div>

    <div id="templatemo_content_wrapper">
    <div id="content">

    <p align="justify">
    <p><center><font color="skyblue" size="5"> User Registration </font></center></p><br/>
    <form name="myform" id="loginForm" action="uregisteract.jsp" method="post" onsubmit="return validateform()"> 
    <table align="center" width="371">
    <tr>
    <td width="191" height="43"><font color="white"> User Name </td>
    <td width="218"><input name="un" required="" placeholder="User Name" /></td>
    </tr>
    
        <tr>
    <td height="43"><font color="white">Password </td>
    <td><input name="password" type="password" id="pass1" required="" placeholder="Password"/></td>
    </tr>
        
    <tr>
    <td height="43"><font color="white"> Email ID</td>
    <td><input name="email" required="" placeholder="Email ID"/></td>
    </tr>

    <tr>
    <td height="43"><font color="white">Date Of Birth</td>
    <td><input type="date" name="dob" style="text-align:right" required="" ></td></label>
    </td>
    </tr>
    <tr>
    <td height="43"><font color="white">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>
   
    <tr>
    <td height="65"><font color="white">Address</td>
    <td><textarea name="address" rows="3" cols="20" required=""></textarea></td>
    </tr>
    <tr>
    <td height="43"><font color="white">Mobile Number </td>
    <td><input name="mobile" required="" id="txtphoneno"  placeholder="Mobile Number"/></td>
    </tr>
   
    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input type="submit" id="btnSubmit" value="Submit" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>
  

    
    </div>

    <div class="cleaner"></div>        
    </div>

    <div id="templatemo_content_wrapper_bottm"></div>
    <div id="templatemo_footer">
    
    </div>

    </div> 
    </div> 

</body>
</html>