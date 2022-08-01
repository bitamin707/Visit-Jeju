package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/acco/*")
public class AccoController {
	
	@RequestMapping(value = "/jeju", method = RequestMethod.GET)
	public void Main() {
	}
	@RequestMapping(value = "/나미송", method = RequestMethod.GET)
	public void page1() {
	}
	

}
