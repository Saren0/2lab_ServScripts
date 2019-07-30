package by.gsu.lab.controllers;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Task3Controller extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
		HttpServletResponse response)
			throws ServletException, IOException {
        Scanner in = new Scanner(new FileReader("C:\\Users\\user\\eclipse-workspace\\2lab\\nums.txt"));
		List<Integer> nums = new ArrayList<>();
		while(in.hasNext()) {
			nums.add(in.nextInt());
		}
		in.close();
		int counter = 0;
		for (int n : nums) {
			if(n < 0) {
				counter++;
			}
		}
        request.setAttribute("days", counter);
		jump("/task3.jsp", request, response);
	}
}