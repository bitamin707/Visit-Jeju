package com.human.ex;

import java.awt.image.BufferedImage;  
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.dto.shopping.BoardDtoShop1;
import com.human.service.shopping.IBoardServiceRate;
import com.human.service.shopping.IBoardServiceShop1;
import com.human.service.shopping.IBoardServiceShop2;

@Controller
public class ShoppingUploadController {
		
	@Resource(name = "uploadPath")
	public String uploadPath;
	
	@Inject
	public IBoardServiceShop1 service;
	
	@Autowired
	private IBoardServiceRate bm;
	
	
	@RequestMapping(value = "/shopping/product/Create2", method = RequestMethod.GET)
	public void Create2_get(@RequestParam(required=false) int pno) throws Exception {
		System.out.println(pno);
	}
	
	@RequestMapping(value = "/shopping/product/create_add", method = RequestMethod.POST)
	public String Create2_post(BoardDtoShop1 boardDto,Model model, RedirectAttributes rttr) throws Exception {
		service.create_add(boardDto);
		rttr.addFlashAttribute("nice","success");
		return "redirect:/shopping/main/Remocon_bag";
	}
	
	
	@RequestMapping(value = "/shopping/product/Create2_Result", method = RequestMethod.POST, headers = ("content-type=multipart/*"))
	public String uploadFormPost(@RequestParam("file") MultipartFile file, Model model) throws Exception {
		
		if (file == null) {
			System.out.println("sad");
		}
		
		System.out.println("/uploadForm");
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName", savedName);

		return "/shopping/product/Create2_Result";
	}
	

	@RequestMapping(value = "/shopping/product/Create2_Result", method = RequestMethod.GET)
	public void Create2_Result() throws Exception {
	}


	public String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uid = UUID.randomUUID();
		System.out.println("check1");
		String savedName = uid.toString() + "_" + originalName;
		System.out.println("check2");
		File target = new File(uploadPath, savedName);
		System.out.println("check3");
		FileCopyUtils.copy(fileData, target);
		System.out.println("check4");
		return savedName;
	}
	
	
	@RequestMapping(value = "/shopping/main/Rating", method = RequestMethod.GET)
	public void rate(Model model) throws Exception {
		model.addAttribute("list",bm.listAll());
	}
	

}
