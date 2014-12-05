package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import model.Person;

public class PersonDao extends CommonDao {

	public static void main(String[] args) {
		System.out.println(new PersonDao().getConnection());
	}

	public int savePerson(Person p) throws SQLException {
		conn = getConnection();
		String sql = "insert into person(username,email,password) values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, p.getUsername());
		pstmt.setString(2, p.getEmail());
		pstmt.setString(3, p.getPassword());
		pstmt.executeUpdate();

		sql = "SELECT LAST_INSERT_ID()";
		pstmt = conn.prepareStatement(sql);
		rst = pstmt.executeQuery();
		if (rst.next()) {
			return rst.getInt(1);
		} else {
			return -1;
		}
	}

}
