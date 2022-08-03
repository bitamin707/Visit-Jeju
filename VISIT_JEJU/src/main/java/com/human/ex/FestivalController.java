package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.dto.festival.festivalDto;
import com.human.service.festival.festivalService;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	
	@Inject
	private festivalService service;
	
	@RequestMapping(value = "/festival", method = RequestMethod.GET)
	public void Main(Model model, festivalDto dto) throws Exception {
		model.addAttribute("list", service.listAll());
		System.out.println(model);
	}
	
	@RequestMapping(value = "/detail/*", method = RequestMethod.GET)
	public void page1() {
	}

}
