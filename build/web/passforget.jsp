<%@page import="model.Mail"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="menu.jsp"%>
<div class="container">
   
    
    <div class="col-lg-2">
        <br/>
    </div>
        <div class="col-lg-8">
            <table border="7"><tr><td><img src="img/pic1.gif" height="35%" width="100%">
        <center>
            <form action="" method="post">
                <table>
                    <tr><td colspan="2"><h2>&nbsp;&nbsp;Forgot your password &nbsp;&nbsp;&nbsp;</h2></td></tr>
                   <tr><td colspan="2"><br/></td></tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;Email  </td>
                    <td><input type="email" name="email"  placeholder="Enter Email id">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr><td colspan="2"><center>OR</center></td></tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;Mobile &nbsp;&nbsp;&nbsp; </td>
                    <td><input type="number" name="mobile" placeholder="Enter 10 digit mobile number"></td>
                </tr><tr><td colspan="2"><br/></td></tr>
                <tr>
                    <td colspan="2"><center><input type="submit" value="Reset" name="submit"></center><br/></td>
                </tr><tr><td colspan="2"><%
        String login1=request.getParameter("cuser");
                %>   <center>  <font color="red">
                    
        <%=login1==null?"":login1%></fornt color>
                </center><br/></td></tr>
                <tr><td colspan="2"><br/></td></tr>
                </table>
            </form>
            
        </center></td></tr></table>
    </div>
            
    <div class="col-lg-2">
        <br/>
    </div>

<div class="col-lg-12">
                  </div>

<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
<br/><br/><br/><br/>
</div>
<%@include file="footer.jsp"%>

<%
 String btn = request.getParameter("submit");
if(btn!=null){
   Connection con = Conn.getCon();
   String unm = request.getParameter("email");
   String upass = request.getParameter("mobile");
      if(unm==null&&upass==null){
          response.sendRedirect("passforget.jsp?cuser=Please enter atleast one fields  ");
          return;
      }else{
          try{
   PreparedStatement ps = con.prepareStatement("select * from register where email=? or mobile=? ");
   ps.setString(1, unm);
   ps.setString(2, upass);
       ResultSet rs = ps.executeQuery();
      /* PreparedStatement ps = con.prepareStatement("select * from register where email=? or mobile=? ");
   ps.setString(1, unm);
   ps.setString(2, upass);
       ResultSet rs = ps.executeQuery();*/
   if(rs.next()){
       
       String email=rs.getString(2);
      String password=rs.getString(3);
      String mobile=rs.getString(4);
       String urole=rs.getString(7);
    String message = "";
		String mail[]=new String[1];
          ps.close();
          mail[0]=email;
          String confirmationmail="Thanks for Useing House Keeping Website."+"\nYour Email is: "+email+"\n"+"Your Mobile Number is: "+mobile+"\n"+"Your Password is: "+password+"\n"+"You Signup As a :"+urole;
          if(Mail.sendMail("noreplyhousekeeeping@gmail.com","9097012783", "smtp.gmail.com", "465", "true","true", true,"javax.net.ssl.SSLSocketFactory","false",mail, "Password Reset", confirmationmail))
			{ 
				System.out.println("inside if-mail sent");
			}
			 else{				 System.out.println("inside else-could not send mail");
				
			}
			 message = "you are now registered";
			 
    response.sendRedirect("passforget.jsp?cuser=Password Send on your Email Address now you can check your email  ");
          rs.close();
   }else{
       response.sendRedirect("passforget.jsp?cuser=You are not registerd Used please register Fisrt ");
       
   }
          }catch(Exception e){
       response.sendRedirect("home.jsp");
   }
       
   
}}
%>