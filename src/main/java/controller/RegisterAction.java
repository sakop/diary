package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.PersonService;
import model.Person;

public class RegisterAction extends JspDispatcher {

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String email = req.getParameter("email");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String p2 = req.getParameter("p2");

		if (isNotEmpty(username) && isNotEmpty(password)
				&& isNotEmpty(email) && isNotEmpty(p2)) {
			Person p = new Person();
			p.setUsername(username);
			p.setEmail(email);
			p.setPassword(password);
			try {
				int id = new PersonService().savePerson(p);
				System.out.println(id);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}else{
			req.setAttribute("error", "All fields must not be empty");
			forward(req,resp,"register");
			return;
		}
		

	}

	private boolean isNotEmpty(String value) {
		return value != null && value.length() > 0;
	}

}
