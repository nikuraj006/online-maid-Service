/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p1;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conn {
    static Connection con;
    public static Connection getCon(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/housekeeping", "sushil", "1995");         
//con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/housekeeping","root","");
          //con=(Connection) DriverManager.getConnection("jdbc:mysql://sql6.freesqldatabase.com:3306/sql6142166","sql6142166","lAsfE9D8JM");
            
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
        return con;
    }
}
