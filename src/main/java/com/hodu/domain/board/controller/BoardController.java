package com.hodu.domain.board.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.domain.board.service.BoardService;
import com.hodu.domain.model.ItemDTO;
import com.hodu.domain.model.MemberDTO;
import com.hodu.domain.model.NoticeDTO;
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
		
	
		
		service.itemRegist(dto);
		
		
        return "redirect:item-category";
    }
	
	//아이템 날짜 선택 페이지로 이동하기
	@GetMapping("item/item-detail")
 	public void item_detail(Model model, @RequestParam(required = false,defaultValue="1") int item_code, HttpServletRequest req) throws Exception {
		
		MemberDTO member = (MemberDTO)req.getSession().getAttribute("member") == null ? null : (MemberDTO)req.getSession().getAttribute("member");
		
		String user = "";
		
		if (!(member == null)){
			user = member.getMember_id();
		}
		
		ItemDTO dto = service.itemInfo(item_code,user);
		

		
		model.addAttribute("dto", dto);
		
		
 	}
	
	@PostMapping("item/changeHeart")
	public void changeHeart(ItemDTO dto) throws Exception {
		
		System.out.println(dto);
		
		service.likeChanger(dto);
		
		
	}
	
	
	
	//공지사항 글 작성 페이지로 이동하기
	@GetMapping("notice/notice-reg")
	public void notice_reg() {
	}
	
	@RequestMapping(value = "notice/registForm", method = RequestMethod.POST)
    public String registForm1(NoticeDTO dto, RedirectAttributes ra, HttpServletRequest req) throws Exception {
		
		MemberDTO member = (MemberDTO)req.getSession().getAttribute("member") == null ? null : (MemberDTO)req.getSession().getAttribute("member");
		
		if (member != null) {
			dto.setMember_id(member.getMember_id());
		}
		
		service.notice_regist(dto);
		
		
        return "redirect:notice-category";
    }
	
	// 공지사항 전체 페이지로 이동
	@GetMapping("notice/notice-category")
	public void notice_category(Model model, NoticeDTO dto,@RequestParam(required = false,defaultValue="1") int page, @RequestParam(required = false, defaultValue = "1") int range) throws Exception {

		model.addAttribute("dto", service.noticepage(page));
		
	}
	
	@GetMapping("notice/notice-detail")
 	public void notice_detail(Model model, @RequestParam(required = false,defaultValue="1") int notice_postnum, HttpServletRequest req) throws Exception {
		
		
		
		NoticeDTO dto = service.getNotice(notice_postnum);
		
		model.addAttribute("dto",dto);
		
		
 	}

}
