package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.festival.festivalDto;
import com.human.dto.main.BoardDtoAccount;
import com.human.service.festival.festivalService;

@Controller
@RequestMapping("/festival/*")
public class FestivalController {
	
	@Inject
	private festivalService service;
	
	@RequestMapping(value = "/festival", method = RequestMethod.GET)
	public void Main(Model model, festivalDto dto) throws Exception {
		model.addAttribute("list", service.listAll());
	}
	
	@RequestMapping(value = "/detail/*", method = RequestMethod.GET)
	public void page1() {
	}
	
	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.GET)
	public void MainModify(@RequestParam("fno")int fno, Model model) throws Exception {
		model.addAttribute(service.read(fno));
	}

	@RequestMapping(value = "/modify/festivalModify", method = RequestMethod.POST)
	public String MainModify(festivalDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println(dto);
		service.update(dto);
		rttr.addFlashAttribute("msg","수정 완료");
		return "redirect:/festival/festival";
	}
	
}
