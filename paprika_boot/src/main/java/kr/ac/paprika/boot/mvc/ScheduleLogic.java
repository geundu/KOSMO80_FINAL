package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class ScheduleLogic {
	private final ScheduleDao scheduleDao;

	public ScheduleLogic(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {
		List<Map<String, Object>> scheduleList = null;
		scheduleList = scheduleDao.getSchedule2(pMap);

		return scheduleList;
	}
	
	public List<Map<String, Object>> getMemo(Map<String, Object> pMap) {
		List<Map<String, Object>> memoList = null;
		memoList = scheduleDao.getMemo(pMap);

		return memoList;
	}
	
	public List<Map<String, Object>> updateMemo(Map<String, Object> pMap) {
		scheduleDao.updateMemo(pMap);
		List<Map<String, Object>> memoList = null;
		memoList = scheduleDao.getMemo(pMap);
		return memoList;
	}
}