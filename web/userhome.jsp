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
<body>
    
       <%
if(request.getParameter("m1")!=null){%>
    
    <script>alert('Login Success..!')</script>
}  

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed..!')</script>
 <%
}
%>

    <div id="templatemo_wrapper_outer">
    <div id="templatemo_wrapper">

    <div id="templatemo_header">
    <div id="site_title">
    <center><h3>Yamaha Motor - Bike E-Catalogue</h3></center>
    </div> 		
    <div class="cleaner"></div>
    </div>

    <div id="templatemo_menu">
    <%
    String user = session.getAttribute("username").toString();
    %>    
        
    <ul>
    <li><a href="userhome.jsp" class="current"> Home </a></li>
    <li><a href="search.jsp" > Search Bikes</a></li>
      <li><a href="uview.jsp" > View QR Codes</a></li>
    <li><a href="logout.jsp"> Logout </a></li>
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

    
    <br/><br/><br/>    
    <center><p><font size="5" color="skyblue"> Welcome <%=user%> </font></p><br/></center>
     
   

    
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