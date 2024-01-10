<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Yamaha Motor - Bike E-Catalogue</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link href="style1.css" rel="stylesheet" type="text/css" />
<style>
    td{
    text-align: center;    
    }
</style>

</head>
<body>
    
       <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('User Activated...!');</script>
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
    <li><a href="userhome.jsp" > Home </a></li>
    <li><a href="search.jsp" class="current"> Search</a></li>
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
        <p><center><font size="5" color="skyblue">Results  </font></center></p>
    <%
  String location = request.getParameter("location");
 
    try{
     String query1="select *from bikes where bike = '"+location+"' ";
             Statement st1=connection.createStatement();
      ResultSet rs6=st1.executeQuery(query1);
       
      while(rs6.next())
      {
          
      %>
        <figure> 
          <img height="100" width="100" src="Gallery/<%=rs6.getString("image")%>" />	
				 <div id="container">
				 <figcaption>
				 <span class="style8">Name :<span class="style27"><%=rs6.getString("bike")%></span></span><br />
				     <span class="style8">Capacity : <span class="style27"><%=rs6.getString("cc")%></span></span><br />
                                 <span class="style8">Price : <span class="style27"><%=rs6.getString("price")%></span></span><br />
                                 <span class="style8">Specifications : <span class="style27"><%=rs6.getString("description")%></span></span><br />
                               
                          <h2>More Colors</h2>         
    <a href="color.jsp?bname=<%=rs6.getString("bike")%>&color=red"><button Style="background-color: red">Red</button></a>
    <a href="color.jsp?bname=<%=rs6.getString("bike")%>&color=black"><button Style="background-color: rgb(255, 255, 255)">Black</button></a>
    <a href="color.jsp?bname=<%=rs6.getString("bike")%>&color=yellow"><button Style="background-color: yellow">Yellow</button></a>
    <a href="color.jsp?bname=<%=rs6.getString("bike")%>&color=white"><button Style="background-color: white">White</button></a>
    
				
				 </figcaption>
				 </div>	
		    </figure>    
        
        
        
      
     <% 
          
      }
     
               
               
           %>    
    <%
     
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
     
    </div>

    
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