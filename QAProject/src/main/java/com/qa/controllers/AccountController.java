package com.qa.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

//import javax.validation.Valid;
import com.qa.dao.IAccountDAO;
import com.qa.models.Account;

@EnableWebMvc
@Controller
public class AccountController {

	@Autowired
	private IAccountDAO service;

	@RequestMapping(value = "/AddAccount", method = RequestMethod.POST)
	public String addAccount(ModelMap model, Account account, BindingResult result) {
		if (result.hasErrors())
			return "account";
		
		service.addAccount(account);
		
		model.clear();// to prevent request parameter "user" to be passed
		
		return "redirect:/";
	}
	
	@RequestMapping (value = "/SigninUser", method = RequestMethod.POST)
	public String signin(ModelMap model, Account account, BindingResult result) {
		
		if (result.hasErrors()) 
			return "/";
		
		try{
		Account acc = service.getAccount(account.getName(), account.getPassword());
		}
		catch(EmptyResultDataAccessException ex){
			return "/Error";
		}
		 		
		model.clear();
		
		return "/LoggedIn";
	
	}
	
}
