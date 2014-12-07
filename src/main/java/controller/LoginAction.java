package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Person;
import service.PersonService;

public class LoginAction extends JspDispatcher {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		try {
			Person p = new PersonService().authenticateUser(username, password);
			if(p == null){
				req.setAttribute("error", "username or password is not correct");
				forward(req, resp, "login");
				return;
			}
			req.getSession().setAttribute("user", p);
			resp.sendRedirect("diary_list.do");
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}
}
