
package net.ezeon.capp.zunittest;

import java.sql.PreparedStatement;
import net.ezeon.capp.db.JdbcTemplate;
import net.ezeon.capp.service.UserService;

/**
 *This class is a database handler class to handle all db related tasks.
 *NOTE: this class is good for learning projects its not fit for production application.
 * Use spring JdbcTemplate API or HIbernate API or JPA as great alternative.
 * @author MR.SHINING
 */
public class TestPST {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        // TODO code application logic here
     String sql="insert into user(name,phone,email,address,loginId,password,role,status) value(?,?,?,?,?,?,?,?)";
     JdbcTemplate db=new JdbcTemplate();
     PreparedStatement pst=db.createPST(sql);
     //bind data for sql paramater
     //data will be taken from registration form:
     pst.setString(1,"Prajesh");
     pst.setString(2,"9039338023");
     pst.setString(3,"panjiyarprajesh@yahoo.com");
     pst.setString(4,"Bhopal");
     pst.setString(5,"p");
     pst.setString(6,"prajesh123");
     pst.setInt(7,UserService.ROLE_ADMIN);
     pst.setInt(8,UserService.LOGIN_ACTIVE);
     
     db.update(pst);
    }    
    
}
