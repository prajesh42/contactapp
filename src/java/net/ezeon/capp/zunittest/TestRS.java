/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.zunittest;

import java.sql.ResultSet;
import java.util.List;
import net.ezeon.capp.db.JdbcTemplate;
import net.ezeon.capp.domain.Status;
import net.ezeon.capp.service.ContactService;

/**
 *
 * @author MR.SHINING
 */
public class TestRS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
   
          JdbcTemplate db=new JdbcTemplate();
          ContactService service=new ContactService();
          List<Status> posts=service.findUserStatus(20);
          for(Status s:posts){
              System.out.println(s.getUserId()+","+s.getStatus());
          }
    }
    
}
