package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.service.food.FoodService;

@Controller
public class FoodController {
	@Inject
	private FoodService service;
	
	@RequestMapping(value = "/food/page1", method = RequestMethod.GET)
	public void Page1(Model model) throws Exception{
		System.out.println(service.listAll());
		model.addAttribute("list",service.listAll());
	}	
	@RequestMapping(value = "/food/page2", method = RequestMethod.GET)
	public void Page2(Model model) {
	}	
	@RequestMapping(value = "/food/page3", method = RequestMethod.GET)
	public void Page3(Model model) {
	}
	@RequestMapping(value = "/food/Detail", method = RequestMethod.GET)
	public void Detail(Model model) {
	}	
	@RequestMapping(value = "/food/Detail2", method = RequestMethod.GET)
	public void Detail2(Model model) {
	}	
	@RequestMapping(value = "/food/Detail3", method = RequestMethod.GET)
	public void Detail3(Model model) {
	}	
	@RequestMapping(value = "/food/Detail4", method = RequestMethod.GET)
	public void Detail4(Model model) {
	}	
	@RequestMapping(value = "/food/Detail5", method = RequestMethod.GET)
	public void Detail5(Model model) {
	}	
	@RequestMapping(value = "/food/Detail6", method = RequestMethod.GET)
	public void Detail6(Model model) {
	}	
	

}
