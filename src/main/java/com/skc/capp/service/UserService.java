package com.skc.capp.service;

import java.util.List;

import com.skc.capp.domain.User;
import com.skc.capp.exception.UserBlockedException;

public interface UserService {
	
	Integer LOGIN_STATUS_ACTIVE = 1;
	Integer LOGIN_STATUS_BLOCKED = 2;
	
	Integer ROLE_ADMIN = 1;
	Integer ROLE_USER = 2;

	/**
     * The method handle the user registration task.
     * @param u the new user detail as User Object.
     */
	void register(User u);
	
	/**
     * The method handles login operation(authentication) using given credentials,
     * it returns User object when success and null when failed. 
     * When user account is blocked an exception will be thrown by this method.
     * @param loginName
     * @param password
     * @return 
     * @throws com.skc.capp.exception.UserBlockedException When user account is  blocked.
     */
	User login(String loginName, String password) throws UserBlockedException;
	
	/**
     * Call this method to get list of registered users.
     * @return 
     */
	List<User> getUserList();
	
	/**
     * This method change the user login status for details passed as argument.
     * @param userId
     * @param loginStatus 
     */
	void changeLoginStatus(Integer userId, Integer loginStatus);

	Boolean isUsernameExist(String username);
}
