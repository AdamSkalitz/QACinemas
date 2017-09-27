package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.qa.dao.IProductDAO;
import com.qa.models.Product;

@RestController
public class ProductRestController {

	@Autowired
	private IProductDAO service;
	
//	@CrossOrigin(origins = "http://localhost:8080")
//	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
//	public Product retrieveBook(@PathVariable("id") int productID) {
//		Product item=  service.getProductByID(productID);
//		return item;
//	}
}
