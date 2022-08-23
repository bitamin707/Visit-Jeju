package com.human.ex;

import java.security.Principal;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.shopping.BoardDtoShop1;
import com.human.dto.shopping.BoardDtoShop2;
import com.human.service.shopping.IBoardServiceShop1;
import com.human.service.shopping.IBoardServiceShop2;
import com.human.vo.shopping.PageMaker;


@Controller
@RequestMapping("/shopping/*")
public class ShoppingController {
		
	@Inject
	public IBoardServiceShop1 service;
	
	@Autowired
		private IBoardServiceShop2 bm;
	
	@RequestMapping(value = "/main/MainNormal", method = RequestMethod.GET)
	public void MainNormal(Model model, BoardDtoShop1 dto) throws Exception {
		model.addAttribute("list",service.listInsert());
	}
	
	@RequestMapping(value = "/main/Main", method = RequestMethod.GET)
	public void Main(Model model, BoardDtoShop1 dto, Principal principal, Authentication authentication) throws Exception {
		model.addAttribute("list",service.listInsert());	
		
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
	
	
	@RequestMapping(value = "/product/Product", method = RequestMethod.GET)
	public void Product(@RequestParam("pno") int pno 
			,Model model, PageMaker pm
			, Principal principal, Authentication authentication) 
					throws Exception {
		
		System.out.println(pno);
		System.out.println(service.listPlus(pno));
		model.addAttribute(service.listPlus(pno));
		
		System.out.println(pm);
		model.addAttribute("list",bm.listSearchCriteria(pm));
		pm.setTotalCount(bm.listSearchCount(pm));
		
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
	
	@RequestMapping(value = "product/list", method = RequestMethod.GET)
	public void list(PageMaker pm,Model model) throws Exception {
		System.out.println(pm);
		model.addAttribute("list",bm.listSearchCriteria(pm));
		pm.setTotalCount(bm.listSearchCount(pm));
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
		System.out.print("ShowContect");
		System.out.println(service.read_add(pno));
		model.addAttribute(service.read_add(pno));
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
	@RequestMapping(value = "/main/DeleteBasket", method = RequestMethod.GET)
	public String DeleteBasket(@RequestParam(required=false) String pno, RedirectAttributes rttr) throws Exception{
		System.out.println("Delete_Basket");
		System.out.println(pno);
		service.delete_basket(pno);
		rttr.addFlashAttribute("basket","success");
		return "redirect:/shopping/main/ShoppingBasket";
	}
	
	
	
	@RequestMapping(value = "/product/Modify_add", method = RequestMethod.GET)
	public void Modify_add_get(@RequestParam(required=false) int pno, Model model)throws Exception {
		model.addAttribute(service.read_add(pno));
	}
	
	@RequestMapping(value = "/product/Modify_add", method = RequestMethod.POST)
	public String Modify_add_post(BoardDtoShop1 dto, RedirectAttributes rttr) throws Exception {
		System.out.println("Modify_add");
		System.out.println(dto);
		rttr.addFlashAttribute("keeping","success");
		service.update_add(dto);
		String a = dto.pno;
		return "redirect:/shopping/product/Modify?pno="+a;
	}
	
	
	@RequestMapping(value = "/product/Modify", method = RequestMethod.GET)
	public void Modify_get(@RequestParam(required=false) int pno, Model model)throws Exception {
		model.addAttribute(service.read(pno));
	}
	
	@RequestMapping(value = "/product/Modify", method = RequestMethod.POST)
	public String Modify_post(BoardDtoShop1 dto, RedirectAttributes rttr) throws Exception {
		System.out.println("Modify");
		System.out.println(dto);
		rttr.addFlashAttribute("keeping","success");
		service.update(dto);
		return "redirect:/shopping/main/Remocon_bag";
	}
	
	
	@RequestMapping(value = "/product/remove", method = RequestMethod.GET)
	public String remove(
				@RequestParam(defaultValue = "bno", required=false) int bno
				, @RequestParam(defaultValue = "pno", required=false) int pno
				,PageMaker pm
				,Model model
				,RedirectAttributes rttr
			) throws Exception {
		
		bm.remove(bno);	
		
		rttr.addAttribute("page", pm.getPage());
		rttr.addAttribute("perPageNum", pm.getPerPageNum());
		rttr.addAttribute("searchType", pm.getSearchType());
		rttr.addAttribute("keyword", pm.getKeyword());
		rttr.addFlashAttribute("remove","success");
		
		System.out.println(bno);
		System.out.println(pno);
		model.addAttribute(service.listPlus(pno));
		System.out.println(service.listPlus(pno));
		return "redirect:/shopping/product/Product?pno="+pno;
	}
	
	@RequestMapping(value = "/product/Write_Review", method = RequestMethod.GET)
	public void Write_Review_get(
			@RequestParam(defaultValue = "pno", required = false) int pno
			, Model model
			, BoardDtoShop1 dto)
			throws Exception {
		
		System.out.println(pno);
		model.addAttribute("list", service.showProduct());
		model.addAttribute(service.read_add(pno));
	}
	
	@RequestMapping(value = "/product/Write_Review", method = RequestMethod.POST)
	public String Write_Review_post(
			Model model
			, BoardDtoShop2 dto
			, RedirectAttributes rttr
			,@RequestParam(defaultValue = "pno", required = false) int pno
			) throws Exception {
		bm.create(dto);
		System.out.println("Write_Review");
		System.out.println(dto);
		rttr.addFlashAttribute("write","success");
		return "redirect:/shopping/product/Product?pno="+pno;
	}
	
	
	
	@RequestMapping(value = "/main/ShoppingBasket", method = RequestMethod.GET)
	public void ShoppingBasket(Model model, BoardDtoShop1 dto) throws Exception {
		System.out.println(service.basket());
		model.addAttribute("list",service.basket());
	}
	
	@RequestMapping(value = "/main/MakeBasket", method = RequestMethod.GET)
	public String MakeBasket(Model model, BoardDtoShop1 dto) throws Exception {
		service.create_basket(dto);
		return "redirect:/shopping/main/ShoppingBasket";
	}
	

}

