package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserCategoryService;

/**
 * @author 민연준
 * 클래스 카테고리 조회 및 검색/정렬용 컨트롤러
 *
 */
@Controller
@RequestMapping("/user/category/*")
public class UserCategoryController {

	private final UserCategoryService categoryService;
	
	@Autowired
	public UserCategoryController(UserCategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	/**
	 * 전체 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("all")
	public String ClassCategoryAllSelect(Model model) {
		

		List<UserClassDTO> allClassList = new ArrayList<UserClassDTO>();
		
		allClassList = categoryService.selectClassCategory();
		
		model.addAttribute("allClassList",allClassList);
		
		return "user/classList/class_all";
	}
	
	/**
	 * 스포츠 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("sports")
	public String ClassCategorySportsSelect(Model model) {
		
		List<UserClassDTO> sportsClassList = new ArrayList<>();
		
		sportsClassList = categoryService.selectClassSportsCategory();
		
		model.addAttribute("sportsClassList",sportsClassList);
		
		
		return "user/classList/class_sports";
	}
}
