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
		List<Map<String, Object>> onlineTest = null;
		onlineTest = sqlSessionTemplate.selectList("getLectureList", pMap);

		return onlineTest;
	}

	/**
	 * 시험답안지제출 메서드 (한 번 제출하면 수정할 수 없음)
	 * 
	 * @param pMap
	 * @return
	 */
	public int answerInsert(Map<String, Object> pMap) {
		int result = 0;

		try {
			sqlSessionTemplate.insert("answerInsert", pMap);
			result = 1;
		}
		catch (Exception e) {
			result = -1;
		}

		return result;
	}

	/**
	 * 시험문제 INSERT 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int onlineTestInsert(Map<String, Object> pMap) {
		int result = 0;

		try {
			sqlSessionTemplate.insert("onlineTestInsert", pMap);
			result = 1;
		}
		catch (Exception e) {
			result = -1;
		}

		return result;
	}

	/**
	 * 시험문제 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int testGrading(Map<String, Object> pMap) {
		int result = 0;

		try {
			sqlSessionTemplate.update("testGrading", pMap);
			result = 1;
		}
		catch (Exception e) {
			result = -1;
		}

		return result;
	}
}
