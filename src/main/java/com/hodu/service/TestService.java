package com.hodu.service;

import java.util.ArrayList;
import java.util.List;

import com.hodu.model.TestVO;

public interface TestService {

	public List<TestVO> TnameInformation();
	
	public List<TestVO> Tname();
	
	public ArrayList TNameArray();

	public int TCount();

	
}
