<%@page import="java.sql.SQLException"%>
<%@page import="p1.Conn"%>
<%@page import="model.Mail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="umenu.jsp"%>
<%//@include file="underconstruction.jsp"%>
<html>
    <body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">

  <link rel="stylesheet" href="/resources/demos/style.css">

  <script src="css/calender.css"></script>

  <script>

  $( function() {

    $( "#datepicker" ).datepicker();

  } );

  </script>
  
 
<div class="container">
    <div class="col-lg-2">
        
    </div>
    <div class="col-lg-8">
            <table border="5" align="center"><tr><td><img src="img/pic1.gif" height="0%" width="00%">
                <center><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Change password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2></center> 
               
     <form action="" method="post">
         <table align="center">     
                
                
              
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Old Password </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="opass1"required="true" placeholder="Enter password"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;new Password </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="npass1"required="true" placeholder="Enter password"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="npass2"required="true" placeholder="Re Enter password"></td>
                </tr>
                
                
                <tr>
                    <td colspan="2"><center><br/><input type="submit" value="Change Password" name="change"> <br/><br/> </center>
                </td>
                </tr> 
                <tr><td></td></tr>
         <tr><td><br/></td></tr>
            </table>
                        
        </form>
                <%
        String login1=request.getParameter("cuser");
        
        String id =(String)session.getAttribute("ids");
        String psw =(String)session.getAttribute("PASS");
                %>   <center>  <font color="red">
                       <%=login1==null?"":login1%> <br/></fornt color>
                </center><br/><br/>
                </td></tr>  
                <!-- Sign-up table end -->
                
  </table>
    </div>
        <div class="col-lg-2">
        </div>
    </div>               
    </body>
</html>

<%@include file="footer.jsp"%>

<%
     
  String change=request.getParameter("change");
  if(change!=null){
      String opass1=request.getParameter("opass1").trim();
      String pass1=request.getParameter("npass1").trim();
      String pass2=request.getParameter("npass2").trim();
      
      if(pass1.equals(pass2)){
          if(psw.equalsIgnoreCase(opass1)){
           try{ 
       Connection con=Conn.getCon(); 
       PreparedStatement ps = con.prepareStatement("update servants set password =? where email=? or mobile=?");
       ps.setString(1,pass1);
       ps.setString(2,id);
       ps.setString(3,id);
       int t=ps.executeUpdate();
       if(t>0){session.setAttribute("PASS", pass1);
          response.sendRedirect("passchange.jsp?cuser=Password Changed !!!");
       }else response.sendRedirect("passchange.jsp?cuser=Password not Changed !!!");
           }catch(Exception e){
               response.sendRedirect("passchange.jsp?cuser=SQL Exception !!!");
           }
          
      }else {
              response.sendRedirect("passchange.jsp?cuser=Password wrong !!!");
          }
      }else{
          response.sendRedirect("passchange.jsp?cuser=Password not Match !!!");
      }
  }

%>