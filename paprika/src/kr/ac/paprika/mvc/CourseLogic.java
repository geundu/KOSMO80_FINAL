package kr.ac.paprika.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;

public class CourseLogic {
	Logger				logger		= Logger.getLogger(CourseLogic.class);
	private CourseDao	courseDao	= null;

	/**
	 * 스프링으로부터 DI를 받기 위한 setter
	 * 
	 * @param courseDao
	 */
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	/**
	 * 강좌조회 메서드 eg) 알고리즘, 자료구조, 어셈블리어, ...
	 *  
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getOnlineCourseList(Map<String, Object> pMap) {
		List<Map<String, Object>> onlineCourseList = null;
		onlineCourseList = courseDao.getOnlineCourseList(pMap);
		return onlineCourseList;
	}

	/**
	 * 강의조회 메서드 eg) 알고리즘 1강, 2강, ...
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getLectureList(Map<String, Object> pMap) {
		List<Map<String, Object>> lectureList = null;
		lectureList = courseDao.getLectureList(pMap);
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
		lectureDetail = courseDao.getLectureDetail(pMap);
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

		try {
			courseDao.homeworkInsert(pMap);
			result = 1;
		}
		catch (Exception e) {
			result = 0;
			throw e;
		}
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

		try {
			courseDao.homeworkUpdate(pMap);
			result = 1;
		}
		catch (Exception e) {
			result = 0;
			throw e;
		}
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

		try {
			courseDao.feedbackInsert(pMap);
			result = 1;
		}
		catch (Exception e) {
			result = 0;
			throw e;
		}
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

		try {
			courseDao.homeworkGrading(pMap);
			result = 1;
		}
		catch (Exception e) {
			result = 0;
			throw e;
		}
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
		homeworkList = courseDao.getHomeworkList(pMap);
		return homeworkList;
	}

	/**
	 * 교수) 받은 피드백 목록 확인
	 * 
	 * @param pMap
	 * @return
	 */
	public List<Map<String, Object>> getFeedbackList(Map<String, Object> pMap) {
		List<Map<String, Object>> feedbackList = null;
		feedbackList = courseDao.getFeedbackList(pMap);
		return feedbackList;
	}
}