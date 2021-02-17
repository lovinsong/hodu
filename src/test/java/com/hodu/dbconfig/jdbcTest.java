package com.hodu.dbconfig;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hodu.dbconfig.jdbcTest;
import com.hodu.mapper.TestMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class jdbcTest {

//	@Autowired
//	private DataSource ds;
//	@Autowired
//	private SqlSessionFactory sqlSessionFactory;	
	
	@Autowired
	TestMapper test_mapper;
	
	@Before
	public void loadDriver() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			log.info("driver found");
		} catch (ClassNotFoundException e) {			
			log.error("driver not found");
		}
	}	
	
}
