package com.hodu.service.notice;

import java.util.ArrayList;
import java.util.List;

import com.hodu.model.NoticeDTO;

public interface NoticeService {
	
	public List<NoticeDTO> getNotice();
	public NoticeDTO getOneNotice(int number);

}
