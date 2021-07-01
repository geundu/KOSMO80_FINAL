package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;

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
	public List<Map<String, Object>> getOnlineTest(Map<String, Object> pMap){
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
	public int answerInsert(Map<String, Object> pMap) throws DataAccessException{
		int result = 0;
		try {
			onlineTestDao.answerInsert(pMap);
			result = 1;
		}catch(Exception e) {
			result = 0;
			throw e;
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
			onlineTestDao.onlineTestInsert(pMap);
			result = 1;
		}catch(Exception e) {
			result = 0;
			throw e;
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
			onlineTestDao.testGrading(pMap);
			result = 1;
		}catch(Exception e) {
			result = 0;
			throw e;
		}
		return result;
	}
}
