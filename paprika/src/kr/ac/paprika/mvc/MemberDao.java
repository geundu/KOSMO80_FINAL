package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MemberDao {
	private SqlSessionTemplate sqlSessionTemplate = null;

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
	public List<Map<String, Object>> signIn(Map<String, Object> pMap) {

		return null;
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
