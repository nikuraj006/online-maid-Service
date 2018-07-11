<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.Conn"%>
<%@include file="lmenu.jsp"%>
<%String id =(String)session.getAttribute("ids");%>

<%
    Connection con = Conn.getCon();
   try{PreparedStatement ps = con.prepareStatement("select * from register where email=? or mobile=?");
   ps.setString(1, id);
   ps.setString(2, id);
   ResultSet rs = ps.executeQuery();
   if(rs.next()){
        String name=rs.getString(1);
        String email=rs.getString(2);
        String Mobile=rs.getString(4);
        String sex=rs.getString(5);
        String dob=rs.getString(6);
        rs.close();
        
   %>
   <div class="container">
   <div class="col-lg-offset-12">
       <br/>
   </div>
       <div class="col-lg-4">
           <br/>
       </div>
       <div class="col-lg-4">
         
<form action="pupdate" method="get">
    <table align="center">
        <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <!-- </td><td><img src="" alt="profile pic" height="155px" width="150px" name="pic"/><br/><input type="file" name="pic" value="Brouse pic/>"</td></tr>
        --><tr><td>Name&nbsp;</td>
            <td><input type="text" name="Name" value="<%=name%>" /></td></tr>
        <tr><td><br/>Email&nbsp;</td>
            <td><input type="text" name="email" readonly="true" value="<%=email%>"/> </td></tr>
        <tr><td><br/>Mobile&nbsp;</td>
            <td><input type="text" name="mobile" value="<%=Mobile%>"/> </td></tr>
        <tr><td><br/>Sex&nbsp;</td>
            <td><input type="text" name="sex" readonly="true" value="<%=sex%>"/></td></tr>
        <tr><td><br/>Birthdate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</td>
            <td><input type="date" name="dob" value="<%=dob%>"/> </td></tr>
        <tr>
            <td colspan="2"><br/><center><input type="submit" name="Update" value="Update"/> </center></td></tr>
<tr><td colspan="2"> <%
        String login1=request.getParameter("cuser");
                %>   <center>  <font color="red">
                       <%=login1==null?"":login1%> <br/></fornt color>
</center><br/><br/></color></td></tr>
    </table>
</form>
          <br/>
       </div>
        
    <div class="col-lg-4">
           <br/>
       </div>
</div>
   <%}
    }catch(Exception e)
    {
        
    }
%>

































<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="footer.jsp"%>