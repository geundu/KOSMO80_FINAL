package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate = null;

	/**
	 * 로그인 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public String signIn(Map<String, Object> pMap) {
		String result = null;
		sqlSessionTemplate.selectOne(NameSpace.MEMBER + "signIn", pMap);
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
