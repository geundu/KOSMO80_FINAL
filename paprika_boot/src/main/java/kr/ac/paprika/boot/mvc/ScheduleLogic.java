package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleLogic {
	@Autowired
	private ScheduleDao	scheduleDao	= null;
	Logger				logger		= LogManager.getLogger(ScheduleLogic.class);

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {
		logger.info("ScheduleLogic ==> getSchedule() 호출 성공");
		List<Map<String, Object>> scheduleList = null;
		scheduleList = scheduleDao.getSchedule2(pMap);

		return scheduleList;
	}
}