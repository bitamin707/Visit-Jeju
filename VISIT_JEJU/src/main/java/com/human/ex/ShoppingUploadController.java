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
import com.human.service.shopping.IBoardServiceShop1;

@Controller
public class ShoppingUploadController {
		
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	private IBoardServiceShop1 service;
	
	
	@RequestMapping(value = "/shopping/product/Create2", method = RequestMethod.GET)
	public void Create2_get(@RequestParam(required=false) int pno) throws Exception {
		System.out.println(pno);
	}
	
	@RequestMapping(value = "/shopping/product/create_add", method = RequestMethod.POST)
	public String Create2_post(BoardDtoShop1 boardDto,Model model, RedirectAttributes rttr) throws Exception {
		service.create_add(boardDto);
		rttr.addFlashAttribute("msg","success");
		return "redirect:/shopping/main/Main";
	}
	
	
	@RequestMapping(value = "/shopping/product/Create2", method = RequestMethod.POST)
	public String uploadFormPost(MultipartFile file, Model model) throws Exception {
		
		System.out.println("/uploadForm");
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());
		System.out.println(file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName", savedName);
		return "/shopping/product/Create2_Result";
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

}