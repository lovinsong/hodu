package com.hodu.service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.NoticeMapper;
import com.hodu.model.NoticeDTO;
import com.hodu.model.ReplyDTO;


@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeDTO> getNotice() {
		System.out.println(noticeMapper.getNotice());
		return noticeMapper.getNotice();
	}

	@Override
	public NoticeDTO getOneNotice(int number) {
		return noticeMapper.getOneNotice(number);
	}

	@Override
	public int writeNotice(NoticeDTO nDTO) {
		return noticeMapper.writeNotice(nDTO);
	}

	@Override
	public int updateNotice(NoticeDTO nDTO) {
		return noticeMapper.updateNotice(nDTO);
	}

	@Override
	public int deleteNotice(NoticeDTO nDTO) {
		return noticeMapper.deleteNotice(nDTO);
	}

	@Override
	public int writeReply(ReplyDTO rDTO) {
		return noticeMapper.writeReply(rDTO);
	}

	@Override
	public List<ReplyDTO> getReply(Integer board_postnum) {
		return noticeMapper.getReply(board_postnum);
	}

	@Override
	public int replyTotal(Integer board_postnum) {
		return noticeMapper.replyTotal(board_postnum);
	}

	
}
