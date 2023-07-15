package com.skilldistillery.clients.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.clients.data.ClientDAO;

@Controller
public class ClientController {
	@Autowired
	private ClientDAO clientDAO;
	
	@RequestMapping(path= {"/", "index.do"})
	public String index(Model model) {
		model.addAttribute("client", clientDAO.findById(1));
		return "WEB-INF/index.jsp";
	}
}
