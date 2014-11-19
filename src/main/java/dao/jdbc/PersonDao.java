package dao.jdbc;

import model.Person;
import dao.Dao;

public interface PersonDao extends Dao<Person>{

	public int createUser(Person p);
		
}
