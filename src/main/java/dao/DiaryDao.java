package dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Diary;

public class DiaryDao extends CommonDao {

	public void saveNewDiary(Diary diary) throws SQLException {
		try {
			conn = getConnection();
			String sql = "insert into diary(title,content,person_id,create_time) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, diary.getTitle());
			pstmt.setString(2, diary.getContent());
			pstmt.setInt(3, diary.getPersonId());
			pstmt.setDate(4, new Date(System.currentTimeMillis()));
			pstmt.executeUpdate();
		} finally {
			close();
		}
	}

	public List<Diary> getAllDiaries(int person_id) throws SQLException {
		List<Diary> ret = new ArrayList<Diary>();
		try {
			String sql = "select * from diary where person_id=?";
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, person_id);
			rst = pstmt.executeQuery();
			while(rst.next()){
				Diary d = new Diary();
				d.setId(rst.getInt("id"));
				d.setCreateTime(rst.getDate("create_time"));
				d.setPersonId(person_id);
				d.setContent(rst.getString("content"));
				d.setTitle(rst.getString("title"));
				ret.add(d);
			}
			return ret;
			
		} finally {
			close();
		}
	}

}
