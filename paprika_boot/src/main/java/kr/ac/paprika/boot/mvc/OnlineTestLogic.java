package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OnlineTestLogic {
	@Autowired
	private OnlineTestDao	onlineTestDao	= null;
	Logger					logger			= LogManager.getLogger(OnlineTestLogic.class);

	/**
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap) {
		List<Map<String, Object>> onlineTest = null;
		onlineTest = onlineTestDao.getOnlineTest(pMap);

		return onlineTest;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int answerInsert(Map<String, Object> pMap) {
		int result = 0;
		result = onlineTestDao.answerInsert(pMap);

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
		result = onlineTestDao.onlineTestInsert(pMap);

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
		result = onlineTestDao.testGrading(pMap);

		return result;
	}
}
