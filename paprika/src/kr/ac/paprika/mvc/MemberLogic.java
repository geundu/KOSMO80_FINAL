package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class MemberLogic {
	Logger				logger		= Logger.getLogger(MemberLogic.class);
	private MemberDao	memberDao	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param memberDao
	 */
	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public void signIn(Map<String, Object> pMap) {
		logger.info("MemberLogic ==> signIn() 호출 성공");
		memberDao.signIn(pMap);
		logger.info("MemberLogic ==> " + pMap);
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
