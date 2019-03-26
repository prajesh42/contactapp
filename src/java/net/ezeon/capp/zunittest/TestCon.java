/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.zunittest;

import net.ezeon.capp.db.JdbcTemplate;

/**
 *
 * @author MR.SHINING
 */
public class TestCon {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
      JdbcTemplate db=new JdbcTemplate();
        System.out.println("Connection status-----> "+db.testConnection());
    }
    
}
