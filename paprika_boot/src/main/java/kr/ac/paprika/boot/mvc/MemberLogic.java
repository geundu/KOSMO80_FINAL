package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class MemberLogic {
	private final MemberDao memberDao;

	public MemberLogic(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public String signIn(Map<String, Object> pMap) {
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
