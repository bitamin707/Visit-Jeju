package com.human.ex;

import java.net.URLEncoder;
import java.security.Principal;

import javax.inject.Inject;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.festival.festivalDto;
import com.human.dto.festival.festival_detailDto;
import com.human.dto.festival.festival_reviewDto;
import com.human.service.festival.festivalService;
import com.human.service.festival.festival_detailService;
import com.human.service.festival.festival_reviewService;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	
	@Inject
	private festivalService service;
	@Inject
	private festival_detailService detail_service;
	@Inject
	private festival_reviewService review_service;
	
	// 축제 메인 페이지
	@RequestMapping(value = "/festival", method = RequestMethod.GET)
	public void Main(Model model, festivalDto dto, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute("list", service.listAll());
		
		// 로그인 처리
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
	
	// 축제 컨텐츠 추가
	@RequestMapping(value = "/modify/festivalCreate", method = RequestMethod.GET)
	public void create() throws Exception {
	}
	@RequestMapping(value = "/modify/festivalCreate", method = RequestMethod.POST)
	public String create(festivalDto dto) throws Exception {
		service.create(dto);
		return "redirect:/festival/modify/festival_detailCreate?fno=" + service.getMaxFno();
	}
	
	// 축제 컨텐츠 수정 
	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.GET)
	public void modify(@RequestParam("fno")int fno, Model model) throws Exception {
		model.addAttribute(service.read(fno));
	}
	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.POST)
	public String modify(@RequestParam("fno")int fno, festivalDto dto) throws Exception {
		service.update(dto);
		String getName = URLEncoder.encode(dto.getFname(), "UTF-8");
		return "redirect:/festival/modify/festival_detailModify?fno=" + fno + "&fname=" + getName;
	}
	
	// 축제 컨텐츠 삭제
	@RequestMapping(value = "/modify/festivalDelete", method = RequestMethod.GET)
	public String remove(@RequestParam("fno")int fno) throws Exception {
		service.delete(fno);
		return "redirect:/festival/festival";
	}
	////////////////////////////////////////////////////////////////////////////////////////////
	
	// 축제 세부 페이지
	@RequestMapping(value = "/detail/festivalDetail", method = RequestMethod.GET)
	public void detail_page(@RequestParam("fno")int fno, Model model, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute(detail_service.read(fno));
		model.addAttribute("reviews", review_service.listAll(fno));
		model.addAttribute("fno", fno);
		
		// 로그인 처리
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
	
	// 축제 세부 페이지 생성
	@RequestMapping(value="/modify/festival_detailCreate", method = RequestMethod.GET)
	public void detail_create(@RequestParam("fno")int fno, Model model) throws Exception {
		model.addAttribute(service.read(fno));
	}
	@RequestMapping(value="/modify/festival_detailCreate", method = RequestMethod.POST)
	public String detail_create(festival_detailDto dto) throws Exception {
		detail_service.create(dto);
		return "redirect:/festival/festival";
	}
	
	// 축제 세부 페이지 수정
	@RequestMapping(value = "/modify/festival_detailModify", method = RequestMethod.GET)
	public void detail_modify(@RequestParam("fno")int fno, @RequestParam("fname")String fname,Model model) throws Exception {
		model.addAttribute("changeFname",fname);
		model.addAttribute(detail_service.read(fno));
		System.out.println("Detail : " + fname);
	}
	@RequestMapping(value = "/modify/festival_detailModify", method = RequestMethod.POST)
	public String detail_modify(festival_detailDto dto) throws Exception {
		detail_service.update(dto);
		return "redirect:/festival/festival";
	}
	
	// 축제 세부 페이지 리뷰 생성
	@RequestMapping(value="/modify/festival_reviewCreate", method = RequestMethod.POST)
	public String review_create(@RequestParam("fno")int fno, festival_reviewDto dto, festival_detailDto detaildto, Model model, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute(fno);

		String userid=principal.getName();
		model.addAttribute("userid",userid);
		
		review_service.create(dto);
		detail_service.countReview(detaildto);
		return "redirect:/festival/detail/festivalDetail?fno=" + fno + "#review";
	}
	
	// 축제 세부 페이지 리뷰 수정
	@RequestMapping(value="/modify/festival_reviewModify", method = RequestMethod.POST)
	public String review_modify(@RequestParam("fno")int fno, festival_reviewDto dto, Model model, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute(fno);

		String userid=principal.getName();
		model.addAttribute("userid",userid);
		
		review_service.update(dto);
		return "redirect:/festival/detail/festivalDetail?fno=" + fno + "#review";
	}
	
	// 축제 세부 페이지 리뷰 삭제
	@RequestMapping(value="/modify/festival_reviewDelete", method = RequestMethod.POST)
	public String review_delete(@RequestParam("fno")int fno, festival_reviewDto dto, festival_detailDto detaildto, Model model, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute(fno);

		String userid=principal.getName();
		model.addAttribute("userid",userid);
		
		review_service.delete(dto);
		detail_service.countReview(detaildto);
		return "redirect:/festival/detail/festivalDetail?fno=" + fno + "#review";
	}
	@RequestMapping(value="/modify/festival_admin_reviewDelete", method = RequestMethod.GET)
	public String review_delete(@RequestParam("fno")int fno, @RequestParam("username")int username, festival_reviewDto dto, festival_detailDto detaildto, Model model) throws Exception {
		model.addAttribute(fno);
		model.addAttribute(username);
		
		review_service.delete(dto);
		detail_service.countReview(detaildto);
		return "redirect:/festival/detail/festivalDetail?fno=" + fno + "#review";
	}
}
