
    <form action=""method="get"><table align="center">
            <tr><td>       <input type="text" name="pin" placeholder="Search area pin code"></td>
       
        
    </form>
    
     <% String pins = request.getParameter("pin"); %> 
     <td><a href="search1.jsp?pin=<%=pins%>"><img src="img/search.png"></a>  </td>
</table>
    
       
       
     