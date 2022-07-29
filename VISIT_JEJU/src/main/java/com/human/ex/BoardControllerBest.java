package com.human.ex;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.main.BoardDtoBest;
import com.human.dto.main.BoardDtoFood;
import com.human.dto.main.BoardDtoFoodBest;
import com.human.dto.main.BoardDtoMerch;
import com.human.service.main.IBoardServiceBest;
import com.human.service.main.IBoardServiceFood;
import com.human.service.main.IBoardServiceFoodBest;
import com.human.service.main.IBoardServiceMerch;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardControllerBest {
	
	@Inject
	private IBoardServiceBest service;
	@Inject
	private IBoardServiceFoodBest serviceFoodBest;
	@Inject
	private IBoardServiceFood serviceFood;
	@Inject
	private IBoardServiceMerch serviceMerch;
	
	
	/*메인*/
	
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	public void list(Model model) throws Exception {
		model.addAttribute("list",service.listAll());
		model.addAttribute("listFoodBest",serviceFoodBest.listAllFoodBest());
		model.addAttribute("listFood",serviceFood.listAllFood());
		model.addAttribute("listMerch",serviceMerch.listAllMerch());
	}
	
	/*
	 * Best 테이블 기능
	 */
	
	@RequestMapping(value = "/main/bestModify", method = RequestMethod.POST)
	public String modify(BoardDtoBest boardDtoBest,Model model
			,RedirectAttributes rttr) throws Exception {
		service.update(boardDtoBest);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/main/bestModify", method = RequestMethod.GET)
	public void modify(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute(service.read(bno));
	}	
	@RequestMapping(value = "/main/bestList", method = RequestMethod.GET)
	public void read(Model model) throws Exception {
		model.addAttribute("list",service.listAll());
	}
	
	
	
	
	/*
	 * FoodBest 테이블 기능
	 */
	@RequestMapping(value = "/main/foodBestModify", method = RequestMethod.POST)
	public String foodBestModify(BoardDtoFoodBest boardDtoFoodBest,Model model
			,RedirectAttributes rttr) throws Exception {
		serviceFoodBest.updateFoodBest(boardDtoFoodBest);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/main/foodBestModify", method = RequestMethod.GET)
	public void foodBestModify(Model model) throws Exception {
		model.addAttribute("listFoodBest",serviceFoodBest.listAllFoodBest());
	}	
	
	
	
	
	
	
	
	/*
	 * Food 테이블 기능
	 */
	@RequestMapping(value = "/main/foodModify", method = RequestMethod.POST)
	public String modifyFood(BoardDtoFood boardDtoFood,Model model
			,RedirectAttributes rttr) throws Exception {
		serviceFood.updateFood(boardDtoFood);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/main/foodModify", method = RequestMethod.GET)
	public void modifyFood(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute(serviceFood.readFood(bno));
	}	
	@RequestMapping(value = "/main/foodList", method = RequestMethod.GET)
	public void readFood(Model model) throws Exception {
		model.addAttribute("listFood",serviceFood.listAllFood());
	}
	
	
	
	
	
	
	
	/*
	 * Merch 테이블 기능
	 */
	@RequestMapping(value = "/main/merchModify", method = RequestMethod.POST)
	public String modifyMerch(BoardDtoMerch boardDtoMerch,Model model
			,RedirectAttributes rttr) throws Exception {
		serviceMerch.updateMerch(boardDtoMerch);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/main/merchModify", method = RequestMethod.GET)
	public void modifyMerch(@RequestParam("bno")int bno,Model model) throws Exception {

		model.addAttribute(serviceMerch.readMerch(bno));
		
	}	
	@RequestMapping(value = "/main/merchList", method = RequestMethod.GET)
	public void readMerch(Model model) throws Exception {
		model.addAttribute("listMerch",serviceMerch.listAllMerch());
	}
}
