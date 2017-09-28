package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.qa.dao.IProductDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
//Enable Hibernate Transaction.

//Need to use RedirectAttributes
@EnableWebMvc
public class MainController {
	
	@Autowired
	private IProductDAO service;
	
		@RequestMapping("/")
		public String Home (Model model,HttpServletRequest request) {
			model.addAttribute("products", service.getAllProducts());
			return "Home";
		}
		
		@RequestMapping("/Signin")
		public String signIn (HttpServletRequest request) {
			return "Signin";
		}
		
		@RequestMapping("/Registration")
		public String registration(HttpServletRequest request) {
			return "Registration";
		}
		
		@RequestMapping("/Checkout")
		public String checkout(HttpServletRequest request) {
			return "Checkout";
		}
		
		
		@RequestMapping("/ProductDetails")
		public String productDetails (HttpServletRequest request) {
			return "ProductDetails";
		}
		
		@RequestMapping("/ThankYou")
		public String thankYou(HttpServletRequest request) {
			return "ThankYou";
		}
		
		@RequestMapping("/ShoppingBasket")
		public String shoppingCart(HttpServletRequest request) {
			request.getSession().setAttribute("item", "LEGO DAN");
			return "ShoppingBasket";
		}
}
