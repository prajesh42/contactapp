/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.zunittest;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import net.ezeon.capp.db.JdbcTemplate;
import net.ezeon.capp.domain.Status;
import net.ezeon.capp.service.ContactService;

/**
 *
 * @author MR.SHINING
 */
public class TestRS1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
   
          ContactService service=new ContactService();
          JdbcTemplate db=new JdbcTemplate();
          Status s=new Status();
          s.setStatus("hello");
          s.setUserId(20);
          service.post(s);
         
         }
    
}
