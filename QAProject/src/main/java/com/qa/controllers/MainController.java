package com.qa.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
//Enable Hibernate Transaction.

//Need to use RedirectAttributes
@EnableWebMvc
public class MainController {
		@RequestMapping("/")
		public String Home (HttpServletRequest request) {
			return "Home";
		}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
