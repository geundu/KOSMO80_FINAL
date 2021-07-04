package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class ScheduleDao {
	Logger				logger		= Logger.getLogger(ScheduleDao.class);

	private SqlSessionTemplate sqlSessionTemplate = null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 시간표 조회 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getSchedule(Map<String, Object> pMap) {
		List<Map<String, Object>> scheduleList = null;
		sqlSessionTemplate.selectList("getSchedule", pMap);
		scheduleList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info("scheduleList");
		return scheduleList;
	}
	public List<Map<String, Object>> getSchedule2(Map<String, Object> pMap) {
		logger.info("getSchedule2");
		List<Map<String, Object>> scheduleList = null;
		scheduleList = sqlSessionTemplate.selectList("getSchedule2", pMap);
		logger.info("scheduleList.size()==>"+scheduleList.size());
		return scheduleList;
	}
}
