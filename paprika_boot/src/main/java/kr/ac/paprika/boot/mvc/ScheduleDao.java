package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(ScheduleDao.class);

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {
		logger.info("ScheduleDao ==> getSchedule() 호출 성공");
		List<Map<String, Object>> scheduleList = null;
		sqlSessionTemplate.selectList("getSchedule", pMap);
		scheduleList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(scheduleList);

		return scheduleList;
	}

	public List<Map<String, Object>> getSchedule2(Map<String, Object> pMap) {
		logger.info("ScheduleDao ==> getSchedule2() 호출 성공");
		List<Map<String, Object>> scheduleList = null;
		scheduleList = sqlSessionTemplate.selectList("getSchedule2", pMap);
		logger.info(scheduleList);

		return scheduleList;
	}
}
