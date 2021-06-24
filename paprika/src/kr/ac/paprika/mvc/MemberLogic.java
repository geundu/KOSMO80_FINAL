package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class MemberLogic {
	private MemberDao memberDao = null;

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
