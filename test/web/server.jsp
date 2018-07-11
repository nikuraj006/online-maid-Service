<%@page import ="java.sql.*"%>
<% String user=request.getParameter("user");
   String pass=request.getParameter("psw");
   try{Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("","root","");
   PreparedStatement ps=con.prepareStatement("select * from login where user=? and pass=?");
   ps.setString(1,user);
   ps.setString(2,pass);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
      out.print("Login Successful"); 
   }
   else
       response.sendRedirect("index.html");
   }catch(Exception e)
   {
   out.print(e);
   }
%>

