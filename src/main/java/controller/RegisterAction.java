package controller;

import java.io.IOException;
import java.net.HttpRetryException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PersonService;
import model.Person;

public class RegisterAction extends JspDispatcher {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setAttribute("welcome", "hello");
		super.doGet(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email").trim();
		String username = req.getParameter("username").trim();
		String password = req.getParameter("password").trim();
		String p2 = req.getParameter("password2").trim();

		if (validate(req, username, email, password, p2)) {
			Person p = new Person();
			p.setUsername(username);
			p.setEmail(email);
			p.setPassword(password);
			try {
				int id = new PersonService().savePerson(p);
				System.out.println(id);
				resp.sendRedirect("login.do");
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} else {
			forward(req, resp, "register");
			return;
		}

	}

	private boolean isEmpty(String value) {
		return value == null || value.trim().length() == 0;
	}

	private boolean validate(HttpServletRequest req, String username,
			String email, String password, String p2) {
		if (isEmpty(username) || isEmpty(password) || isEmpty(email)
				|| isEmpty(p2)) {
			req.setAttribute("error", "All fields must not be empty");
			return false;
		}
		if (!password.equals(p2)) {
			req.setAttribute("error", "password does not match");
			return false;
		}
		return true;
	}
}
