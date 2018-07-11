
<%@page import="java.sql.Connection"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>

<% String id ="nikuraj006@gmail.com";
        //(String)session.getAttribute("ids");
   Date date = new Date();
   String d=date.toString();
   //out.print( "<h2 align=\"center\">" +date.toString()+"</h2>");

try{ 
       Connection con2=Conn.getCon(); 
       PreparedStatement ps1 = con2.prepareStatement("insert into servants (lastlogin) values(?) where email=? or mobile=?");
    ps1.setString(1, d);
    ps1.setString(2, id);
    ps1.setString(3, id);
   
   int t1=ps1.executeUpdate();
   if(t1>0){
       
       
    
   }
}catch(Exception e){
    
}
   
%>