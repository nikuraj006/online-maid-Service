
<%@include file="menu.jsp"%>
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
            <table border="5" align="center"><tr><td><img src="img/pic1.gif" height="35%" width="100%">
                <center><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Signup Here&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h2></center> 
               
     <form action="register.jsp" method="post">
         <table align="center" >     
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" required="true" placeholder="Enter your name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email  </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="email" required="true" placeholder="Enter Email id">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass1"required="true" placeholder="Enter password"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="pass2"required="true" placeholder="Re Enter password"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="mobile"required="true" placeholder="Enter 10 digit mobile number"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="sex" required="true">
                            <option value="">Select Sex</option>
                         <option value="Male">Male</option>
                         <option value="Female">Female</option>
                         <option value="Others">Other</option>
                            </select>
                         </td>
                </tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;BirthDay</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" id="date" name="dob"required="true" placeholder="MM/DD/YYYY"></td>
                </tr>
                <tr>
                    <td colspan="2" rowspan="1"><center><input type="radio" name="role" value="Customer" required="true">Customer
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="role" value="Job Finder" >Job Finder</center></td>
                </tr>
                
                <tr>
                    <td colspan="2"><center><input type="submit" value="Signup" name="signup"> <br/><br/> </center>
                </td>
                </tr> 
                <tr><td></td></tr>
         <tr><td><br/></td></tr>
            </table>
                        
        </form>
                <%
        String login1=request.getParameter("cuser");
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
