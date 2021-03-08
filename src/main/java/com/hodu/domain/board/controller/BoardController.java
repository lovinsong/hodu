package com.hodu.domain.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.domain.board.service.BoardService;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.util.Pagination;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hodu/board/*")
@Log4j
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	//아이템 글 작성 페이지로 이동하기
	@GetMapping("item/item-reg")
	public void item_reg() {
	}
	
	//아이템 날짜 선택 페이지로 이동하기
	@GetMapping("item/Datepicker")
 	public void testDatepicker1() {
 	}

	//글 전체 페이지로 이동하기
	@GetMapping("item/item-category")
	public void item_category(Model model, ItemDTO dto, @RequestParam(required = false,defaultValue="1") int page, @RequestParam(required = false, defaultValue = "1") int range) throws Exception {
		
		int listCnt  = service.getItemCnt();
		
		
	    //Pagination 객체생성
		Pagination pagination = new Pagination();
		pagination.pageInfo(page, range, listCnt);
	   
		model.addAttribute("dto",service.itempage(page));
		model.addAttribute("pagination", pagination);
		
	}
	
	@RequestMapping(value = "item/registForm", method = RequestMethod.POST)
    public String registForm1(ItemDTO dto, RedirectAttributes ra) throws Exception {
		
		dto.setMember_id("master3");
		System.out.println("dto : " + dto);
		
		service.itemRegist(dto);
		
		
		
		
        return "redirect:item-category";
    }

}
