package com.qa.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.qa.dao.IProductDAO;
import com.qa.models.Product;

@EnableWebMvc
@Controller
public class ProductController {

	
	@Autowired
	private IProductDAO service;
	
	@RequestMapping(value = "/ProductGallery", method = RequestMethod.GET)
	public String showProducts(ModelMap model) {
		model.addAttribute("products", service.getAllProducts());

		return "ProductGallery";
	}
	
	@RequestMapping(value = "/ProductDetails", method = RequestMethod.GET)
	public String showProduct(ModelMap model, @RequestParam int id) {
		Product p = service.getProductByID(id);
		model.addAttribute("products",p );
		model.addAttribute("otherproducts", service.getAllProducts());
		return "ProductDetails";
	}
	
	
}
