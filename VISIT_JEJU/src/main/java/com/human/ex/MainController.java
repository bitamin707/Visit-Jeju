package com.human.ex;
import java.security.Principal;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.main.BoardDtoAuthority;
import com.human.dto.main.BoardDtoAccount;
import com.human.dto.main.BoardDtoBest;
import com.human.dto.main.BoardDtoFood;
import com.human.dto.main.BoardDtoFoodBest;
import com.human.dto.main.BoardDtoMerch;
import com.human.dto.main.BoardDtoMerchLogData;
import com.human.dto.main.BoardDtoTest;
import com.human.service.main.IBoardServiceAccount;
import com.human.service.main.IBoardServiceAuthority;
import com.human.service.main.IBoardServiceBest;
import com.human.service.main.IBoardServiceFood;
import com.human.service.main.IBoardServiceFoodBest;
import com.human.service.main.IBoardServiceMerch;
import com.human.service.main.IBoardServiceMerchLogData;
import com.human.service.main.IBoardServiceTest;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@Inject
	private IBoardServiceBest service;
	@Inject
	private IBoardServiceFoodBest serviceFoodBest;
	@Inject
	private IBoardServiceFood serviceFood;
	@Inject
	private IBoardServiceMerch serviceMerch;
	@Inject
	private IBoardServiceAccount serviceAccount;
	@Inject
	private IBoardServiceAuthority serviceAuthority;
	@Inject
	private IBoardServiceMerchLogData serviceMerchLogData;
	@Inject
	private IBoardServiceTest serviceTest;

	/*?????????*/
	@RequestMapping(value = "/main/loginPage", method = RequestMethod.GET)
	public String loginGet(HttpServletRequest request) throws Exception {
		// ?????? ????????? ????????? URI ????????? Session??? Attribute??? ????????? ??????(??? ???????????? ???)
		// ???????????? ????????? ?????? ?????? ?????? ????????? URI??? ????????? ???????????? ????????? ????????? ??????
		String uri = request.getHeader("Referer");
		if (!uri.contains("/main/loginPage")) {
			request.getSession().setAttribute("prevPage",
					request.getHeader("Referer"));
		}

		return "/main/loginPage";
	}
	@RequestMapping(value = "/main/loginPage", method = RequestMethod.POST)
	public void loginPOST() throws Exception {
	}
	@RequestMapping(value = "/main/login/error", method = RequestMethod.GET)
	public void error() throws Exception {
	}

	/*??????*/
	@RequestMapping(value = "/main/main", method = RequestMethod.POST)
	public void list() throws Exception {
		
	}
	@RequestMapping(value = "/main/main", method = RequestMethod.GET)
	public void listNormal(Model model, Principal principal,Authentication authentication) throws Exception {
		model.addAttribute("list",service.listAll());
		model.addAttribute("listFoodBest",serviceFoodBest.listAllFoodBest());
		model.addAttribute("listFood",serviceFood.listAllFood());
		model.addAttribute("listMerch",serviceMerch.listAllMerch());
		model.addAttribute("listAccount",serviceAccount.listAllAccount());
		model.addAttribute("listTest",serviceTest.listAllTest());
		if(principal == null) {
			model.addAttribute("userid","?????????");
		}else {
			String userid=principal.getName();
			String authentic = String.valueOf(authentication.getAuthorities());
			model.addAttribute("userid",userid);
			
			if(authentic.contains("[ROLE_ADMIN, ROLE_MEMBER]")) {
				model.addAttribute("Check","?????????");
			}else if(authentic.contains("[ROLE_MEMBER]")){
				model.addAttribute("Check","??????");
			}
		}
	}
	
	/* Best ??????????????? */
	
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
	
	
	
	
	/* FoodBest ??????????????? */
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
	
	
	
	
	
	
	/* Food ??????????????? */
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
	
	
	
	
	
	
	
	/* Merch ??????????????? */
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
	

	
	
	/* signup ????????? ?????? */
	@RequestMapping(value = "/main/sighup", method = RequestMethod.GET)
	public void sighup(Model model) throws Exception {
	}
	@RequestMapping(value = "/main/sighup", method = RequestMethod.POST)
	public String sighup(BoardDtoAccount boardDtoAccount,BoardDtoAuthority boardDtoAuthority,RedirectAttributes rttr) throws Exception {
		serviceAccount.createAccount(boardDtoAccount);
		serviceAuthority.createAuthority(boardDtoAuthority);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/loginPage";
	}
	@RequestMapping(value = "/main/accountModify", method = RequestMethod.POST)
	public String updateAccount(BoardDtoAccount boardDtoAccount,Model model
			,RedirectAttributes rttr) throws Exception {
		serviceAccount.updateAccount(boardDtoAccount);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/main/accountModify", method = RequestMethod.GET)
	public void updateAccount(@RequestParam("username")String username,Model model) throws Exception {
		model.addAttribute(serviceAccount.readAccount(username));		
	}	
	@RequestMapping(value = "/main/accountList", method = RequestMethod.GET)
	public void accountMerch(Model model) throws Exception {
		model.addAttribute("listAccount",serviceAccount.listAllAccount());
	}
	@RequestMapping(value = "/main/accountRemove", method = RequestMethod.GET)
	public String remove(@RequestParam("username")String username
			,RedirectAttributes rttr) throws Exception {
		System.out.println(username);
		serviceAccount.deleteAccount(username);
		serviceAuthority.deleteAuthority(username);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/main/accountList";
	}
	/* ?????????????????? */
	@RequestMapping(value = "/main/merchRecommend", method = RequestMethod.GET)
	public void ListMerchLogDataGet(Model model) throws Exception {
		model.addAttribute("listMerchLogData",serviceMerchLogData.listAllMerchLogData());
	}
	@RequestMapping(value = "/main/merchAI", method = RequestMethod.GET)
	public void ListMerchGet(Model model) throws Exception {
		model.addAttribute("listMerchLogData",serviceMerchLogData.listAllMerchLogData());
	}

	@RequestMapping(value = "/main/merchAI", method = RequestMethod.POST)
	public void ListMerchPost(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/main/merchAdd", method = RequestMethod.GET)
	public void ListMerchAddGet(Model model) throws Exception {
		model.addAttribute("listMerchLogData",serviceMerchLogData.listAllMerchLogData());
	}

	@RequestMapping(value = "/main/merchAdd", method = RequestMethod.POST)
	public void ListMerchAddPost(Model model, BoardDtoMerchLogData boardDtoMerchLogData ) throws Exception {
		serviceMerchLogData.createMerchLogData(boardDtoMerchLogData);
	}
	
	
	
	/* ???????????? */
	@RequestMapping(value = "/main/testPage", method = RequestMethod.GET)
	public void ListTest1(Model model) throws Exception {
		model.addAttribute("listTest",serviceTest.listAllTest());
	}
	@RequestMapping(value = "/main/testPage2", method = RequestMethod.GET)
	public void updateTitle(Model model) throws Exception {	
	}	
	@RequestMapping(value = "/main/testPage2", method = RequestMethod.POST)
	public String updateTest(Model model,BoardDtoTest boardDtoTest) throws Exception {
		serviceTest.createTest(boardDtoTest);
		return "redirect:/main/testPage3";
	}
	@RequestMapping(value = "/main/testPage3", method = RequestMethod.GET)
	public void perchaseTest1(Model model) throws Exception {
		model.addAttribute("listTest",serviceTest.listAllTest());
	}
	@RequestMapping(value = "/main/testPage3", method = RequestMethod.POST)
	public void perchaseTest2(Model model) throws Exception {
	}
	

}
