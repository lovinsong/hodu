package com.hodu.mapper;

import java.util.List;

import com.hodu.model.TestVO;

public interface TestMapper {

	public List<TestVO> getTableList(); //TestVO 객체리스트

	public List<TestVO> getTableName(); 

	public Integer getTableCount(); 
	
}
