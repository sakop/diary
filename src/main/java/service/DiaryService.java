package service;

import java.sql.SQLException;
import java.util.List;

import dao.DiaryDao;
import model.Diary;

public class DiaryService {

	private DiaryDao dao = new DiaryDao();
	public void saveNewDiary(Diary diary) throws SQLException {
		dao.saveNewDiary(diary);
	}
	
	public List<Diary> getAllDiaries(int person_id) throws SQLException {
		return dao.getAllDiaries(person_id);
	}
	
}
