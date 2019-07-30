package by.gsu.lab.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Task2 extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String word = request.getParameter("word");
		String size = request.getParameter("size");
		
		request.setAttribute("word2", word);
		request.setAttribute("size2", size);
		jump("/task2-result.jsp", request, response);
	}
}