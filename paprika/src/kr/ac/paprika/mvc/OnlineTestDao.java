package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.dao.DataAccessException;

public class OnlineTestDao {
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= Logger.getLogger(OnlineTestDao.class);

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap){
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
	public int answerInsert(Map<String, Object> pMap) throws DataAccessException{
		int result = 0;
		result = 1;
		sqlSessionTemplate.insert("answerInsert", pMap);
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
		result = 1;
		sqlSessionTemplate.insert("onlineTestInsert", pMap);
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
		result = 1;
		sqlSessionTemplate.update("testGrading", pMap);
		return result;
	}
}
