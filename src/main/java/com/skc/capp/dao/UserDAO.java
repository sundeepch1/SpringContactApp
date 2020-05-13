package com.skc.capp.dao;

import java.util.List;

import com.skc.capp.domain.User;

public interface UserDAO {
	
	void save(User u);
	void update(User u);
	void delete(User u);
	void delete(Integer userId);
	User findById(Integer userId);
	List<User> findAll();
	List<User> findByProperty(String propName, Object propValue);
}
