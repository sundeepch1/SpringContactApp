package com.skc.capp.service;

import java.util.List;

import com.skc.capp.domain.Contact;

public interface ContactService {

	void save(Contact c);
	void update(Contact c);
	void delete(Integer contactId);
	void delete(Integer[] contactIds);
	
	List<Contact> findUserContact(Integer userId);
	List<Contact> findUserContact(Integer userId, String txt);
	Contact findById(Integer cotactId);
}
