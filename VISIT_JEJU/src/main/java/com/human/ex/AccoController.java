package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.dto.acco.AccoReviewDto;
import com.human.service.acco.IAccoReviewService;
import com.human.service.shopping.IBoardServiceShop1;

@Controller
@RequestMapping("/acco/*")
public class AccoController {
	
	@Inject
	private IAccoReviewService service;
	@RequestMapping(value = "/jeju", method = RequestMethod.GET)
	public void Main() {
	}
	
	@RequestMapping(value = "/나미송", method = RequestMethod.GET)
	public void page1(AccoReviewDto dto, Model model) throws Exception {
		System.out.println(dto);
		model.addAttribute("list",service.listAll());
	}

}
