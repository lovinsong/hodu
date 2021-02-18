package com.hodu.service;

import java.util.ArrayList;
import java.util.List;

import com.hodu.model.TestVO;

public interface TestService {

	public List<TestVO> TnameInformation();
	
	public List<TestVO> Tname();

	public int TCount();
	
	// TNAME만 ArrayList로 받아올 서비스를 선언 -> 실제 구현은 TestServuceImpl에서 진행 
	public ArrayList TNameArray();

	
}
