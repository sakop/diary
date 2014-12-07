package controller;

import java.io.IOException;

import javax.mail.SendFailedException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DiaryService;
import model.Diary;
import model.Person;

public class AddPostAction extends JspDispatcher {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		Person p = (Person) req.getSession().getAttribute("user");

		Diary diary = new Diary();
		diary.setContent(content);
		diary.setTitle(title);
		diary.setPersonId(p.getId());
		try {
			new DiaryService().saveNewDiary(diary);
			resp.sendRedirect("diary_list.do");
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
