package by.gsu.lab.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Task1 extends AbstractBaseController {

	@Override
	protected void performTask(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		Map<String, String> states = new HashMap<>();
		states.put("1", "Germany");
	    states.put("2", "Spain");
	    states.put("3", "France");
	    states.put("4", "Italy");
	    
	   request.setAttribute("states", states);
	    try {
			String key = request.getParameter("key");
			String value = request.getParameter("value");
			
			for(Map.Entry<String, String> item : states.entrySet()){
				if(key.equals(item.getKey()) || value.equals(item.getValue())) {
					request.setAttribute("key2", item.getKey());
					request.setAttribute("value2", item.getValue());
					jump("/task1.jsp", request, response);
					break;
				}
			}
	    } catch (IllegalStateException e) {
	    	jumpError("/task1-preview.jsp", "Нет записей",
					request, response);
	    } catch (NullPointerException a) {
	    	String key2 = request.getParameter("key2");
	    	String value2 = request.getParameter("value2");
			for(Map.Entry<String, String> item : states.entrySet()){
				if(key2.equals(item.getKey())) {
					item.setValue(value2);
					jump("/task1-preview.jsp", request, response);
					break;
				}
			}
	    }
	}
}