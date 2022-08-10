package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.dto.tour.tourDto;
import com.human.service.tour.tourService;

@Controller
public class TourController {
	
	@Inject
	private tourService service;
	
	@RequestMapping(value = "/tour/main1", method = RequestMethod.GET)
	public void Main1(Model model, tourDto dto) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	@RequestMapping(value = "/tour/main2", method = RequestMethod.GET)
	public void main2(Model mode1) {
	}
	@RequestMapping(value = "/tour/main3", method = RequestMethod.GET)
	public void main3(Model model) {
	}
	@RequestMapping(value = "/tour/data1", method = RequestMethod.GET)
	public void data1(Model model) {
	}
	@RequestMapping(value = "/tour/data2", method = RequestMethod.GET)
	public void data2(Model model) {
	}
}
	
	
	
		
	
