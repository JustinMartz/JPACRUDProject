package com.skilldistillery.clients.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.clients.data.ClientDAO;

@Controller
public class ClientController {
	@Autowired
	private ClientDAO clientDAO;
	
	@RequestMapping(path= {"/", "index.do"})
	public String index(Model model) {
		model.addAttribute("clients", clientDAO.findAll());
		return "WEB-INF/index.jsp";
	}
	
	@RequestMapping(path="displayClient.do", method=RequestMethod.GET)
	public String display(int id, Model model) {
		model.addAttribute("client", clientDAO.findById(id));
		return "WEB-INF/display.jsp";
	}
	
	@RequestMapping(path="updateClient.do", method=RequestMethod.POST)
	public String update(int clientId, Model model) {
		model.addAttribute("client", clientDAO.findById(clientId));
		return "WEB-INF/update.jsp";
	}
}
