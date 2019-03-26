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
import net.ezeon.capp.db.JdbcTemplate;
import net.ezeon.capp.domain.Contact;
import net.ezeon.capp.domain.Status;

/**
 *
 * @author MR.SHINING
 */
public class ContactService extends JdbcTemplate{
   public void save(Contact c) throws SQLException
   {
     String sql="INSERT INTO contact(userId,name,phone,email,address) value(?,?,?,?,?)";
    PreparedStatement pst=super.createPST(sql);
    pst.setInt(1,c.getUserId());
    pst.setString(2,c.getName());
    pst.setString(3,c.getPhone());
    pst.setString(4,c.getEmail());
    pst.setString(5,c.getAddress());
    super.update(pst);
   }
   public List<Contact> findUserContact(Integer userId) throws SQLException
   {
       String sql="select contactId,name,phone,email,address from contact where userId="+userId;
       ResultSet rs=super.query(sql);
       List<Contact> contacts=new ArrayList<Contact>();
       while(rs.next())
       {
           Contact c=mapRow(rs);
            contacts.add(c);
       }
       return contacts;
   }
   public Contact mapRow(ResultSet rs) throws SQLException{
       Contact c=new Contact();
          c.setContactId(rs.getInt("contactId"));
          c.setName(rs.getString("name"));
           c.setPhone(rs.getString("phone"));
           c.setEmail(rs.getString("email"));
           c.setAddress(rs.getString("address"));
        return c;
   }
   public void update(Contact c) throws SQLException
   {
     String sql="UPDATE contact set name=?,phone=?,email=?,address=? WHERE contactId="+c.getContactId();
    PreparedStatement pst=super.createPST(sql);
    pst.setString(1,c.getName());
    pst.setString(2,c.getPhone());
    pst.setString(3,c.getEmail());
    pst.setString(4,c.getAddress());
    super.update(pst);
   }
   public Contact findById(Integer contactId) throws SQLException
   {
       String sql="SELECT contactId,name,phone,email,address FROM contact where contactId="+contactId;
       ResultSet rs=query(sql);
       if(rs.next())
       {
           Contact c=mapRow(rs);
           return c;
       }
       else{
           return null;
       }
    
   }
   public List<Contact> findUserContact(Integer userId,String text) throws SQLException
   {
       String sql="select contactId,name,phone,email,address from contact WHERE userId="+userId+" AND (name like ('%"+text+"%') OR phone like ('%"+text+"%') OR email like ('%"+text+"%') OR address like ('%"+text+"%'))" ;
       ResultSet rs=super.query(sql);
       List<Contact> contacts=new ArrayList<Contact>();
       while(rs.next())
       {
           Contact c=mapRow(rs);
            contacts.add(c);
       }
       return contacts;
   }
   
      public void post(Status s) throws SQLException{
        String sql="INSERT INTO status(userid,post) value(?,?)";
        PreparedStatement pst=super.createPST(sql);
        pst.setInt(1,s.getUserId());
        pst.setString(2,s.getStatus());
        super.update(pst);
    }
      
      public List<Status> findUserStatus(Integer userId) throws SQLException
   {
       String sql="select statusid,userid,post from status where userId="+userId;
       ResultSet rs=super.query(sql);
       List<Status> posts=new ArrayList<Status>();
       while(rs.next())
       {
           Status s=mapRowStatus(rs);
            posts.add(s);
       }
       return posts;
   }
      public Status mapRowStatus(ResultSet rs) throws SQLException{
       Status s=new Status();
          s.setUserId(rs.getInt("userid"));
          s.setStatus(rs.getString("post"));
          return s;
   }
}
