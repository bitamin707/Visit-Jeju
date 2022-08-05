package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.acco.AccoDto;
import com.human.dto.acco.AccoReviewDto;
import com.human.dto.main.BoardDtoAccount;
import com.human.service.acco.IAccoReviewService;
import com.human.service.acco.IAccoService;
import com.human.service.shopping.IBoardServiceShop1;

@Controller
@RequestMapping("/acco/*")
public class AccoController {
	
	@Inject
	private IAccoReviewService service1;
	@Inject
	private IAccoService service2;
	
	@RequestMapping(value = "/jeju", method = RequestMethod.GET)
	public void Main(AccoDto dto, Model model) throws Exception{
		System.out.println(dto);
		model.addAttribute("list",service2.listAll());
	}
	
	@RequestMapping(value = "/나미송", method = RequestMethod.GET)
	public void page1(AccoReviewDto dto, Model model) throws Exception {
		System.out.println(dto);
		model.addAttribute("list",service1.listAll());
	}
	
	@RequestMapping(value = "/function/insert", method = RequestMethod.GET)
	public void insert() throws Exception {
		System.out.println("insert GuI");
		
	}
	@RequestMapping(value = "/function/insert", method = RequestMethod.POST)
	public String insertData(AccoDto dto) throws Exception {
		System.out.println("insert db");
		service2.insert(dto);
		return "redirect:/acco/jeju";
		
	}
	
}

