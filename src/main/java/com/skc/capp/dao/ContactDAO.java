package com.skc.capp.dao;

import java.util.List;

import com.skc.capp.domain.Contact;
import com.skc.capp.domain.User;

public interface ContactDAO {

	void save(Contact c);
	void update(Contact c);
	void delete(Contact c);
	void delete(Integer contactId);
	Contact findById(Integer contactId);
	List<Contact> findAll();
	List<Contact> findByProperty(String propName, Object propValue);
}
