package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class OnlineTestLogic {
	private OnlineTestDao	onlinetestDao	= null;
	Logger					logger			= Logger.getLogger(StudentInfoController.class);

	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap) {
		List<Map<String, Object>> onlineTest = null;
		onlineTest = onlinetestDao.getOnlineTest(pMap);
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
		result = onlinetestDao.answerInsert(pMap);
		return result;
	}
}
