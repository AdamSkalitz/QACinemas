package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.qa.dao.ProductDAO;

@EnableWebMvc
@Controller
public class ProductController {

	
	@Autowired
	private ProductDAO service;
	
	@RequestMapping(value = "/ProductGallery", method = RequestMethod.GET)
	public String showProducts(ModelMap model) {
		
		model.addAttribute("products", service.getAllProducts());
		
		
		System.out.println(model.size());
		
		return "ProductGallery";
	}
	
}
