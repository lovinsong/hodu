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

//	@GetMapping("board/notice/notice-modify")
//	public void notice_modify() {
//		
//	}
	
	//modify(글수정)와 detail(상세보기)의 형태가 같아 함께 처리
	@RequestMapping(value = {"board/notice/notice-detail", "board/notice/notice-modify"}, method = RequestMethod.GET) 
	public void notice_detail(@RequestParam("notice_postnum") int notice_postnum, Model model) {
		NoticeDTO dto =  NoticeService.getOneNotice(notice_postnum);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping(value = "board/notice/freeUpdate", method = RequestMethod.POST)
    public String NoticeUpdate(NoticeDTO dto, RedirectAttributes ra) {
		 System.out.println(dto);
        int result = NoticeService.updateNotice(dto);
       

        if(result == 1) {//업데이트 성공
            ra.addFlashAttribute("msg", "정상적으로 수정되었습니다");
        } else { //업데이트 실패
            ra.addFlashAttribute("msg", "수정에 실패했습니다");
        }
        return "redirect:notice-category";
    }
	
}
