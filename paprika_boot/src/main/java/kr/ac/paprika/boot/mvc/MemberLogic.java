package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberLogic {
	@Autowired
	private MemberDao	memberDao	= null;
	Logger				logger		= LogManager.getLogger(MemberLogic.class);

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public String signIn(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> signIn() 호출 성공");
		String result = null;
		result = memberDao.signIn(pMap);

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
