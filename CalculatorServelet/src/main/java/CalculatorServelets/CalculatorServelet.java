package CalculatorServelets;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/calculate")
public class CalculatorServelet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String expression = request.getParameter("display");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.print("<h1>"+calculate(expression)+"</h1>");
		RequestDispatcher dispatcher= request.getRequestDispatcher("index.jsp");
		dispatcher.include(request, response);
	}

	private String calculate(String expression) {
		
		String[] operands;
		String operator = "";
		
		if(expression.contains("+")) operator = "+";
		else if(expression.contains("-")) operator = "-";
		else if(expression.contains("*")) operator = "*";
		else if(expression.contains("/")) operator = "/";
		else if(expression.contains("%")) operator = "%";
		else return "Invalid expression";
		
		if(operator=="+")operands = expression.split("\\+");
		else if(operator=="-")operands = expression.split("\\-");
		else if(operator=="*")operands = expression.split("\\*");
		else if(operator=="/")operands = expression.split("\\/");
		else if(operator=="%")operands = expression.split("\\%");
		else return "Invalid expression";
		Double result=0.0;
		Double one = Double.parseDouble(operands[0]);
		Double two = Double.parseDouble(operands[1]);

		switch(operator) {
		case "+": result = (one) + (two); break;
		case "-": result = one - two; break;
		case "*": result = one * two; break;
		case "/": result = one / two; break;
		case "%": result = one % two; break;
		}

		return result.toString();		
	}
}
