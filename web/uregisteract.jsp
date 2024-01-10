<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    String fn = request.getParameter("un");
    String ln = request.getParameter("ln");
    String password = request.getParameter("password"); 
    String cp = request.getParameter("cpassword");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
  
    try{

    PreparedStatement ps=connection.prepareStatement("insert into user values(?,?,?,?,?,?,?)");

    ps.setString(1,fn);
  //  ps.setString(2,ln);                
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,address);;
    ps.setString(7,mobile);
    ps.setString(2,password);
   
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user.jsp?m1=Registered");
    }
    else{
    response.sendRedirect("uregister.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>