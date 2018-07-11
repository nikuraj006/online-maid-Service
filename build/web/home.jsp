

<%  String urole =(String)session.getAttribute("ROLE");%>
 
   

     <% 
     if(urole.equalsIgnoreCase("Customer")){
    
       %> <%@include file="index2.jsp"%><%
}else{
    
    %><%@include file="afterjoblogin.jsp"%><%

}



%>





<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<%@include file="footer.jsp"%>
