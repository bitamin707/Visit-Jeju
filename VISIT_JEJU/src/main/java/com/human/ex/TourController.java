package com.human.ex;

import java.security.Principal;


import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.tour.TourReviewsDto;
import com.human.dto.tour.tourDto;
import com.human.service.tour.TourReviewsService;
import com.human.service.tour.tourService;

@Controller
public class TourController {

	
	@Inject
	private tourService service;
	@Inject
	private TourReviewsService service2;
	
	@RequestMapping(value = "/tour/main1", method = RequestMethod.GET)
	public void Main1(Model model, tourDto dto,Principal principal,Authentication authentication) throws Exception {
		model.addAttribute("list",service.listAll());
		
		if(principal == null) {
			model.addAttribute("userid","비회원");
		}else {
			String userid=principal.getName();
			String authentic = String.valueOf(authentication.getAuthorities());
			model.addAttribute("userid",userid);
			
			if(authentic.contains("[ROLE_ADMIN, ROLE_MEMBER]")) {
				model.addAttribute("Check","관리자");
			}else if(authentic.contains("[ROLE_MEMBER]")){
				model.addAttribute("Check","회원");
			}
		}
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
	public void data2(Model model) throws Exception {
		model.addAttribute("list",service2.listAll());
	}
	@RequestMapping(value = "/tour/data2", method = RequestMethod.POST)
	public String data2(TourReviewsDto Dto,Model model) throws Exception {
		service2.insert(Dto);
		return "redirect:/tour/data2";
	}
	
	
	/* 테스트 */
	
	@RequestMapping(value = "/tour/test", method = RequestMethod.GET)
	public void test(Model model) throws Exception {
		model.addAttribute("list",service2.listAll());
	}
	
	@RequestMapping(value = "/tour/test", method = RequestMethod.POST)
	public String test(TourReviewsDto Dto,Model model) throws Exception {
		service2.insert(Dto);
		return "redirect:/tour/test";
	}
	
	@RequestMapping(value = "/tour/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("t_num")int t_num) throws Exception{
		service2.delete(t_num);
		return "redirect:/tour/test";
	}
	
	
}

	
	
	
		
	