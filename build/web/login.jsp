<%@page import="java.sql.SQLException"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="menu.jsp"%>



<img src="img/pic.gif" height="325px" width="100%"> 
<div class="container">
    <div class="col-lg-2">
        
    </div>
                 <h2><center>Login Here </center>
            <br/>
        </h2>
    <div class="col-lg-8">
        <form method="post" action="">
            <table align="right">
                <tr>
                    <td>Email/Mobile&nbsp&nbsp&nbsp&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td><td><input type="text" name="user" required="true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td>Password &nbsp;</td><td><input type="password" name="pass" required="true"></td>
                </tr>
                <tr>
                    <td colspan="2"><center><input type="radio" name="role" value="Customer" required="true">Customer
                    <input type="radio" name="role" value="Job Finder" >Job Finder</center></td>
                </tr>
                <tr>
                    <td colspan="2"><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"></center></td>

                </tr><tr><td colspan="2"><br/></td></tr>
                <tr><td colspan="2"><center><a href="passforget.jsp"> Forgotten account?</a></center></td></tr>
                 
                    <tr><td colspan="2"><div class="col-lg-12">
                <%
        String login1=request.getParameter("ulterpage");
        %>   
        <font color="red"><center>
        <%=login1==null?"":login1%></font color>
          </center>  </div></td></tr>
                    <tr><td colspan="2"><br/></td></tr>
                        <tr><td colspan="2"><br/></td></tr>
            </table>
            
           </form> 
        

<%
   
 String btn = request.getParameter("submit");
if(btn!=null){
   Connection con = Conn.getCon();
   String unm = request.getParameter("user").trim();
   session.setAttribute("ids", unm);
   String upass = request.getParameter("pass").trim();
    String role = request.getParameter("role").trim();
  if(role.equalsIgnoreCase("Customer")){
    try{PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=? and role=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
   ps.setString(3, role);
     ResultSet rs = ps.executeQuery();
   if(rs.next()){
        String user=rs.getString(1);
        String ids=rs.getString(2);
        String urole=rs.getString(7);
    session = request.getSession();
    session.setAttribute("UNM", user);
    session.setAttribute("ids", ids);
    session.setAttribute("psw", upass);
    session.setAttribute("PASS", upass);
     session.setAttribute("ROLE", urole);
    rs.close();
    response.sendRedirect("home.jsp");
   }else{
       ps = con.prepareStatement("select * from register where mobile=? and password=? and role=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
   ps.setString(3, role);
  rs = ps.executeQuery();
   if(rs.next()){
       String user=rs.getString(1);
       String ids=rs.getString(2);
       String pass=rs.getString(3);
       String urole=rs.getString(7);
       
    session = request.getSession();
     session.setAttribute("ids", ids);
    session.setAttribute("UNM", user);
    session.setAttribute("ROLE", urole);
    session.setAttribute("PASS", pass);
     session.setAttribute("ids", unm);
    rs.close();
    response.sendRedirect("home.jsp");
    
   }else response.sendRedirect("login.jsp?ulterpage=Invalid username/password");
   }

    }catch(Exception e){
        response.sendRedirect("login.jsp?ulterpage=Somthing is wrong try after sometime/Database offline !!!");
    }
    }
else{
    
    try{PreparedStatement ps = con.prepareStatement("select * from servants where email=? and password=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
   
     ResultSet rs = ps.executeQuery();
   if(rs.next()){
       String user=rs.getString(1);
       String urole=rs.getString(7);
    session = request.getSession();
    session.setAttribute("UNM", user);
    session.setAttribute("ROLE", urole);
    session.setAttribute("PASS", upass);
    rs.close();
    response.sendRedirect("home.jsp");
   }else{
       ps = con.prepareStatement("select * from servants where mobile=? and password=?");
   ps.setString(1, unm);
   ps.setString(2, upass);
  
  rs = ps.executeQuery();
   if(rs.next()){
       String user=rs.getString(1);
       String urole=rs.getString(7);
    session = request.getSession();
    session.setAttribute("UNM", user);
    session.setAttribute("ROLE", urole);
    session.setAttribute("PASS", upass);
    
    rs.close();
    response.sendRedirect("home.jsp");
    
   }else response.sendRedirect("login.jsp?ulterpage=Invalid username/password !!!");
   }

    }catch(Exception e){
        response.sendRedirect("login.jsp?ulterpage=Somthing is wrong try after sometime/Database offline");
    }
    
}
}

%>
            
        
        
    </div></td></tr>
</table>
    <div class="col-lg-2">
        
    </div>
</div>
<div class="container">
    <div class="col-lg-12">
         
    </div>
</div>
       
        
<%@include file="footer.jsp"%>