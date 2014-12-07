package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JspDispatcher extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int index = req.getRequestURL().lastIndexOf("/");
		int lastDot = req.getRequestURL().lastIndexOf(".");
		String jsp = req.getRequestURL().substring(index + 1, lastDot);
		forward(req, resp, jsp);
	}

	protected void forward(HttpServletRequest req, HttpServletResponse resp,
			String jsp) throws ServletException, IOException {
		req.getRequestDispatcher("/" + jsp + ".jsp").forward(req, resp);
	}
}
