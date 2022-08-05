package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.acco.AccoDto;
import com.human.dto.acco.AccoReviewDto;
import com.human.dto.festival.festivalDto;
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
	public String insertData(AccoDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println(dto);
		service2.insert(dto);
		rttr.addFlashAttribute("msg","수정 완료");
		return "redirect:/acco/jeju";
		
	}
	@RequestMapping(value = "/function/delete", method = RequestMethod.GET)
	public String delete(@RequestParam("acco_id")int acco_id) throws Exception {
		System.out.println("delete");
		service2.delete(acco_id);
		return "redirect:/acco/jeju";
		
	}
	@RequestMapping(value = "/function/accoModify", method = RequestMethod.GET)
	public String MainModify(@RequestParam("acco_id")int acco_id,Model model) throws Exception {
		System.out.println("modify");
		model.addAttribute(service2.read(acco_id));
		return "redirect:/acco/function/accoModify";
	}
	@RequestMapping(value = "/function/read", method = RequestMethod.POST)
	public void read(@RequestParam("acco_id")int acco_id, Model model) throws Exception {
		System.out.println("read");
		model.addAttribute(service2.read(acco_id));
	}
}

