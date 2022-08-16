package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.festival.festivalDto;
import com.human.dto.festival.festival_detailDto;
import com.human.dto.main.BoardDtoAccount;
import com.human.service.festival.festivalService;
import com.human.service.festival.festival_detailService;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	
	@Inject
	private festivalService service;
	@Inject
	private festival_detailService detail_service;
	
	// 축제 메인 페이지
	@RequestMapping(value = "/festival", method = RequestMethod.GET)
	public void Main(Model model, festivalDto dto) throws Exception {
		model.addAttribute("list", service.listAll());
	}
	
	// 축제 컨텐츠 추가
	@RequestMapping(value = "/modify/festivalCreate", method = RequestMethod.GET)
	public void create() throws Exception {
	}
	@RequestMapping(value = "/modify/festivalCreate", method = RequestMethod.POST)
	public String create(festivalDto dto, Model model) throws Exception {
		service.create(dto);
		model.addAttribute(dto.getFno());
		return "/festival/modify/festival_detailCreate";
	}
	
	// 축제 컨텐츠 수정 
	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.GET)
	public void modify(@RequestParam("fno")int fno, Model model) throws Exception {
		model.addAttribute(service.read(fno));
	}
	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.POST)
	public String modify(festivalDto dto) throws Exception {
		service.update(dto);
		return "redirect:/festival/modify/festival_detailCreate";
	}
	
	// 축제 컨텐츠 삭제
	@RequestMapping(value = "/modify/festivalDelete", method = RequestMethod.GET)
	public String remove(@RequestParam("fno")int fno) throws Exception {
		service.delete(fno);
		detail_service.delete(fno);
		return "redirect:/festival/festival";
	}
	////////////////////////////////////////////////////////////////////////////////////////////
	
	// 축제 세부 페이지
	@RequestMapping(value = "/detail/*", method = RequestMethod.GET)
	public void page1() {
	}
	
	@RequestMapping(value="/modify/festival_detailCreate", method = RequestMethod.GET)
	public void detail_create() throws Exception {
	}
	@RequestMapping(value="/modify/festival_detailCreate", method = RequestMethod.POST)
	public String detail_create(festival_detailDto dto) throws Exception {
		detail_service.create(dto);
		return "redirect:/festival/festival";
	}

}
