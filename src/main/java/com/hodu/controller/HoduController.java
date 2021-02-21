package com.hodu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.model.NoticeDTO;
import com.hodu.service.notice.NoticeService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hodu/*")
@Log4j
public class HoduController {
	
	@Autowired
	private NoticeService NoticeService;
	
	
	@GetMapping("board/notice/notice-category")
	public void notice_category(Model model) {
		List<NoticeDTO> list =  NoticeService.getNotice();
		model.addAttribute("list", list);
		
	}
	
	//공지사항 글 작성 페이지 이동
	@GetMapping("board/notice/notice-reg")
	public void notice_reg() {
	}

	// 글등록
	@RequestMapping(value = "board/notice/registForm", method = RequestMethod.POST)
    public String registForm(NoticeDTO dto, RedirectAttributes ra) {
        NoticeService.writeNotice(dto);// insert 실행(mapper)
        ra.addFlashAttribute("msg", "정상적으로 등록처리 되었습니다");// 일회용 메세지 넘겨주기
        return "redirect:notice-category";
    }
	
	@GetMapping("board/notice/notice-modify")
	public void notice_modify() {
		
	}
	
	@GetMapping("board/notice/notice-detail")
	public void notice_detail(@RequestParam("notice_postnum") int notice_postnum, Model model) {
		NoticeDTO dto =  NoticeService.getOneNotice(notice_postnum);
		model.addAttribute("dto", dto);
	}
	
	
}
