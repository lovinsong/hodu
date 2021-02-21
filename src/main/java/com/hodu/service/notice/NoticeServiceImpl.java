package com.hodu.service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.mapper.NoticeMapper;
import com.hodu.model.NoticeDTO;


@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeDTO> getNotice() {
		// TODO Auto-generated method stub
		
		System.out.println(noticeMapper.getNotice());
		return noticeMapper.getNotice();
	}

	@Override
	public NoticeDTO getOneNotice(int number) {
		return noticeMapper.getOneNotice(number);
	}
	
}
