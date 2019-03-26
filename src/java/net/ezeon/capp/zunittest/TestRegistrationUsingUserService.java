/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.ezeon.capp.zunittest;

import java.sql.SQLException;
import net.ezeon.capp.domain.User;
import net.ezeon.capp.service.UserService;

/**
 *
 * @author MR.SHINING
 */
public class TestRegistrationUsingUserService {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        UserService service=new UserService();
        //Prepare Dummay user data: in future from registration form;
      User u=new User();
      u.setName("Prajesh");
      u.setPhone("9842817664");
      u.setEmail("prajesh4321@gmail.com");
      u.setAddress("Bhopal");
      u.setLoginId("prajesh42");
      u.setPassword("prajesh12345");
      u.setRole(UserService.ROLE_ADMIN);
      u.setStatus(UserService.LOGIN_ACTIVE);
     
      service.register(u);
    }  
    
    
}
