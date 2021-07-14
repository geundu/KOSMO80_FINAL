package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import kr.ac.paprika.boot.util.NameSpace;

@Repository
public class CourseDao {
	private final SqlSessionTemplate sqlSessionTemplate;

	public CourseDao(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getOnlineCourseList", pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");

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
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getLectureList", pMap);
		lectureList = (List<Map<String, Object>>) pMap.get("cursor");

		return lectureList;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 
	 * @param pMap
	 * @return
	 */
	public void getLectureDetail(Map<String, Object> pMap) {
		/*List<Map<String, Object>> lectureDetail = null;
		List<Map<String, Object>> file = null;*/
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getLectureDetail", pMap);

		/*return lectureDetail;*/
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkInsert(Map<String, Object> pMap) throws DataAccessException {
		int homeworkInsert = 0;
		sqlSessionTemplate.insert(NameSpace.COURSE + "homeworkCU", pMap);
		homeworkInsert = Integer.parseInt((String) pMap.get("PEXCEP"));

		return homeworkInsert;
	}

	/**
	 * 제출한 과제 변경 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkUpdate(Map<String, Object> pMap) throws DataAccessException {
		int homeworkUpdate = 0;
		sqlSessionTemplate.update(NameSpace.COURSE + "homeworkCU", pMap);
		homeworkUpdate = Integer.parseInt((String) pMap.get("PEXCEP"));

		return homeworkUpdate;
	}

	/**
	 * 피드백 보내기 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int feedbackInsert(Map<String, Object> pMap) {
		int feedbackInsert = 0;
		sqlSessionTemplate.insert(NameSpace.COURSE + "feedbackInsert", pMap);
		feedbackInsert = Integer.parseInt((String) pMap.get("PEXCEP"));
		
		return feedbackInsert;
	}

	/**
	 * 교수) 과제를 채점하고 UPDATE하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkGrading(Map<String, Object> pMap) throws DataAccessException {
		int homeworkGrading = 0;
		sqlSessionTemplate.update(NameSpace.COURSE + "homeworkGrading", pMap);
		homeworkGrading = Integer.parseInt((String) pMap.get("PEXCEP"));

		return homeworkGrading;
	}

	/**
	 * 교수) 제출된 과제 리스트를 확인하는 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getHomeworkList(Map<String, Object> pMap) {
		List<Map<String, Object>> homeworkList = null;
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getHomeworkList", pMap);
		homeworkList = (List<Map<String, Object>>) pMap.get("cursor");

		return homeworkList;
	}
	
	public List<Map<String, Object>> feedbackDetail(Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackDetail = null;
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getfeedbackDetail", pMap);
		feedbackDetail = (List<Map<String, Object>>) pMap.get("cursor");

		return feedbackDetail;
	}

	/**
	 * 교수) 받은 피드백 목록 확인
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getFeedbackList(Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackList = null;
		sqlSessionTemplate.selectList(NameSpace.COURSE + "getFeedbackList", pMap);
		feedbackList = (List<Map<String, Object>>) pMap.get("cursor");

		return feedbackList;
	}
}