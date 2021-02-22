package com.hodu.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hodu.model.NoticeDTO;
import com.hodu.model.ReplyDTO;
import com.hodu.service.notice.NoticeService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/hodu/*")
@Log4j
public class HoduController {
	
	@Autowired
	private NoticeService NoticeService;
	
	
	
	//글 전체 페이지로 이동하기
	@GetMapping("board/notice/notice-category")
	public void notice_category(Model model) {
		List<NoticeDTO> list =  NoticeService.getNotice();
		model.addAttribute("list", list);
		
	}
	
	//글 작성 페이지로 이동하기
	@GetMapping("board/notice/notice-reg")
	public void notice_reg() {
	}

	
	
	//글 작성하기
	@RequestMapping(value = "board/notice/registForm", method = RequestMethod.POST)
    public String registForm(NoticeDTO dto, RedirectAttributes ra) {
        NoticeService.writeNotice(dto);
        ra.addFlashAttribute("msg", "정상적으로 작성/등록되었습니다");
        return "redirect:notice-category";
    }
	
	
	//modify(글 수정하기) = detail(글 상세보기) -> 함께 처리
	@RequestMapping(value = {"board/notice/notice-detail", "board/notice/notice-modify"}, method = RequestMethod.GET) 
	public void notice_detail(@RequestParam("notice_postnum") int notice_postnum, Model model) {
		NoticeDTO dto =  NoticeService.getOneNotice(notice_postnum);
		model.addAttribute("dto", dto);
	}
	

	//글 수정하기
	@RequestMapping(value = "board/notice/freeUpdate", method = RequestMethod.POST)
    public String NoticeUpdate(NoticeDTO dto, RedirectAttributes ra) {
		 System.out.println(dto);
        int result = NoticeService.updateNotice(dto);      
        if(result == 1) {
            ra.addFlashAttribute("msg", "정상적으로 수정되었습니다");
        } else { 
            ra.addFlashAttribute("msg", "수정에 실패했습니다");
        }
        return "redirect:notice-category";
    }
	
	
	//글 삭제하기
	@RequestMapping(value = "board/notice/freeDelete", method = RequestMethod.POST)
    public String DeleteUpdate(NoticeDTO dto, RedirectAttributes ra) {
        int result = NoticeService.deleteNotice(dto);       
        if(result == 1) {
            ra.addFlashAttribute("msg", dto.getNotice_postnum() + "번 게시글이 삭제되었습니다" );
        } else {
            ra.addFlashAttribute("msg", "게시글 삭제에 실패했습니다");
        }
        return "redirect:notice-category";
    }
	
	
	
	//-------------------------------------------------------------------------------------------------------------------
	
	
	
	//댓글 작성하기
	@ResponseBody
    @RequestMapping("/board/notice/replyRegist")
    public int replyRegist(@RequestBody ReplyDTO dto) {
		System.out.println(dto);
        int result = NoticeService.writeReply(dto);
        return result;
    }

	
	//댓글 불러오기
    @ResponseBody
    @RequestMapping("/board/notice/replylist/{board_postnum}/{page}")
    public HashMap<String, Object> replylist(@PathVariable("board_postnum") int board_postnum, @PathVariable("page") int pageNum) {

        List<ReplyDTO> list = NoticeService.getReply(board_postnum);
        int total = NoticeService.replyTotal(board_postnum);
        System.out.println(total);
        System.out.println(list);
        
        HashMap<String, Object> map = new HashMap<>();
        map.put("total", total);
        map.put("list", list);
        System.out.println(map);

        return map;
    }

    
    /*   
    
	//댓글 수정하기 
    @ResponseBody
    @RequestMapping("replyupdate")
    public int replyupdate(@RequestBody ReplyDTO ReplyDTO) {
        System.out.println(ReplyDTO.toString());
        return questionBoardService.replyUpdate(ReplyDTO);
    }

	//댓글 삭제하기 
    @ResponseBody
    @RequestMapping("replydelete")
    public int replydelete(@RequestParam("rno") int rno) {
        System.out.println("aa");
        return questionBoardService.replydelete(rno);
    }

	*/
	
}
