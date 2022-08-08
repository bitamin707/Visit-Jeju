package com.human.ex;

import javax.inject.Inject; 

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.shopping.BoardDtoShop1;
import com.human.service.shopping.IBoardServiceShop1;



@Controller
@RequestMapping("/shopping/*")
public class ShoppingController {
		
	@Inject
	private IBoardServiceShop1 service;
	
	@RequestMapping(value = "/main/MainNormal", method = RequestMethod.GET)
	public void MainNormal(Model model, BoardDtoShop1 dto) throws Exception {
		model.addAttribute("list",service.listInsert());
	}
	
	@RequestMapping(value = "/main/Main", method = RequestMethod.GET)
	public void Main(Model model, BoardDtoShop1 dto) throws Exception {
		model.addAttribute("list",service.listInsert());
		
	}	
	
	@RequestMapping(value = "/product/Product", method = RequestMethod.GET)
	public void Product(@RequestParam("pno") int pno ,Model model) throws Exception {
		System.out.println(service.listPlus(pno));
		model.addAttribute(service.listPlus(pno));
	}	
	
	@RequestMapping(value = "/main/Remocon_bag", method = RequestMethod.GET)
	public void remocon_bag(Model model) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	
	
	@RequestMapping(value = "/product/Create1", method = RequestMethod.GET)
	public void Create1_get(Model model) throws Exception {
	}
	@RequestMapping(value = "/product/Create1", method = RequestMethod.POST)
	public String Create1_post(BoardDtoShop1 boardDto,Model model, RedirectAttributes rttr) throws Exception {
		service.create(boardDto);
		System.out.println(boardDto.pno);
		String a = boardDto.pno;
		rttr.addFlashAttribute("msg","success");
		return "redirect:/shopping/product/Create2?pno="+boardDto.pno;
	}
	
	
	@RequestMapping(value = "/product/ShowContent", method = RequestMethod.GET)
	public void Read(@RequestParam("pno") int pno,Model model) throws Exception {
		System.out.println(service.read(pno));
		model.addAttribute(service.read(pno));
	}

	
	@RequestMapping(value = "/product/Delete", method = RequestMethod.GET)
	public String Delete(@RequestParam(required=false) String pno) throws Exception{
		System.out.println("Delete");
		service.delete(pno);
		return "redirect:/shopping/main/Remocon_bag";
	}
	
	@RequestMapping(value = "/product/Delete_add", method = RequestMethod.GET)
	public String Delete_add(@RequestParam(required=false) String pno,RedirectAttributes rttr) throws Exception{
		System.out.println("Delete_add");
		service.delete_add(pno);
		rttr.addFlashAttribute("okay","success");
		return "redirect:/shopping/product/Delete?pno="+pno;
	}
	
	@RequestMapping(value = "product/Modify_add", method = RequestMethod.GET)
	public void Modify_add_get(@RequestParam(required=false) int pno, Model model)throws Exception {
		model.addAttribute(service.read(pno));
	}

	

}
