package com.skc.capp.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import com.skc.capp.config.SpringRootConfig;
import com.skc.capp.dao.UserDAO;

public class TestUserDAODelete {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO=ctx.getBean(UserDAO.class);
        userDAO.delete(2);
        System.out.println("--------Data Deleted------");
    }    
}
