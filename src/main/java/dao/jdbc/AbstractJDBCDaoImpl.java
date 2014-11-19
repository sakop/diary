package dao.jdbc;

import java.lang.reflect.ParameterizedType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import dao.Dao;

public abstract class AbstractJDBCDaoImpl<T> implements Dao<T> {

	@Autowired
	protected NamedParameterJdbcTemplate template;

	@Autowired
	protected RowMapper<T> mapper;

	protected String getSelectSql(String...args){
		String className = getType().getName();
		className = className.toLowerCase();
		
		StringBuilder builder = new StringBuilder("select * from " + className);
		builder.append("where ");
		for(int i = 0;i < args.length;i++){
			builder.append(args[i] + "=:" + args[i] + " ");
		}
		return builder.toString();
	}

	/**
	 * this method is always invoked by the child class so
	 * this.getClass().getGenericSuperclass() always return the current class's
	 * template
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private Class<T> getType() {
		ParameterizedType parentType = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		return (Class<T>) parentType.getActualTypeArguments()[0];
	}

	@Override
	public T get(int id) {
		String sql = getSelectSql("id");
		MapSqlParameterSource source = new MapSqlParameterSource();
		source.addValue("id", id);
		return template.queryForObject(sql, source, mapper);
	}

	@Override
	public abstract int insert(T t);

	@Override
	public int delete(int id) {
		String sql = "delete from " + getType().getName() + " where id=:id";
		MapSqlParameterSource source = new MapSqlParameterSource();
		source.addValue("id", id);
		return template.update(sql, source);
	}

	
	
	public NamedParameterJdbcTemplate getTemplate() {
		return template;
	}

	public void setTemplate(NamedParameterJdbcTemplate template) {
		this.template = template;
	}

	public RowMapper<T> getMapper() {
		return mapper;
	}

	public void setMapper(RowMapper<T> mapper) {
		this.mapper = mapper;
	}

}
