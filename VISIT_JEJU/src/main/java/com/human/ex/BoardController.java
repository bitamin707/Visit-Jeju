package com.human.ex;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.food.BoardDto;
import com.human.service.food.IBoardService;


@Controller
public class BoardController {
	@Inject
	private IBoardService service;
	
	//정보 요청에는 get
	@RequestMapping(value="/food/remove", method=RequestMethod.GET)
	public String remove(@RequestParam("bno")int bno,
			RedirectAttributes rttr)throws Exception{
		service.delete(bno);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/food/listAll";
		
	}
	//정보 생성이나 update 데이터를 보낼때 사용 post
	@RequestMapping(value ="/food/modify", method = RequestMethod.POST)
	public String modify(BoardDto boardDto,Model model
			,RedirectAttributes rttr) throws Exception {
		service.update(boardDto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/food/listAll";
	}
	@RequestMapping(value ="/food/modify", method = RequestMethod.GET)
	public void modify(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute(service.read(bno));
		
	}
	@RequestMapping(value ="/food/read", method = RequestMethod.GET)
	public void read(@RequestParam("bno")int bno,Model model) throws Exception {
		model.addAttribute(service.read(bno));
		
	}
	@RequestMapping(value ="/food/register", method = RequestMethod.GET)
	public void register(Model model) throws Exception {
	}
	@RequestMapping(value ="/food/register", method = RequestMethod.POST)
	public String register(BoardDto boardDto,Model model,RedirectAttributes rttr) throws Exception {
		service.create(boardDto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/food/listAll";
	}
	@RequestMapping(value ="/food/listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		//DB에 있는 모든데이터를 화면에 보여주기 
		
		//DB에 있는 모든데이터를 읽어다주는 service를 실해서 
		//모델의 list 에 담는다.
		model.addAttribute("list",service.listAll());
	}
	
}
