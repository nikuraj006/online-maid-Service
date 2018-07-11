                  

    
  <script>
    var t=confirm("Are you sure to logout");
     if(t==true){
         <%
{
   session.removeAttribute("UNM");
    session.invalidate();
  response.sendRedirect("index.jsp?logout=Logout Successful!!!");
}     

%>
     }
     
     </script>
    
                    
 