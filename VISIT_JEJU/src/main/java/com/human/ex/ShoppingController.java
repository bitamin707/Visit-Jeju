package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.BoardDto;
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
		System.out.println(dto);
		
	}
	
	@RequestMapping(value = "/main/Remocon_bag", method = RequestMethod.GET)
	public void remocon_bag(Model model) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	
	
	@RequestMapping(value = "/product/Create1", method = RequestMethod.GET)
	public void Create1_get(Model model) throws Exception {
	}
	@RequestMapping(value = "/product/Create1", method = RequestMethod.POST)
	public String Create1_post(BoardDtoShop1 boardDto,Model model, RedirectAttributes rttr) throws Exception {
		service.create(boardDto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/shopping/main/Remocon_bag";
	}
	
	@RequestMapping(value = "/product/Create2", method = RequestMethod.GET)
	public void Create2_get(@RequestParam("ID") int id, Model model) throws Exception {

	}
	@RequestMapping(value = "/product/Create2", method = RequestMethod.POST)
	public void Create2_post(Model model) throws Exception {
	}
	
	
	


}
