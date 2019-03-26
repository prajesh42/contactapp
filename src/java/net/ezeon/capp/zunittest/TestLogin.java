/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.zunittest;

import net.ezeon.capp.domain.User;
import net.ezeon.capp.service.UserService;

/**
 *
 * @author MR.SHINING
 */
public class TestLogin {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
           UserService service=new UserService();
           User u = service.login("p","prajesh123");
           System.out.println(u.getUserId()+"  "+u.getName()+" "+u.getRole());
           //TODO access other details
    }
    
}
