package kr.ac.paprika.boot.mvc;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository
public class CourseDao {
	@Autowired
	private SqlSessionTemplate	sqlSessionTemplate	= null;
	Logger						logger				= LogManager.getLogger(CourseDao.class);

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineCourseList(Map<String, Object> pMap) {
		logger.info("getOnlineCourseList() 호출 성공");
		List<Map<String, Object>> courseList = null;
		sqlSessionTemplate.selectList("getOnlineCourseList", pMap);
		courseList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(courseList);

		return courseList;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {
		logger.info("getLectureList() 호출 성공");
		List<Map<String, Object>> lectureList = null;
		sqlSessionTemplate.selectList("getLectureList", pMap);
		lectureList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(lectureList);
		return lectureList;
	}

	/**
	 * 강의상세조회 메서드(강의동영상 여기서 조회)
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureDetail(Map<String, Object> pMap) {
		logger.info("getLectureDetail() 호출 성공");
		logger.info(pMap);
		List<Map<String, Object>> lectureDetail = null;
		sqlSessionTemplate.selectList("getLectureDetail", pMap);
		logger.info(pMap);
		lectureDetail = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(lectureDetail);
		return lectureDetail;
	}

	/**
	 * 과제제출 메서드
	 * 
	 * @param pMap
	 * @return
	 */
	public int homeworkInsert(Map<String, Object> pMap) throws DataAccessException {
		logger.info("homeworkInsert() 호출 성공");
		int homeworkInsert = 0;

		sqlSessionTemplate.insert("homeworkCU", pMap);
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
		logger.info("homeworkUpdate() 호출 성공");
		int homeworkUpdate = 0;

		sqlSessionTemplate.update("homeworkCU", pMap);
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
		logger.info("feedbackInsert() 호출 성공");
		int feedbackInsert = 0;

		sqlSessionTemplate.insert("feedbackInsert", pMap);
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
		logger.info("homeworkGrading() 호출 성공");
		int homeworkGrading = 0;

		sqlSessionTemplate.update("homeworkGrading", pMap);
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
		logger.info("getHomeworkList() 호출 성공");
		List<Map<String, Object>> homeworkList = null;
		sqlSessionTemplate.selectList("getHomeworkList", pMap);
		homeworkList = (List<Map<String, Object>>) pMap.get("cursor");
		logger.info(homeworkList);
		return homeworkList;
	}

	/**
	 * 교수) 받은 피드백 목록 확인
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getFeedbackList(Map<String, Object> pMap) {
		logger.info("getFeedbackList() 호출 성공");
		List<Map<String, Object>> feedbackList = null;

		sqlSessionTemplate.selectList("getFeedbackList", pMap);
		feedbackList = (List<Map<String, Object>>) pMap.get("cursor");
		return feedbackList;
	}
}