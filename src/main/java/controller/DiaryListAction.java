package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Diary;
import model.Person;
import service.DiaryService;

public class DiaryListAction extends JspDispatcher {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		Person person = (Person) session.getAttribute("user");
		int person_id = person.getId();
		try {
			List<Diary> diaries = new DiaryService().getAllDiaries(person_id);
			req.setAttribute("diaries", diaries);
			super.doGet(req, resp);
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}
}
