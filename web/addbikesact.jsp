<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    int id = 0;
    String a = request.getParameter("brand"); 
    String b = request.getParameter("bname");
    String c = request.getParameter("description");
    String d = request.getParameter("price");
    String e = request.getParameter("cc"); 
    String f = request.getParameter("pic");
    
    try{

    PreparedStatement ps=connection.prepareStatement("insert into bikes values(?,?,?,?,?,?,?)");

    ps.setInt(1,id);
    ps.setString(2,a);
    ps.setString(3,b);
    ps.setString(4,c);
    ps.setString(5,d);
    ps.setString(6,e);
    ps.setString(7,f);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("addbike.jsp?msg=Added");
    }
    else{
    response.sendRedirect("addbike.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception ex)
    {
            out.println(ex.getMessage());
    }
    %>