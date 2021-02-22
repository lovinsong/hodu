package com.hodu.controller;

import java.util.ArrayList;
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
	
	//modify(글수정)와 detail(상세보기)의 형태가 같아 함께 처리
	@RequestMapping(value = {"board/notice/notice-detail", "board/notice/notice-modify"}, method = RequestMethod.GET) 
	public void notice_detail(@RequestParam("notice_postnum") int notice_postnum, Model model) {
		NoticeDTO dto =  NoticeService.getOneNotice(notice_postnum);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping(value = "board/notice/freeUpdate", method = RequestMethod.POST)
    public String NoticeUpdate(NoticeDTO dto, RedirectAttributes ra) {
        int result = NoticeService.updateNotice(dto);
        System.out.println(result);

        if(result == 1) {//업데이트 성공
            ra.addFlashAttribute("msg", "정상적으로 수정되었습니다");
        } else { //업데이트 실패
            ra.addFlashAttribute("msg", "수정에 실패했습니다");
        }
        return "redirect:notice-category";
    }
	
	@RequestMapping(value = "board/notice/freeDelete", method = RequestMethod.POST)
    public String DeleteUpdate(NoticeDTO dto, RedirectAttributes ra) {
        int result = NoticeService.deleteNotice(dto);
        System.out.println(result);
        
        if(result == 1) {
            ra.addFlashAttribute("msg", dto.getNotice_postnum() + "번 게시글이 삭제되었습니다" );
        } else {
            ra.addFlashAttribute("msg", "게시글 삭제에 실패했습니다");
        }
        return "redirect:notice-category";
    }
	
	
	@ResponseBody
    @RequestMapping("/board/notice/replyRegist")
    public int replyRegist(@RequestBody ReplyDTO dto) {
		System.out.println(dto);
        int result = NoticeService.writeReply(dto);
        return result;
    }

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
    @ResponseBody
    @RequestMapping("replylist/{qno}/{page}")
    public HashMap<String, Object> replylist(@PathVariable("qno") int qno, @PathVariable("page") int pageNum) {
        Criteria cri = new Criteria(pageNum, 20);
        ArrayList<ReplyVO> list = questionBoardService.replylist(qno, cri);

        int total = questionBoardService.replyTotal(qno);
        // 해쉬맵
        HashMap<String, Object> map = new HashMap<>();
        map.put("total", total);
        map.put("list", list);

        return map;
    }
    
    
    @ResponseBody
    @RequestMapping("replyupdate")
    public int replyupdate(@RequestBody ReplyDTO ReplyDTO) {
        System.out.println(ReplyDTO.toString());
        return questionBoardService.replyUpdate(ReplyDTO);
    }

    @ResponseBody
    @RequestMapping("replydelete")
    public int replydelete(@RequestParam("rno") int rno) {
        System.out.println("aa");
        return questionBoardService.replydelete(rno);
    }

	*/
	
}
