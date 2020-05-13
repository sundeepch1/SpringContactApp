package com.skc.capp.test;

import com.skc.capp.config.SpringRootConfig;
import com.skc.capp.dao.UserDAO;
import com.skc.capp.domain.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class TestUserDAOSave {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO=ctx.getBean(UserDAO.class);
        User u=new User();
        u.setName("Amit");
        u.setPhone("9303580884");
        u.setEmail("amit@skc.com");
        u.setAddress("Mumbai");
        u.setLoginName("amit");
        u.setPassword("amit123");
        u.setRole(1);//Admin Role 
        u.setLoginStatus(1); //Active
        userDAO.save(u);
        System.out.println("--------Data Saved------");
    }    
}
