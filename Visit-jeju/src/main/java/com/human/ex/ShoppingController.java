package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.shopping.BoardDtoShop1;
import com.human.service.shopping.IBoardServiceShop1;



@Controller
@RequestMapping("/shopping/*")
public class ShoppingController {
	
	
	@Inject
	private IBoardServiceShop1 service;
	
	
	@RequestMapping(value = "/product/product1", method = RequestMethod.GET)
	public void Test(Model model) {
	}	
	
	@RequestMapping(value = "/main/MainNormal", method = RequestMethod.GET)
	public void MainNormal(Model model, BoardDtoShop1 dto) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	
	@RequestMapping(value = "/main/Main", method = RequestMethod.GET)
	public void Main(Model model, BoardDtoShop1 dto) throws Exception {
		model.addAttribute("list",service.listAll());
		
	}
	
	@RequestMapping(value = "/main/Remocon_bag", method = RequestMethod.GET)
	public void remocon_bag(Model model) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	
	
	@RequestMapping(value = "/product/Create", method = RequestMethod.GET)
	public void Create_get(Model model) throws Exception {
	}
	@RequestMapping(value = "/product/Create", method = RequestMethod.POST)
	public void Create_push(Model model) throws Exception {
	}
	


}
