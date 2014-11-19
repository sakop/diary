package dao;

public interface Dao<T> {
	T get(int id);

	int insert(T t);

	int delete(int id);
}
