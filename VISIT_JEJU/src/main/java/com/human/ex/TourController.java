package com.human.ex;

import java.security.Principal;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.tour.TourBoardDto;
import com.human.dto.tour.TourReviewsDto;
import com.human.dto.tour.tourDto;
import com.human.service.tour.ITourBoardService;
import com.human.service.tour.TourReviewsService;
import com.human.service.tour.tourService;

@Controller
public class TourController {

	
	@Inject
	private tourService service;
	@Inject
	private TourReviewsService service2;
	@Inject
	private ITourBoardService service3;
	
	
	/* main */
	
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

	
	
	/* data */
	
	@RequestMapping(value = "/tour/data2", method = RequestMethod.GET)
	public void data2(Model model) throws Exception {
		model.addAttribute("list",service2.listAll());
	}
	@RequestMapping(value = "/tour/data2", method = RequestMethod.POST)
	public String data2(TourReviewsDto Dto,Model model) throws Exception {
		service2.insert(Dto);
		return "redirect:/tour/data2";
	}
	
	
	
	/* review */
	
	
	@RequestMapping(value = "/tour/board/modify", method = RequestMethod.POST)
	public String modify(TourBoardDto Dto,Model model
			,RedirectAttributes rttr) throws Exception {
		service3.update(Dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/tour/board/listAll";
	}
	
	@RequestMapping(value = "/tour/board/modify", method = RequestMethod.GET)
	public void modify(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute("TourBoardDto",service3.read(bno));
	}
	
	@RequestMapping(value = "/tour/board/remove", method = RequestMethod.GET)
	public String rmove(@RequestParam("bno")int bno
			,RedirectAttributes rttr) throws Exception {
		service3.delete(bno);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/tour/board/listAll";
	}
	
	@RequestMapping(value = "/tour/board/read", method = RequestMethod.GET)
	public void read(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute("TourBoardDto",service3.read(bno));
	}
	
	@RequestMapping(value = "/tour/board/register", method = RequestMethod.GET)
	public void register(Model model) throws Exception {	
	}
	@RequestMapping(value = "/tour/board/register", method = RequestMethod.POST)
	public String register(TourBoardDto Dto,Model model
			,RedirectAttributes rttr) throws Exception {
		service3.create(Dto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/tour/board/listAll";
	}
	
	@RequestMapping(value = "/tour/board/listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		model.addAttribute("list",service3.listAll());
	}
	

}

	
	
	
		
	