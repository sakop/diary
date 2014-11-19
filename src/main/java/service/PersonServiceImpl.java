package service;

import model.Person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.jdbc.PersonDao;

@Service
public class PersonServiceImpl implements PersonService{

	@Autowired
	private PersonDao dao;
	
	@Override
	public int createUser(Person p) {
		return dao.createUser(p);
	}

}
