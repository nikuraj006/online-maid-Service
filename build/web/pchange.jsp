
<%@include file="umenu.jsp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.Connection"%>



<%
      try{ 
           String login1=request.getParameter("cuser");
        
           String id =(String)session.getAttribute("id");
           String psw =(String)session.getAttribute("upass");
           String pass=request.getParameter("opass1").trim();
          String pass1=request.getParameter("npass1").trim();
          String pass2=request.getParameter("npass2").trim();
        
          
          if(pass1.equals(pass2)){
              if(psw.equals(pass)){
              
    
       Connection con=Conn.getCon(); 
       PreparedStatement ps = con.prepareStatement
        ("update register set password=? where email=? or mobile=?");
    ps.setString(1, pass1);
    ps.setString(2, id);
    ps.setString(3, id);
   
    
    
   
   
   int t=ps.executeUpdate();
   if(t>0){
                        
    response.sendRedirect("index.jsp?cuser=Password Successful Changed !!!");
   }
   }else  response.sendRedirect("passchange.jsp?cuser=old password is wrong !!!");
      
          }    else  response.sendRedirect("passchange.jsp?cuser=Password not match  !!!");  
    

}catch(SQLException e){
     out.print(e);
     out.print(e);
   // response.sendRedirect("passchange.jsp?cuser=Password not Changed !!!");
     
           }

%>