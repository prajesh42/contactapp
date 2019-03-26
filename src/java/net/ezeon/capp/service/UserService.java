/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import net.ezeon.capp.Exception.AccountBlockedException;
import net.ezeon.capp.Exception.InvalidCredentialException;
import net.ezeon.capp.db.JdbcTemplate;
import net.ezeon.capp.domain.Status;
import net.ezeon.capp.domain.User;

/**
 *All user related operations are encapsulated here.
 * @author MR.SHINING
 */
public class UserService extends JdbcTemplate {
    //TODO: All user related operations/methods
  public static final Integer ROLE_ADMIN=1;
   public static final Integer ROLE_USER=2;
   
    public static final Integer LOGIN_ACTIVE=1;
    public static final Integer LOGIN_BLOCK=2;
 
    
    public void register(User u) throws SQLException
    {
        String sql="insert into user(name,phone,email,address,loginId,password,role,status) value(?,?,?,?,?,?,?,?)";
         PreparedStatement pst=super.createPST(sql);
     //bind data for sql paramater
     //data will be taken from registration form:
     pst.setString(1,u.getName());
     pst.setString(2,u.getPhone());
     pst.setString(3,u.getEmail());
     pst.setString(4,u.getAddress());
     pst.setString(5,u.getLoginId());
     pst.setString(6,u.getPassword());
     pst.setInt(7,u.getRole());
     pst.setInt(8,u.getStatus());
     
     super.update(pst);
    }
    /**
     * This method check the user authentication using  input credentials 
     * @param loginId unique login Id for user
     * @param password 
     * @return Authenticated User/Successfully logged in user
     * @throws InvalidCredentialException throws when invalid combination of loginId and password is supplied
     * @throws AccountBlockedException throws when user account is disabled
     * @throws SQLException  thrown when any database related problem is occurred.
     */
    public User login(String loginId, String password) throws InvalidCredentialException, AccountBlockedException, SQLException{
           
        String sql="SELECT userId, name, phone, email,loginId,address, role, status FROM user where loginId=? AND password=?";
        PreparedStatement pst=super.createPST(sql);
        pst.setString(1,loginId);
        pst.setString(2, password);
        ResultSet rs=super.query(pst);
        if(rs.next())
        {
            if(rs.getInt("status")==UserService.LOGIN_BLOCK)
            {
                String msg="your account is blocked";
                AccountBlockedException ex=new AccountBlockedException(msg);
                throw ex;
            }else if(rs.getInt("status")==UserService.LOGIN_ACTIVE)
            {
                User u=mapRow(rs);
                return u;
            }
            else
            {
                throw new RuntimeException("Failed due to unexpected login status.");
            }
        }
        else{
            String msg="Invalid Login Id and password";
            InvalidCredentialException ex=new InvalidCredentialException(msg);
             throw ex;
        }
    }
    
    public User mapRow(ResultSet rs) throws SQLException {
        
          User u=new User();
                u.setUserId(rs.getInt("userId"));
                u.setName(rs.getString("name"));
                u.setEmail(rs.getString("email"));
                u.setPhone(rs.getString("phone"));
                u.setAddress(rs.getString("address"));
                u.setLoginId(rs.getString("loginId"));
                u.setStatus(rs.getInt("status"));
                u.setRole(rs.getInt("role"));
                return u;
    }
    public List<User> findAllUsers(Integer role) throws SQLException,Exception{
        String sql="select userId,name,email,phone,address,loginId,status,role from user where role=?";
        PreparedStatement pst=super.createPST(sql);
        pst.setInt(1,ROLE_USER);
        ResultSet rs=super.query(pst);
        List<User> users=new ArrayList<User>();
        while(rs.next())
        {
            User u=mapRow(rs);
            users.add(u);
        }
        return users;
    }
    public List<User> findAllUsers(String text) throws SQLException,Exception{
        String sql="select userId,name,email,phone,address,loginId,status,role from user WHERE role=? AND name like ('%"+text+"%') AND loginId like ('%"+text+"%')";
        PreparedStatement pst=super.createPST(sql);
        pst.setInt(1,ROLE_USER);
        ResultSet rs=super.query(pst);
        List<User> users=new ArrayList<User>();
        while(rs.next())
        {
            User u=mapRow(rs);
            users.add(u);
        }
        return users;
    }
}
