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
if(request.getParameter("msg")!=null){%>
    
    <script>alert('QR Code added Success..!')</script>
}  

<%}
if(request.getParameter("m1")!=null){%>

 <script>alert('Login Failed..!')</script>
 <%
}
%>

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
     <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="addbike.jsp">Add Bike</a></li> 
     <li><a href="addimages.jsp">Add Images</a></li> 
        <li><a href="aviewbike.jsp">View Bikes</a></li> 
     <li><a href="avieusers.jsp">View Users</a></li> 
     <li><a href="uploadqr.jsp" class="current">Upload QR</a></li> 
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
    <%@ include file="connect.jsp" %>
    <%@ page session="true" %>     
      
    <%
    
    String query1="select * from bikes"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
      
    %>
    
    <center>
    <p><font size="4" color="red">Add QR Code</font></p><br/>   
    
    <form name="myform" action="addqrcodesact.jsp" method="post">
    <center><table width="381">
     
    

    <tr><td width="191" height="43"><font size="2"> Bike Name </td>
    <td width="218"><select name="bike" required="" style="width: 142px">
            <%
            
            while(rs.next()){
            
            %>
  
    <option value="<%=rs.getString("bike")%>"><%=rs.getString("bike")%></option>
   
    
    <%}%>
    
    </select>
    </td></tr>


    <tr>
    <td height="43"><font size="2"> QR Code </td>
    <td><font size="2"><input type="file" id="pic" name="pic" required=""/></td>
    </tr>

    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" ADD " /></td></tr>
    <tr></tr>      
    </table>
    </form>
    </center>


    
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