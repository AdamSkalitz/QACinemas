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
			return "ShoppingBasket";
		}
}
