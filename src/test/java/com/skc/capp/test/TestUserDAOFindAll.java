package com.skc.capp.test;

import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.skc.capp.config.SpringRootConfig;
import com.skc.capp.dao.UserDAO;
import com.skc.capp.domain.User;

public class TestUserDAOFindAll {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO=ctx.getBean(UserDAO.class);   
        
        List<User> users = userDAO.findAll();
        for (User u : users) {
             System.out.println(u.getUserId()+" "+u.getName()+" "+u.getRole());
             //TODO: access other columns
        }
        
    }    
}
