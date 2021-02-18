package com.hodu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hodu.model.TestVO;
import com.hodu.mapper.TestMapper;

@Service
public class TestServiceImpl implements TestService {

	@Autowired
	private TestMapper tm;
	
	@Override
	public List<TestVO> TnameInformation() {

		return tm.getTableList();
		
	}
	@Override
	
	public List<TestVO> Tname() {
		
		return tm.getTableName();
		
	}
	@Override
	public int TCount() {
		
		return tm.getTableCount();
	}

	@Override
	public ArrayList TNameArray() {
		
		List<TestVO> t1 = tm.getTableList();
		ArrayList tal = new ArrayList();
		
		for (TestVO tv : t1) {
			System.out.println(tv.getTNAME());
			tal.add(tv.getTNAME());
		}
		
		return tal;
	}

}
