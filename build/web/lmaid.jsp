<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.PreparedStatement"%><%@include file="lmenu.jsp"%>
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
  <img src="img/maid.jpeg" height="225px" width="100%"/>
 <div class="container">
    <div class="col-lg-12">
        <%  String mobile="+91******";
     String catogry ="Maids";
     ResultSet  rs=null;
     //String ids =(String)session.getAttribute("ids");
   Connection con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from servants where category=? limit 10");
    ps.setString(1, catogry);
    rs = ps.executeQuery();
   while(rs.next()){
    String   name=rs.getString(1);
    String  city=rs.getString(4);
    String  pin=rs.getString(5);
    String   state=rs.getString(6);
    String   email=rs.getString(8);
        %> <a href="chechprofile.jsp?username=<%=email%>"> 
     <table align="center">
         <tr><td>Name </td><td>:<%=name%></td></tr>
         <tr><td>City </td><td>:<%=city%></td></tr>
         <tr><td>job </td><td>:<%=catogry%></td></tr>
         <tr><td>State </td><td>:<%=state%></td></tr>
         <tr><td>Mobile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>:<%=mobile%></td></tr>
         
     </table><br/>
        </a>
     <%
    
   }}catch(Exception e){
   } 
   %> 
        
    </div>
 </div>
    <!-- maids -->
    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
    <%@include file="footer.jsp"%>