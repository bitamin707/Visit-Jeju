package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	
	@RequestMapping(value = "/festival", method = RequestMethod.GET)
	public void Main() {
	}
	
	@RequestMapping(value = "/detail/*", method = RequestMethod.GET)
	public void page1() {
	}

}
