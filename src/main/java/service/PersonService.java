package service;

import java.sql.SQLException;

import model.Person;
import dao.PersonDao;

public class PersonService {
	
	private PersonDao dao = new PersonDao();
	
	public int savePerson(Person p) throws SQLException{
		return dao.savePerson(p);
	}
}