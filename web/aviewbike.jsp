<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yamaha Motor - Bike E-Catalogue</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />

<style>
    td{
    text-align: center;    
    }
</style>

</head>
<body>
    
       <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('Deleted Activated...!');</script>
       <%}%>
       <%
       if (request.getParameter("msg1") != null) {%>
       <script>alert('User DeAcivated...!');</script>
       <%}%>

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
    <li><a href="adminhome.jsp" >Home</a></li>
    <li><a href="addbike.jsp">Add Bike</a></li> 
     <li><a href="addimages.jsp">Add Images</a></li> 
        <li><a href="aviewbike.jsp" class="current">View Bikes</a></li> 
        <li><a href="avieusers.jsp">View Users</a></li> 
     <li><a href="uploadqr.jsp">Upload QR</a></li> 
    <li><a href="logout.jsp">Logout </a></li>
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
    </p>  </div>

    </div>
    </div>

    <div class="cs_article">
    <div class="slider_content_wrapper">
    <div class="slider_image">
    <img src="images/slider/templatemo_slide04.jpg" alt="" />
    </div>

    <div class="slider_content">
    <p>Yamaha Motor Co., Ltd. is a Japanese mobility manufacturer that produces motorcycles, motorboats, outboard motors, and other motorized products. The company was established in the year 1955 upon separation from Nippon Gakki Co., Ltd.
    </p> </div>

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

    
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>

    <%

    try {
    PreparedStatement ps = connection.prepareStatement("select * from bikes");
    ResultSet rs1 = ps.executeQuery();

    %>
    <p><center><font size="5" color="skyblue">View Bikes   </font></center></p><br/>
    
     <table border="2" width="100%">

    <tr>
    <th>Brand Name</th>
    <th>Model</th>
    <th>Description</th>
    <th>Price</th>
    <th>Cubic Capacity</th>
     <th>Images</th>
   
    

    </tr>

    <%     while (rs1.next()) {
    %>

    <tr>
    
    <td><%=rs1.getString(2)%></td>
    <td><%=rs1.getString(3)%></td>
    <td><%=rs1.getString(4)%></td>
    <td><%=rs1.getString(5)%></td>
    <td><%=rs1.getString(6)%></td>
    <th><img src="Gallery/<%=rs1.getString(7)%>"></img></th>
    
    </tr>
    <%
    }
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
     


    
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