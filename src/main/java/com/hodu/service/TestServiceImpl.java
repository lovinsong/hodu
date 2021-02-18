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
	
	// TNAME을 ArrayList 형태로 받아옴
	@Override
	public ArrayList TNameArray() {
		
		//  table의 모든 정보를 받아온다
		List<TestVO> table_list = tm.getTableList();
		
		// 리턴해줄 ArrayList를 선언한다
		ArrayList tArr = new ArrayList();
		
		// 반복문을 돌리며 각 TestVO의 TNAME을 가져와 tArr에 요소로 추가한다
		for (TestVO tv : table_list) {
			tArr.add(tv.getTNAME());
		}
		
		// tArr을 리턴한다 -> 이 자원을 컨트롤러에서 사용
		return tArr;
	}

}
