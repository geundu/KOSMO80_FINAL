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
}