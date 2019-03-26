/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MR.SHINING
 */
public class JdbcTemplate {
    private static Connection con;
    static{
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
             con=DriverManager.getConnection("jdbc:mysql://localhost/capp_db?autoReconnect=true","root","prajesh"); 
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    public PreparedStatement createPST(String sql) throws SQLException{
        PreparedStatement pst= con.prepareStatement(sql);
        return pst;
    }
    /**
     * Call this method for insert,update and delete.
     */
    public void update(PreparedStatement pst) throws SQLException
    {
       pst.executeUpdate();
    }
     public void update(String sql) throws SQLException
    {
        PreparedStatement pst=this.createPST(sql);
        this.update(pst);
    }
     /**
      * Execute Select SQL statement, supporting param-SQL
      * @param pst
      * @return
      * @throws SQLException 
      */
     public ResultSet query(PreparedStatement pst) throws SQLException{
          ResultSet rs=pst.executeQuery();
          return rs;
     }
     /**
      * Execute select sql statement , Non-param
      * @param sql
      * @return
      * @throws SQLException 
      */
      public ResultSet query(String sql) throws SQLException{
          PreparedStatement pst=this.createPST(sql);
          ResultSet rs=this.query(pst);
          return rs;
     }
    public Boolean testConnection()
    {
        return con!=null;
    }
}
