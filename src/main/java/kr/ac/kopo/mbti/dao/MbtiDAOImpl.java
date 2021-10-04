package kr.ac.kopo.mbti.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MbtiDAOImpl implements MbtiDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlsessionTemplate;
	
	public void insertResult(HashMap<String,Object> map) {
		
		sqlsessionTemplate.insert("mbti.MbtiDAO.result", map);
		System.out.println("mbti result Dao:"+ map);
	}
	
	
	

}
