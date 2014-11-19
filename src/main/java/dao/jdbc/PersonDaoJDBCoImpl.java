package dao.jdbc;

import model.Person;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

@Repository
public class PersonDaoJDBCoImpl extends AbstractJDBCDaoImpl<Person> implements
		PersonDao {

	@Override
	public int insert(Person t) {
		String sql = "insert into person(name,email,password) values(:name,:email,:password)";
		MapSqlParameterSource source = new MapSqlParameterSource();
		source.addValue("name", t.getName());
		source.addValue("email", t.getEmail());
		source.addValue("password", t.getPassword());
		KeyHolder holder = new GeneratedKeyHolder();
		template.update(sql, source, holder);
		return holder.getKey().intValue();
	}

	@Override
	public int createUser(Person p) {
		return insert(p);
	}

}
