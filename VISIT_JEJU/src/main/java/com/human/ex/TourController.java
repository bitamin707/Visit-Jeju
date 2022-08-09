package com.human.ex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.dto.tour.tourDto;

@Controller
public class TourController {
	
	@RequestMapping(value = "/tour/main1", method = RequestMethod.GET)
	public void main1(Model model) {
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
	
	
	
		
	
