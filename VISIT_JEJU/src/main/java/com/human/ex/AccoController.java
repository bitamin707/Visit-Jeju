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

import com.human.service.acco.IAccoReviewService;
import com.human.service.acco.IAccoService;


@Controller
@RequestMapping("/acco/*")
public class AccoController {
	
	@Inject
	private IAccoReviewService service1;
	@Inject
	private IAccoService service2;
	
	@RequestMapping(value = "/jeju", method = RequestMethod.GET)
	public void Main(AccoDto dto, Model model) throws Exception{
		model.addAttribute("list",service2.listAll());
	}
	
	@RequestMapping(value = "/function/detail", method = RequestMethod.GET)
	public void page1(@RequestParam("acco_id")int acco_id, Model model) throws Exception {
		System.out.println("read");
		model.addAttribute(service2.read(acco_id));
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
	public void ModifyGUi(@RequestParam("acco_id")int acco_id,Model model) throws Exception {
		model.addAttribute(service2.read(acco_id));
		System.out.println(model);
	}
	@RequestMapping(value = "/function/accoModify", method = RequestMethod.POST)
	public String Modify(AccoDto dto) throws Exception {
		
		service2.update(dto);
		System.out.println(dto);
		return "redirect:/acco/jeju";
	}
	@RequestMapping(value = "/function/read", method = RequestMethod.POST)
	public void read(@RequestParam("acco_id")int acco_id, Model model) throws Exception {
		System.out.println("read");
		model.addAttribute(service2.read(acco_id));
	}
	
	//리뷰 페이지
	
	@RequestMapping(value = "/function/review/insert", method = RequestMethod.GET)
	public void insertReview(AccoReviewDto dto) throws Exception {
		System.out.println("insert GuI");
		System.out.println(dto);
		
	}
	@RequestMapping(value = "/function/review/insert", method = RequestMethod.POST)
	public String insertReviewData(@RequestParam("acco_id")int acco_id, AccoReviewDto dto, RedirectAttributes rttr) throws Exception {
		System.out.println(dto);
		service1.create(dto);
		rttr.addFlashAttribute("msg","리뷰작성완료");
		return "redirect:/acco/function/detail?acco_id="+acco_id;
		
	}
	@RequestMapping(value = "/function/review/delete", method = RequestMethod.GET)
	public String deleteReviewData(@RequestParam("ano")int ano,Model model, @RequestParam("acco_id")int acco_id) throws Exception {
		System.out.println("reviewdelete");
		service1.delete(ano);
		return "redirect:/acco/function/detail?acco_id="+acco_id;
		
	}
	@RequestMapping(value = "/function/review/modify", method = RequestMethod.GET)
	public void ModifyReviewDataGUi(@RequestParam("ano")int ano,Model model) throws Exception {
		model.addAttribute(service1.read(ano));
		System.out.println(model);
	}
	@RequestMapping(value = "/function/review/modify", method = RequestMethod.POST)
	public String ModifyReviewData(AccoReviewDto dto,  @RequestParam("acco_id")int acco_id) throws Exception {
		
		service1.update(dto);
		System.out.println(dto);
		return "redirect:/acco/function/detail?acco_id="+acco_id;
	}
}

