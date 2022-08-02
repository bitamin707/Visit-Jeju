package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FoodController {
	
	@RequestMapping(value = "/food/page1", method = RequestMethod.GET)
	public void Page1(Model model) {
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
	

}
