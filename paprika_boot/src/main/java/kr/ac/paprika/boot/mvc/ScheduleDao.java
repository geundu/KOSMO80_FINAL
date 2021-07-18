package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class ScheduleDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public ScheduleDao(SqlSessionTemplate sqlSessionTemplate) {
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
		sqlSessionTemplate.selectList(NameSpace.SCHEDULE + "getSchedule", pMap);
		scheduleList = (List<Map<String, Object>>) pMap.get("cursor");

		return scheduleList;
	}

	public List<Map<String, Object>> getSchedule2(Map<String, Object> pMap) {
		List<Map<String, Object>> scheduleList = null;
		scheduleList = sqlSessionTemplate.selectList(NameSpace.SCHEDULE + "getSchedule2", pMap);
		return scheduleList;
	}
	
	public List<Map<String, Object>> getMemo(Map<String, Object> pMap) {
		List<Map<String, Object>> memoList = null;
		memoList = sqlSessionTemplate.selectList(NameSpace.SCHEDULE + "getMemo", pMap);
		return memoList;
	}
	
	public void updateMemo(Map<String, Object> pMap) {
		sqlSessionTemplate.selectList(NameSpace.SCHEDULE + "updateMemo", pMap);
	}
	
}
