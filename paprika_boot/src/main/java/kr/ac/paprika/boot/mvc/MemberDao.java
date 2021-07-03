package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(MemberDao.class);
	private static final String	NAMESPACE			= "kr.ac.paprika.member.";

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public String signIn(Map<String, Object> pMap) {
		logger.info("MemberDao ==> signIn() 호출 성공");
		String result = null;
		sqlSessionTemplate.selectOne(NAMESPACE + "signIn", pMap);
		logger.info(pMap);
		result = String.valueOf(pMap.get("result"));

		return result;
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
