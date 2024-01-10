<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
    try{
       
      int  uid=0;
      
      String query1="select * from user where username='"+username+"'  and password='"+password+"'"; 
      Statement st1=connection.createStatement();
      ResultSet rs=st1.executeQuery(query1);
      
	if(rs.next())
        {
         
         session.setAttribute("username",username);
         System.out.println("User:"+username);
            
                  
         response.sendRedirect("userhome.jsp?m1=success");
        }
       else 
        {
          response.sendRedirect("user.jsp?m2=Failed");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        %>