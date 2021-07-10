package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class OnlineTestLogic {
	private final OnlineTestDao onlineTestDao;

	public OnlineTestLogic(OnlineTestDao onlineTestDao) {
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
		int answerInsert = 0;

		try {
			answerInsert = onlineTestDao.answerInsert(pMap);
		}
		catch (DataAccessException de) {
			answerInsert = -1;
		}

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

		try {
			onlineTestInsert = onlineTestDao.onlineTestInsert(pMap);
		}
		catch (DataAccessException de) {
			onlineTestInsert = -1;
		}

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

		try {
			testGrading = onlineTestDao.testGrading(pMap);
		}
		catch (DataAccessException de) {
			testGrading = -1;
		}

		return testGrading;

	}
}
