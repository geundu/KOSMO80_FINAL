package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;

public class CourseDao {
	Logger						logger				= Logger.getLogger(CourseDao.class);
	private SqlSessionTemplate	sqlSessionTemplate	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param sqlSessionTemplate
	 */
	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList("getCourseList",pMap);
		courseList = (List<Map<String,Object>>) pMap.get("cursor");
		return courseList;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {
		List<Map<String, Object>> lectureList = null;
		sqlSessionTemplate.selectList("getLectureList",pMap);
		lectureList = (List<Map<String,Object>>) pMap.get("cursor");
		return lectureList;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> lectureDetail = null;
		sqlSessionTemplate.selectList("getLectureDetail",pMap);
		lectureDetail = (List<Map<String,Object>>) pMap.get("cursor");
		return lectureDetail;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkInsert(Map<String, Object> pMap) {
		int result = 0;
		List<Map<String, Object>> homeworkInsert = null;
		sqlSessionTemplate.selectList("homeworkInsert", pMap);
		homeworkInsert = (List<Map<String, Object>>) pMap.get("cursor");
		result = 1;
		return result;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkUpdate(Map<String, Object> pMap) {
		int result = 0;
		List<Map<String, Object>> homeworkUpdate = null;
		sqlSessionTemplate.selectList("homeworkUpdate", pMap);
		homeworkUpdate = (List<Map<String, Object>>) pMap.get("cursor");
		result = 1;
		return result;
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int feedbackInsert(Map<String, Object> pMap) {
		int result = 0;
		List<Map<String, Object>> feedbackInsert = null;
		sqlSessionTemplate.selectList("feedbackInsert", pMap);
		feedbackInsert = (List<Map<String, Object>>) pMap.get("cursor");
		result = 1;
		return result;
	}

	/**
	 * 교수) 과제를 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkGrading(Map<String, Object> pMap) {
		int result = 0;
		List<Map<String, Object>> homeworkGrading = null;
		sqlSessionTemplate.selectList("homeworkGrading", pMap);
		homeworkGrading = (List<Map<String, Object>>) pMap.get("cursor");
		result = 1;
		return result;
	}

	/**
	 * 교수) 제출된 과제 리스트를 확인하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getHomeworkList(Map<String, Object> pMap) {
		List<Map<String, Object>> homeworkList = null;
		sqlSessionTemplate.selectList("getHomeworkList",pMap);
		homeworkList = (List<Map<String,Object>>) pMap.get("cursor");
		return homeworkList;
	}
}
