
<%@page import="model.Mail"%>
<%@page import="p1.Conn"%>
<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<% 
          String name=request.getParameter("name").trim();
          String email=request.getParameter("email").trim();
          String pass1=request.getParameter("pass1").trim();
          String pass2=request.getParameter("pass2").trim();
          String mobile=request.getParameter("mobile").trim();
          String sex=request.getParameter("sex");
          String dob=request.getParameter("dob");
          String role=request.getParameter("role");
          
          if(pass1.equals(pass2)){
              if(role.equalsIgnoreCase("Customer")){
   try{ 
       Connection con=Conn.getCon(); 
       PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,'','')");
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setString(3, pass1);
    ps.setString(4, mobile);
    ps.setString(5, sex);
    ps.setString(6, dob);
    ps.setString(7, role);
   int t=ps.executeUpdate();
   if(t>0){
       String message = "";
		String mail[]=new String[1];
          ps.close();
          mail[0]=email;
          String confirmationmail="Thanks for Registering as a member of House Keeping Website."+"\n"+"Name: "+name+"\n"+"Your Email is: "+email+"\n"+"Your Mobile Number is: "+mobile+"\n"+"Your Password is: "+pass1+"\n"+"You Signup As a :"+role;
          if(Mail.sendMail("noreplyhousekeeeping@gmail.com","9097012783", "smtp.gmail.com", "465", "true","true", true,"javax.net.ssl.SSLSocketFactory","false",mail, "House Keeping Registration", confirmationmail))
			{ 
				System.out.println("inside if-mail sent");
			}
			 else{
				
				 System.out.println("inside else-could not send mail");
				
			}

			 message = "you are now registered";
			
                        
                        
    response.sendRedirect("signup.jsp?cuser=Register successfull now you can check your email !!!");
   }}catch(SQLException e){
     out.print(e); 
    //response.sendRedirect("signup.jsp?cuser=User exists as Customer Please change user email/mobile !!!");
     
           }}
              
              else{
                  
                  
  try{ 
       Connection con=Conn.getCon(); 
       PreparedStatement ps = con.prepareStatement("insert into servants values (?,?,'','','','','',?,?,?,?,?,'')");
    ps.setString(1, name);
    ps.setString(2, mobile);
    ps.setString(3, email);
    ps.setString(4, pass1);
    ps.setString(5, sex);
    ps.setString(6, dob);
    ps.setString(7, role);
   int t=ps.executeUpdate();
   if(t>0){
       String message = "";
		String mail[]=new String[1];
          ps.close();
          mail[0]=email;
          String confirmationmail="Thanks for Registering as a member of House Keeping Website."+"\n"+"Name: "+name+"\n"+"Your Email is: "+email+"\n"+"Your Mobile Number is: "+mobile+"\n"+"Your Password is: "+pass1+"\n"+"You Signup As a :"+role;
          if(Mail.sendMail("noreplyhousekeeeping@gmail.com","9097012783", "smtp.gmail.com", "465", "true","true", true,"javax.net.ssl.SSLSocketFactory","false",mail, "House Keeping Registration", confirmationmail))
			{ 
				System.out.println("inside if-mail sent");
			}
			 else{
				
				 System.out.println("inside else-could not send mail");
				
			}

			 message = "you are now registered";
			
                        
                        
    response.sendRedirect("signup.jsp?cuser=Register successfull now you can check your email !!!");
   }}catch(SQLException e){
     out.print(e);
    response.sendRedirect("signup.jsp?cuser=User exists as job finder Please change user email/mobile !!!");
     
           }
                  
                  
              }
   }else  response.sendRedirect("signup.jsp?cuser=password not match");
      
          
    
             
          
          
          
   %>