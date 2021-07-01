package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class MemberDao {
	Logger						logger				= Logger.getLogger(MemberDao.class);
	private SqlSessionTemplate	sqlSessionTemplate	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public void signIn(Map<String, Object> pMap) {
		logger.info("MemberDao ==> signIn() 호출 성공");
		sqlSessionTemplate.selectOne("signIn", pMap);
		logger.info("MemberDao ==> " + pMap);
	}

	/**
	 * 비밀번호찾기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getPassword(Map<String, Object> pMap) {

		return null;
	}
}
