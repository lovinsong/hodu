package com.hodu.dbconfig;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hodu.dbconfig.jdbcTest;
import com.hodu.mapper.TestMapper;
import com.hodu.model.TestVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class jdbcTest {

	@Autowired
	private DataSource ds;
	@Autowired
	private SqlSessionFactory sqlSessionFactory;	
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
	
	@Test	
	@Ignore
	public void test() {
		String url = "jdbc:oracle:thin:@121.130.117.145:1521/XE";
		String user = "c##hodu";
		String password = "1234";
		
		try (Connection conn = DriverManager.getConnection(url, user, password)) {
			log.info("Connection 잘 가져옴: " + conn);			
		} catch (SQLException e) {
			log.info("Connectino 못 가져옴: "+ e.getMessage());
		}
	}
	
	@Test
	@Ignore
	public void testDataSourceDi() {
		
		assertNotNull(ds);
		
		try (Connection conn = ds.getConnection()) {
			
			 ResultSet rs = conn.prepareStatement("SELECT * FROM TAB").executeQuery();
			
			 while (rs.next()) {
				 log.info(rs.getString("TNAME") + "\t/\t");
			 }
			 
		} catch (SQLException e) {
			fail(e.getMessage());
		}		
	}
	
	@Test
	public void testSqlSessionFactory() {
		
		try (SqlSession session = sqlSessionFactory.openSession()) {
			
			TestMapper mapper = session.getMapper(TestMapper.class);
			List<TestVO> tv = mapper.getTableList();
			
			log.info(tv);
		} 
	}
	
}
