<%@page import="org.apache.naming.factory.SendMailFactory"%>
<%@include file="umenu.jsp"%>
<%@page import="model.Mail"%>
<form action="" method="post">
    <%String email = request.getParameter("username");%><br/><br/>
    <table align="center">
        <tr>
            <td>To</td><td><input type="text" name="tomail" readonly="true" value="<%=email%>"</td></tr>
            <tr> <td>From </td><td><input type="email" name="email"</td></tr>
           <!-- <tr><td>Message &nbsp;&nbsp;&nbsp;</td><td>   <textarea rows="6" cols="22.5" name="comment" form="usrform" placeholder="Enter text here...">
</textarea></td>-->
           <tr><td>Message &nbsp;&nbsp;&nbsp;</td><td><input type="text" name="comment" placeholder="Enter text here..."rows="6" cols="22.5"></td>
            </tr>
            <tr><td colspan="2"><center><input type="submit"  value="Send "name="submit"/></center></td></tr>
            
    </table>
</form>
         
   
            
          
            
            
           
                <%String bt = request.getParameter("submit");
                 if(bt!=null){
                  String message = request.getParameter("comment");
                  String toemail=request.getParameter("tomail").trim();
		  String mail[]=new String[1];
                  mail[0]=toemail;
                  String fromemail=request.getParameter("email").trim();
                   
                    //String msg=request.getParameter("comment");
                    String confirmationmail="You have got a message from "+fromemail+" "+"\nyou can contect!!!\n Message are \n"+message ;
                   if(Mail.sendMail("noreplyhousekeeeping@gmail.com","9097012783", "smtp.gmail.com", "465", "true","true", true,"javax.net.ssl.SSLSocketFactory","false",mail, "Job Alert", confirmationmail))
			{ 
                         %> <center><b><%out.print("Email send !!!");%></b></center><%
			}
			 else{
				
				out.print("Email not send !!!");
				
			}

                 } 
                %>
                
                
                
                
                
                
                
                
                  <%@include file="footer.jsp"%>