package com.hodu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.model.TestVO;
import com.hodu.mapper.TestMapper;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	TestMapper tm;
	
	@Override
	public List<TestVO> TnameInformation() {

		return tm.getTableList();
	
	}

}
