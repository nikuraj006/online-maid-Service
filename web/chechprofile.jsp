   <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.Conn"%>
<%@page import="java.sql.Connection"%>
<%@include file="lmenu.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


   
<%  
     //String ids =(String)session.getAttribute("fatchrecord");
     String ids = request.getParameter("username");
     
   Connection con = Conn.getCon();
    // = request.getParameter("ids");
   String name="null",mobile=null,email=null,job=null,address=null,pin=null,city=null,state=null,dob=null;
  
  {
    try{PreparedStatement ps = con.prepareStatement("select * from servants where email=? or mobile=?");
   ps.setString(1, ids);
   ps.setString(2, ids);
   ResultSet rs = ps.executeQuery();
   while(rs.next()){
       name=rs.getString(1);
       mobile=rs.getString(2);
       address=rs.getString(3);
       city=rs.getString(4);
       pin=rs.getString(5);
       state=rs.getString(6);
       job=rs.getString(7);
       email=rs.getString(8);
       dob=rs.getString(11);     
    
    rs.close();
     
   }
}catch(Exception e){
    
}
   %> 

<!DOCTYPE html>
      

        <form action="#" method="get">
            <table align="center" border="0"> 
            
                <tr>
                    
                    <td>
                        Name<br> &nbsp &nbsp &nbsp;
                    </td>&nbsp; &nbsp; &nbsp; &nbsp;
                    <td><input type="text" name="name"readonly="true" value="<%=name%>"/></td>
                </tr>
          
                <tr>
                    <td>
                        Mobile no.<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="number" name="mobile" readonly="true" value="<%=mobile%>"></td>
                </tr>
                
                <tr>
                    <td>
                        Email<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="email" name="email" readonly="true"  value="<%=email%>"></td>
                </tr>
                
                
                
                <tr>
                    <td>
                        Job type<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td>
                        <select name="cate" id="cate" readonly="true"  >
              <option >
                    <%=job%><br>
                
                            
                        </select>        
                        </td>
                </tr>
                
                
                
                 <tr>
                    <td>
                       Address<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="textbox" name="address" readonly="true" value="<%=address%>"></td>
                    
                 </tr>
                 
                 <tr>
                    <td>
                        City<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="text" name="city" readonly="true" value="<%=city%>"></td>
                 </tr>
                
                
                <tr>
                    <td>
                        Pin<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="number" name="pin" readonly="true" value="<%=pin%>"></td>
                 </tr>
                
                <tr>
                    <td>
                      State<br> &nbsp &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    
                    <td><input type="text" name="state" readonly="true" value="<%=state%>"></td>
                 </tr>
                
                 <tr>
                    <td>
                       Date of birth&nbsp;&nbsp;&nbsp;&nbsp;<br> &nbsp &nbsp &nbsp
                    </td>
                    
                    <td><input type="date" readonly="true" name="date" id="date" value="<%=dob%>"></td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                 </tr>
                
                 <tr>
                     <td colspan="2"><center><br/><br/><a href="sendmail.jsp?username=<%=email%>"> <h2>Send Mail</h2> </a></center>
                    </td>
                </tr>
                
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
        </form>
        
                    <%
        String login1=request.getParameter("cuser");
                %>   <center>  <font color="red">
                       <%=login1==null?"":login1%> <br/></fornt color>
</center><br/><br/></color>
   



<%}%>

          
            
<%
            String Edit=request.getParameter("submit");
            if(Edit!=null)
            { 
                name=request.getParameter("name").trim();
                mobile=request.getParameter("mobile").trim();
                String cate=request.getParameter("cate").trim();
                address=request.getParameter("address").trim();
                city=request.getParameter("city").trim();
                pin=request.getParameter("pin").trim();
                dob=request.getParameter("date").trim();
                state=request.getParameter("state").trim();
                
               try
                {
                    con = Conn.getCon();
                    PreparedStatement ps = con.prepareStatement("update servants set name = ?,mobile= ?,category=?,city=?,pin=?,state=?,dob=? where email=? or mobile=?");
                    ps.setString(1,name);
                    ps.setString(2,mobile);
                   // ps.setString(3,cate);
                    ps.setString(3,address);
                    ps.setString(4,city);
                    ps.setString(5,pin);
                    ps.setString(6,state);
                    ps.setString(7,dob);
                    ps.setString(8,ids);
                    ps.setString(8,ids);
                     
                int t=ps.executeUpdate();
                response.sendRedirect("home.jsp?cuser=update successful!!!");
            }
                catch (Exception e)
                        {
                            System.out.println(e);
    }
    }%>