package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

public class ScheduleLogic {
	private ScheduleDao scheduleDao = null;

	public void setScheduleDao(ScheduleDao scheduleDao) {
		this.scheduleDao = scheduleDao;
	}

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {

		return null;
	}
}
