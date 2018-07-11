<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="lmenu.jsp"%>
<%@include file="search.jsp"%><br/><br/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   <meta name="description" content="JustForFind Indias local search engine provides online maid servant,online maid, online cook servant,online Shop, online shop servant, home maid,home servant,Food cook, Flowers in Mumbai, Delhi, Bangalore, Hyderabad, Chennai, Pune, Kolkata, Ahmedabad &amp; more.">
	<meta name="keywords" content="JustForFind, local search,online maid servant, travel, order food, grocery, medicines, online shopping, book tickets, movies, bus,  flights, hotels, events, search plus services, local businesses, online yellow pages, India trade directory, city yellow pages, indian search engine, JustForFind customer care, customer support,JustForFind Indias local search engine provides online maid servant,online maid, online cook servant,online Shop, online shop servant, home maid,home servant,Food cook, Flowers in Mumbai, Delhi, Bangalore, Hyderabad, Chennai, Pune, Kolkata, Ahmedabad &amp; more.">
    <meta name="author" content="Sushil ranjan">
    <link rel="icon" href="">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <link href="carousel.css" rel="stylesheet">
  </head>
 <div class="container">
    <div class="col-lg-3">
        <%String pincode = request.getParameter("pin");%>
        <%  
     String mobile="+91******";
     String catogry ="Driver";
     ResultSet  rs=null;
     String ids =(String)session.getAttribute("ids");
   Connection con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from servants where category=? and pin=? limit 10");
    ps.setString(1, catogry);
    ps.setString(2, pincode);
    rs = ps.executeQuery();
   while(rs.next()){
    String   name=rs.getString(1);
    String  city=rs.getString(4);
    String  pin=rs.getString(5);
    String   state=rs.getString(6);
    String   email=rs.getString(8);
    String sex=rs.getString(10);
        %> <a href="chechprofile.jsp?username=<%=email%>"> 
     <table align="center">
         <tr><td>Name </td><td>:<%=name%></td></tr>
         <tr><td>Sex </td><td>:<%=sex%></td></tr>
         <tr><td>City </td><td>:<%=city%></td></tr>
         <tr><td>Job </td><td>:<%=catogry%></td></tr>
         <tr><td>State </td><td>:<%=state%></td></tr>
         <tr><td>Mobile&nbsp;&nbsp;</td><td>:<%=mobile%></td></tr>
         
     </table><br/>
        </a>
     <%
    
   }}catch(Exception e){
        out.print("Record not available");
   } 
   %> 
        
    </div>
    <!-- maids -->
    
    <div class="col-lg-3">
       <%  
     catogry ="Cooks";
    
   con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from servants where category=? and pin=? limit 10");
    ps.setString(1, catogry);
    ps.setString(2, pincode);
    rs = ps.executeQuery();
   while(rs.next()){
    String   name=rs.getString(1);
    String  city=rs.getString(4);
    String  pin=rs.getString(5);
    String   state=rs.getString(6);
    String   email=rs.getString(8);
    String sex=rs.getString(10);
        %> <a href="chechprofile.jsp?username=<%=email%>">
     <table align="center">
         <tr><td>Name </td><td>:<%=name%></td></tr>
         <tr><td>Sex </td><td>:<%=sex%></td></tr>
         <tr><td>City </td><td>:<%=city%></td></tr>
          <tr><td>Job </td><td>:<%=catogry%></td></tr>
         <tr><td>State </td><td>:<%=state%></td></tr>
         <tr><td>Mobile&nbsp;&nbsp;</td><td>:<%=mobile%></td></tr>
     </table><br/>
        </a>
     <%
    
   }}catch(Exception e){
    out.print("Record not available");
   } 
   %> 
        
    </div>
    <!-- Driver -->
    
    <div class="col-lg-3">
        <%  
     catogry ="Gardener";
    
   con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from servants where category=? and pin=? limit 10");
    ps.setString(1, catogry);
    ps.setString(2, pincode);
    rs = ps.executeQuery();
   while(rs.next()){
    String   name=rs.getString(1);
    String  city=rs.getString(4);
    String  pin=rs.getString(5);
    String   state=rs.getString(6);
    String   email=rs.getString(8);
    String sex=rs.getString(10);
        %> <a href="chechprofile.jsp?username=<%=email%>"> 
     <table align="center">
         <tr><td>Name :</td><td><%=name%></td></tr>
         <tr><td>Sex </td><td>:<%=sex%></td></tr>
         <tr><td>City :</td><td><%=city%></td></tr>
          <tr><td>Job </td><td>:<%=catogry%></td></tr>
         <tr><td>State :</td><td><%=state%></td></tr>
         <tr><td>Mobile&nbsp;&nbsp;</td><td>:<%=mobile%></td></tr>
        
     </table><br/>
        </a>
     <%
    
   }}catch(Exception e){
 out.print("Record not available");
   } 
   %> 
    </div>
    <!-- Gardeners -->
    
    <div class="col-lg-3">
       <%  
     catogry ="Maids";
    
   con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from servants where category=? and pin=? limit 10");
    ps.setString(1, catogry);
    ps.setString(2, pincode);
    rs = ps.executeQuery();
   while(rs.next()){
    String   name=rs.getString(1);
    String  city=rs.getString(4);
    String  pin=rs.getString(5);
    String   state=rs.getString(6);
    String   email=rs.getString(8);
    String sex=rs.getString(10);
        %> <a href="chechprofile.jsp?username=<%=email%>"> 
     <table align="center">
         <tr><td>Name :</td><td><%=name%></td></tr>
         <tr><td>Sex </td><td>:<%=sex%></td></tr>
         <tr><td>City :</td><td><%=city%></td></tr>
          <tr><td>Job </td><td>:<%=catogry%></td></tr>
         <tr><td>State :</td><td><%=state%></td></tr>
         <tr><td>Mobile&nbsp;&nbsp;</td><td>:<%=mobile%></td></tr>
         
     </table><br/>
        </a>
     <%
    
   }}catch(Exception e){
 out.print("Record not available");
   } 
   %> 
    </div>
    <!-- cooks -->
    
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>   <%@include file="footer.jsp"%>