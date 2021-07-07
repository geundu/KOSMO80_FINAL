package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OnlineTestDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(OnlineTestDao.class);

	/**
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap) {
		logger.info("getOnlineTest() 호출 성공");
		List<Map<String, Object>> onlineTest = null;
		onlineTest = sqlSessionTemplate.selectList("getOnlineTest", pMap);

		return onlineTest;
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * @param pMap
	 * @return
	 */
	public int answerInsert(Map<String, Object> pMap) {
		logger.info("answerInsert() 호출 성공");
		int answerInsert = 0;

		sqlSessionTemplate.insert("answerInsert", pMap);
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
		logger.info("onlineTestInsert() 호출 성공");
		int onlineTestInsert = 0;

		sqlSessionTemplate.insert("onlineTestInsert", pMap);
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
		logger.info("testGrading() 호출 성공");
		int testGrading = 0;

		sqlSessionTemplate.update("testGrading", pMap);
		testGrading = Integer.parseInt((String) pMap.get("PEXCEP"));
		return testGrading;
	}
}
