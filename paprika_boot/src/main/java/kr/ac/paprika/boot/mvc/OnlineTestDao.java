package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class OnlineTestDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public OnlineTestDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap) {
		List<Map<String, Object>> onlineTest = null;
		sqlSessionTemplate.selectList(NameSpace.ONLINETEST + "getOnlineTest", pMap);
		onlineTest = (List<Map<String, Object>>) pMap.get("cursor");
		return onlineTest;
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * @param pMap
	 * @return
	 */
	public int answerInsert(Map<String, Object> pMap) {
		int answerInsert = 0;

		sqlSessionTemplate.insert(NameSpace.ONLINETEST + "answerInsert", pMap);
		answerInsert = Integer.parseInt((String) pMap.get("PEXCEP"));
		return answerInsert;
	}

	/**
	 * 시험문제 INSERT 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int onlineTestInsert(Map<String, Object> pMap) {
		int onlineTestInsert = 0;

		sqlSessionTemplate.insert(NameSpace.ONLINETEST + "onlineTestInsert", pMap);
		onlineTestInsert = Integer.parseInt((String) pMap.get("PEXCEP"));
		return onlineTestInsert;
	}

	/**
	 * 시험문제 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int testGrading(Map<String, Object> pMap) {
		int testGrading = 0;

		sqlSessionTemplate.update(NameSpace.ONLINETEST + "testGrading", pMap);
		testGrading = Integer.parseInt((String) pMap.get("PEXCEP"));
		return testGrading;
	}
}
