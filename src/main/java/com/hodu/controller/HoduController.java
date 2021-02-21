package com.hodu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hodu/*")
@Log4j
public class HoduController {
	
	
	@GetMapping("board/item/item-category")
	public void item_category() {
		
	}
	
	@GetMapping("board/item/item")
	public void item() {
		
	}
	
	@GetMapping("board/item/item-modify")
	public void item_modify() {
		
	}
	
	@GetMapping("board/item/item-detail")
	public void item_detail() {
		
	}
}
