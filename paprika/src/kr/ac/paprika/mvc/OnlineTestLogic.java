package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class OnlineTestLogic {
	private OnlineTestDao	onlineTestDao	= null;
	Logger					logger			= Logger.getLogger(OnlineTestLogic.class);

	/**
	 * @param onlineTestDao
	 */
	public void setOnlineTestDao(OnlineTestDao onlineTestDao) {
		this.onlineTestDao = onlineTestDao;
	}

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

		return 0;
	}

	/**
	 * 시험문제 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int TestGrading(Map<String, Object> pMap) {

		return 0;
	}
}
