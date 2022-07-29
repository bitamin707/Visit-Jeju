package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shopping/main/*")
public class ShoppingController {
	
	@RequestMapping(value = "/Test", method = RequestMethod.GET)
	public void Test(Model model) {
	}	
	
	@RequestMapping(value = "/Main", method = RequestMethod.GET)
	public void Main(Model model) {

	}

}
